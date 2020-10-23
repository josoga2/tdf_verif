for file in *.bed
do
  rgt-TDF regiontest -r nfixedout.fa -bed $file -rn ecCEBPA -organism hg19 -o genomic_region_test/$file -n 100 -l 10
    
done

rgt-TDF regiontest -r nfixedout.fa -bed probes_mut_bed.bed -f probes_nonmut_bed.bed -fr off -rn ecCEBPA -organism hg19 -o genomic_region_test/ecCEBPA -n 100 -l 10 -e 20 -c 2


rgt-TDF regiontest -r nfixedout.fa -bed bindingBed_01.bed -f background.bed -fr off -rn ecCEBPA -organism hg19 -o genomic_region_test/ecCEBPA -n 100 -l 10 -e 20 -c 2
