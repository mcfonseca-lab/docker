Dockerfile that includes a set of utilities for high throughput sequencing processing.

Image latest version: 0.6
- [Missing description of several tools]
- [Subread](http://bioinf.wehi.edu.au/subread-package/) - The Subread package: a tool kit for processing next-gen sequencing data. FeatureCounts, a counter mapped reads, is inside.
- [MultiQC](https://github.com/ewels/MultiQC) - Aggregate bioinformatics results across many samples into a single report. (version:1.9)
- [samtools](https://github.com/samtools/samtools) - A set of utilities that manipulate alignments in the SAM/BAM format. (version:1.10)
- [bedtools2](https://github.com/arq5x/bedtools2) - A powerful toolset for genome arithmetic. (version:2.27.1)
- [deeptools](https://deeptools.readthedocs.io/en/latest/) - deepTools is a suite of python tools particularly developed for the efficient analysis of high-throughput sequencing data. (version:3.3.1)
- [bamtools](https://github.com/pezmaster31/bamtools) C++ toolit for working with BAM data. (version:2.5.0)
- [faToTwoBit](https://genome.ucsc.edu/goldenpath/help/blatSpec.html#faToTwoBitUsage) - Tool to convert DNA from fasta to .2bit format (Required for some GAT4 Spark tools).
- [TrimGalore](http://www.bioinformatics.babraham.ac.uk/projects/trim_galore/) TrimGalore - A wrapper tool around Cutadapt and FastQC to consistently apply quality and adapter trimming to FastQ files. (version:0.6.5)
- [FastQC](https://github.com/s-andrews/FastQC) - FastQC is a program designed to spot potential problems in high througput sequencing datasets. (version:0.11.9)