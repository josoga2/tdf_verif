for file in *.bed
do
  rgt-TDF regiontest -r nfixedout.fa -bed $file -rn ecCEBPA -organism hg19 -o genomic_region_test/$file -n 100 -l 10
done

