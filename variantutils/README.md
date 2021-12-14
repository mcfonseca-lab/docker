Dockerfile that includes a set of utilities for VCF manipulation/annotation.

Major update on v0.6: Manual compilation of bcftools and htslib utils, so that bcftools plugins can be used.
Update on v0.7: Remove pyvcf package

Image latest version: 0.7 (14/12/2021)
- [bcftools v1.14-20](https://samtools.github.io/bcftools/) - BCFtools is a set of utilities that manipulate variant calls in the Variant Call Format (VCF) and its binary counterpart BCF. 1.7.1<br/>```srun shifter --image=mcfonsecalab/variantutils:latest bcftools```

- [vcfanno v0.3.3](https://github.com/brentp/vcfanno) - vcfanno allows to quickly annotate a VCF with any number of INFO fields from any number of VCFs or BED files.<br/>```srun shifter --image=mcfonsecalab/variantutils:latest vcfanno```

- [vt 0.5](https://genome.sph.umich.edu/wiki/Vt) - Installed from source using the github repo. vt is a variant tool set that discovers short variants from Next Generation Sequencing data. <br/> ```srun shifter --image=mcfonsecalab/variantutils:latest vt```

- [plink v1.90b6.21](https://www.cog-genomics.org/plink2/) - PLINK is a whole genome association variant analysis toolset, designed to perform a range of basic, large-scale analyses in a computationally efficient manner. <br/> ```srun shifter --image=mcfonsecalab/variantutils:latest plink```

- [spliceai v1.3.1](https://github.com/Illumina/SpliceAI) - A deep learning-based tool to identify variants altering the splicing. <br/> ```srun shifter --image=mcfonsecalab/variantutils:latest spliceai```

Python modules:
- [cyvcf2 v0.30.14](https://github.com/brentp/cyvcf2) - Fast python VCF and BCF processing with cython and htslib. <br/>```from cyvcf2 import VCF``` <br/>

- [scikit-allel v1.3.3](https://scikit-allel.readthedocs.io/en/latest/) - Package that provides utilities for exploratory analysis of large scale genetic variation data. It is based on numpy, scipy, etc. <br/>
```import allel``` <br/>

- [hgvs v1.5.1](https://github.com/biocommons/hgvs) - hgvs - This package provides a Python library to parse, format, validate, normalize, and map sequence variants according to Variation Nomenclature (aka Human Genome Variation Society) recommendations. <br/> ```import hgvs.parser``` <br/>
