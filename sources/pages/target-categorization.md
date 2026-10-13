# Target categorization

> Snapshot of <https://www.encodeproject.org/target-categorization/>, fetched 2026-10-12. Regenerate with scripts/snapshot-pages.sh; do not edit.

# Target categorization

## How does ENCODE categorize targets based on GO annotation?

To assign appropriate categories to each human, mouse, fruit fly or worm target, we first check GO annotations of the target's corresponding gene. [See the glossary](https://www.encodeproject.org/glossary/#target-categories) for definitions of each category used by ENCODE. For each GO term annotation, we cross reference each GO term annotation and its parental term with the GO terms in the following table:

<table>
<thead>
<tr>
<th>ENCODE Label</th>
<th>GO Term ID</th>
<th>GO Term Name</th>
</tr>
</thead>
<tbody>
<tr>
<td>TF</td>
<td><a href="http://amigo.geneontology.org/amigo/term/GO:0003700">GO:0003700</a></td>
<td>DNA-binding transcription factor activity</td>
</tr>
<tr>
<td>RBP</td>
<td><a href="http://amigo.geneontology.org/amigo/term/GO:0003723">GO:0003723</a></td>
<td>RNA binding</td>
</tr>
<tr>
<td>RBP</td>
<td><a href="http://amigo.geneontology.org/amigo/term/GO:0001070">GO:0001070</a></td>
<td>RNA-binding transcription regulator activity</td>
</tr>
<tr>
<td>Cofactor</td>
<td><a href="http://amigo.geneontology.org/amigo/term/GO:0008134">GO:0008134</a></td>
<td>transcription factor binding</td>
</tr>
<tr>
<td>Cofactor</td>
<td><a href="http://amigo.geneontology.org/amigo/term/GO:0003712">GO:0003712</a></td>
<td>transcription coregulator activity</td>
</tr>
<tr>
<td>RNAP</td>
<td><a href="http://amigo.geneontology.org/amigo/term/GO:0005736">GO:0005736</a></td>
<td>RNA polymerase I complex</td>
</tr>
<tr>
<td>RNAP</td>
<td><a href="http://amigo.geneontology.org/amigo/term/GO:0016591">GO:0016591</a></td>
<td>RNA polymerase II, holoenzyme</td>
</tr>
<tr>
<td>RNAP</td>
<td><a href="http://amigo.geneontology.org/amigo/term/GO:0005666">GO:0005666</a></td>
<td>RNA polymerase III complex</td>
</tr>
<tr>
<td>Chromatin remodeler</td>
<td><a href="http://amigo.geneontology.org/amigo/term/GO:0006325">GO:0006325</a></td>
<td>chromatin organization</td>
</tr>
<tr>
<td>Chromatin remodeler</td>
<td><a href="http://amigo.geneontology.org/amigo/term/GO:0000118">GO:0000118</a></td>
<td>histone deacetylase complex</td>
</tr>
<tr>
<td>Cohesin</td>
<td><a href="http://amigo.geneontology.org/amigo/term/GO:0007062">GO:0007062</a></td>
<td>sister chromatid cohesion</td>
</tr>
<tr>
<td>DNA replication</td>
<td><a href="http://amigo.geneontology.org/amigo/term/GO:0006260">GO:0006260</a></td>
<td>DNA replication</td>
</tr>
<tr>
<td>DNA repair</td>
<td><a href="http://amigo.geneontology.org/amigo/term/GO:0006281">GO:0006281</a></td>
<td>DNA repair</td>
</tr>
<tr>
<td>histone</td>
<td><a href="http://amigo.geneontology.org/amigo/term/GO:0000788">GO:0000788</a></td>
<td>nuclear nucleosome</td>
</tr>
<tr>
<td>TF**</td>
<td><a href="http://amigo.geneontology.org/amigo/term/GO:0003677">GO:0003677</a></td>
<td>DNA binding</td>
</tr>
<tr>
<td>TF**</td>
<td><a href="http://amigo.geneontology.org/amigo/term/GO:0003682">GO:0003682</a></td>
<td>chromatin binding</td>
</tr>
<tr>
<td>TF**</td>
<td><a href="http://amigo.geneontology.org/amigo/term/GO:0043167">GO:0043167</a></td>
<td>ion binding</td>
</tr>
<tr>
<td colspan="3">TF**: only used when there is no other data</td>
</tr>
</tbody>
</table>

\
Next we assign a score to each label based on the annotation evidence of the GO term:

| Evidence code | Score |
|---------------|-------|
| EXP           | 2     |
| IDA           | 2     |
| IMP           | 2     |
| IGI           | 2     |
| IEP           | 2     |
| HTP           | 1     |
| HDA           | 1     |
| HMP           | 1     |
| HGI           | 1     |
| HEP           | 1     |
| TAS           | 1     |
| IEA           | -1    |

Finally, we summarize labels and scores for the target by combining/summing same labels together. The label(s) having the highest score are used as the category assigned to the target.
