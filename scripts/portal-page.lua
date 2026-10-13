-- Pandoc filter that turns ENCODE portal page HTML into plain, readable Markdown.

local BASE = "https://www.encodeproject.org"

local function absolute(url)
  if url:match("^/[^/]") then
    return BASE .. url
  end
  return url
end

local function blank(inlines)
  return pandoc.utils.stringify(inlines):gsub("\194\160", ""):match("^%s*$") ~= nil
end

local function bold_only(cell)
  if blank(cell.contents) then
    return false
  end
  local rest = pandoc.Div(cell.contents):walk({ Strong = function() return {} end })
  return blank(rest)
end

local function clean_rows(rows)
  for _, row in ipairs(rows) do
    row.attr = pandoc.Attr()
    for _, cell in ipairs(row.cells) do
      cell.attr = pandoc.Attr()
      if #cell.contents == 1 and cell.contents[1].t == "Para" then
        cell.contents = { pandoc.Plain(cell.contents[1].content) }
      end
    end
  end
end

function Link(el)
  el.target = absolute(el.target)
  el.attr = pandoc.Attr()
  return el
end

function Image(el)
  el.src = absolute(el.src)
  el.attr = pandoc.Attr()
  return el
end

function Span(el)
  return el.content
end

function Div(el)
  return el.content
end

local function has_image(inlines)
  local found = false
  pandoc.Inlines(inlines):walk({ Image = function() found = true end })
  return found
end

function Para(el)
  if blank(el.content) and not has_image(el.content) then
    return {}
  end
end

Plain = Para

function Header(el)
  if pandoc.utils.stringify(el):lower() == "back to the top" then
    return {}
  end
  el.attr = pandoc.Attr()
  return el
end

function Table(tbl)
  tbl.attr = pandoc.Attr()
  for i, spec in ipairs(tbl.colspecs) do
    tbl.colspecs[i] = { spec[1], nil }
  end
  local body = tbl.bodies[1]
  if #tbl.head.rows == 0 and body and #body.head > 0 then
    tbl.head.rows = body.head
    body.head = {}
  end
  if #tbl.head.rows == 0 and body and #body.body > 1 then
    local first = body.body[1]
    local header = true
    for _, cell in ipairs(first.cells) do
      header = header and bold_only(cell)
    end
    if header then
      tbl.head.rows = { first }
      body.body:remove(1)
    end
  end
  clean_rows(tbl.head.rows)
  for _, b in ipairs(tbl.bodies) do
    b.attr = pandoc.Attr()
    clean_rows(b.head)
    clean_rows(b.body)
  end
  clean_rows(tbl.foot.rows)
  return tbl
end
