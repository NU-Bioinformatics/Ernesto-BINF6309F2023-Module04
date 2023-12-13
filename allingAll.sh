#!/usr/bin/env bash
# alignAll.sh
outDir='quant/'
fastqPath='/work/courses/BINF6309/AiptasiaMiSeq/fastq/' # TODO: update to loop over all Aip## samples
leftSuffix=".R1.fastq"
function align {
	for sample in $fastqPath*$leftSuffix 
		do
		samplename=$(basename "${sample}" .R1.fastq)
    		echo $samplename
		salmon quant -l IU \
        	-1 $fatqPath${samplename}.R1.fastq\
        	-2 $fastqPath${samplename}.R2.fastq \
        	-i AipIndex \
        	--validateMappings \
       		-o ${outDir}${samplename}
	done
}


align 
