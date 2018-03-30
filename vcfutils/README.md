Dockerfile that includes a set of utilities for VCF/BCF manipulation.

Image latest version: 0.2 
- [bcftools v1.7.1](https://samtools.github.io/bcftools/) - BCFtools is a set of utilities that manipulate variant calls in the Variant Call Format (VCF) and its binary counterpart BCF. 1.7.1
```srun shifter --image=mcfonsecalab/variantutils:latest bcftools```

- [vcfanno v0.2.8](https://github.com/brentp/vcfanno) - vcfanno allows to quickly annotate a VCF with any number of INFO fields from any number of VCFs or BED files.  

```srun shifter --image=mcfonsecalab/variantutils:latest vcfanno```

- [snpEff & SnpSift v4.3](http://snpeff.sourceforge.net/) - Genetic variant annotation and functional effect prediction toolbox. 

```srun shifter --image=mcfonsecalab/variantutils:latest java -jar snpEff/snpEff.jar```
```srun shifter --image=mcfonsecalab/variantutils:latest java -jar snpEff/snpEff.jar```
