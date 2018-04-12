Dockerfile that includes a set of utilities for VCF/BCF manipulation.

Image latest version: 0.2 
- [bcftools v1.7.1](https://samtools.github.io/bcftools/) - BCFtools is a set of utilities that manipulate variant calls in the Variant Call Format (VCF) and its binary counterpart BCF. 1.7.1<br/>```srun shifter --image=mcfonsecalab/variantutils:latest bcftools```

- [vcfanno v0.2.8](https://github.com/brentp/vcfanno) - vcfanno allows to quickly annotate a VCF with any number of INFO fields from any number of VCFs or BED files.<br/>```srun shifter --image=mcfonsecalab/variantutils:latest vcfanno```

- [snpEff & SnpSift v4.3](http://snpeff.sourceforge.net/) - Genetic variant annotation and functional effect prediction toolbox. <br/>```srun shifter --image=mcfonsecalab/variantutils:latest java -jar /tools/snpEff/snpEff.jar```<br/>
```srun shifter --image=mcfonsecalab/variantutils:latest java -jar /tools/snpEff/SnpSift.jar```

- [vt v2015.11.10](https://genome.sph.umich.edu/wiki/Vt) - Not the most recent version because conda was used to install it. vt is a variant tool set that discovers short variants from Next Generation Sequencing data. <br/> ```srun shifter --image=mcfonsecalab/variantutils:latest vt```

Python modules:
- [cyvcf2 v0.8.8](https://github.com/brentp/cyvcf2) - Fast python VCF and BCF processing with cython and htslib. <br/>```Usage within a python script: from cyvcf2 import VCF``` <br/>

- [scikit-allel v1.1.10](https://scikit-allel.readthedocs.io/en/latest/) - Package that provides utilities for exploratory analysis of large scale genetic variation data. It is based on numpy, scipy, etc. <br/>
```import allel``` <br/>

- [PyVCF v0.6.8](https://pyvcf.readthedocs.io/en/latest/) - PyVCF - A Variant Call Format Parser for Python. <br/> ```import vcf``` <br/>
