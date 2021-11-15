#!/bin/bash


for i in {1..100};do

	shuf -n1096 genes.txt > rm_gene_$i.txt
	
	cat rm_gene_$i.txt |while read line ;do grep -x $line /home/project/genes.txt;done |sort -u |wc > rmgenes_$i.txt


done
