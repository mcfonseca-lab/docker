Dockerfile that includes a set of utilities for VCF manipulation/annotation.

- [bcftools v1.18-13](https://samtools.github.io/bcftools/) - BCFtools is a set of utilities that manipulate variant calls in the Variant Call Format (VCF) and its binary counterpart BCF.<br/>```docker run mcfonsecalab/variantutils:latest bcftools```

- [vt 0.5](https://genome.sph.umich.edu/wiki/Vt) - vt is a variant tool set that discovers short variants from Next Generation Sequencing data. <br/> ```docker run mcfonsecalab/variantutils:latest vt```

- [plink v1.90b6.21](https://www.cog-genomics.org/plink2/) - PLINK is a whole genome association variant analysis toolset, designed to perform a range of basic, large-scale analyses in a computationally efficient manner. <br/> ```docker run mcfonsecalab/variantutils:latest plink```

- [plink2 v2.00a3.7](https://www.cog-genomics.org/plink2/) <br/> ```docker run mcfonsecalab/variantutils:latest plink2```

- [vcfanno v0.3.3](https://github.com/brentp/vcfanno) - vcfanno allows to quickly annotate a VCF with any number of INFO fields from any number of VCFs or BED files.<br/>```docker run mcfonsecalab/variantutils:latest vcfanno```

- [spliceai v1.3.1](https://github.com/Illumina/SpliceAI) - A deep learning-based tool to identify variants altering the splicing. <br/> ```docker run mcfonsecalab/variantutils:latest spliceai```

Python modules:
- [cyvcf2 v0.30.22](https://github.com/brentp/cyvcf2) - Fast python VCF and BCF processing with cython and htslib. <br/>```from cyvcf2 import VCF``` <br/>

- [scikit-allel v1.3.6](https://scikit-allel.readthedocs.io/en/latest/) - Package that provides utilities for exploratory analysis of large scale genetic variation data. It is based on numpy, scipy, etc. <br/>
```import allel``` <br/>

- [hgvs v1.5.4](https://github.com/biocommons/hgvs) - hgvs - This package provides a Python library to parse, format, validate, normalize, and map sequence variants according to Variation Nomenclature (aka Human Genome Variation Society) recommendations. <br/> ```import hgvs.parser``` <br/>

Image latest version: 0.8
Last update: 10/09/2023

Update on v0.6: Version updates and manual compilation of bcftools and htslib utils, so that bcftools plugins can be used.
Update on v0.7: Version updates and removal of pyvcf package
Update on v0.8: Version updates and addition of plink2 software