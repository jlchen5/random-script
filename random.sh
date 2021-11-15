#!/bin/bash

work_dir=`pwd`

if [! -n "genes.txt"]
   then touch genes.txt
   else echo "The gene.txt does not exist"
fi

for i in {1..100};do

	shuf -n1096 $work_dir/genes.txt > $work_dir/rm_gene_$i.txt
	
	cat $work_dir/rm_gene_$i.txt |while read line ;do grep -x $line $work_dir/genes.txt;done |sort -u |wc > $i.txt


done
