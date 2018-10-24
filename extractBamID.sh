#!/bin/bash

bam=$1 #bamfile

if [ $# -ne 1 ]
then
 echo "inputs needed are: bam,sample_id"
 exit 1
fi

if [ ! -e $bam ]
then
 echo "file missing $bam"
 exit 1
fi

#samtools view -H $bam |grep RG | sed 's/\t/\n/g' | grep SM: | sort | uniq | head -1 | sed 's/SM://' >> sm_id.txt

bamid=$(samtools view -H $bam | grep -P "RG\t" | sed 's/\t/\n/g' | grep SM: | sort | uniq | head -1 | sed 's/SM://')

echo "$bamid"