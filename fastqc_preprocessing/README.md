Docker image with some basic tools to process raw fastc data. Last update: 27/01/2023.

- [fastqc v0.11.9](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)
- [trim galore v0.6.7](https://www.bioinformatics.babraham.ac.uk/projects/trim_galore/)
- [fastp v0.23.2](https://github.com/OpenGene/fastp)
- [trimmomatic v0.39](http://www.usadellab.org/cms/?page=trimmomatic)

Except for Trimmomatic, all tools are already in the system path by calling `fastqc`, `fastp` or `trim_galore`.
To run Trimmomatic, just call `java -jar trimmomatic-0.39.jar`.
