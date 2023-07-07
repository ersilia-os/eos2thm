# MolBERT chemical language transformer

Molecular representation using the BERT language Transformer. The model has been pre-trained on the GuacaMol dataset (~1.6M molecules from ChEMBL), and can be fine-tuned to the desired QSAR tasks. It has been benchmarked in MoleculeNet.

## Identifiers

* EOS model ID: `eos2thm`
* Slug: `molbert`

## Characteristics

* Input: `Compound`
* Input Shape: `Single`
* Task: `Representation`
* Output: `Descriptor`
* Output Type: `Float`
* Output Shape: `List`
* Interpretation: Embedding representation of a molecule

## References

* [Publication](https://arxiv.org/abs/2011.13230)
* [Source Code](https://github.com/BenevolentAI/MolBERT)
* Ersilia contributor: [miquelduranfrigola](https://github.com/miquelduranfrigola)

## Ersilia model URLs
* [GitHub](https://github.com/ersilia-os/eos2thm)
* [AWS S3](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos2thm.zip)
* [DockerHub](https://hub.docker.com/r/ersiliaos/eos2thm) (AMD64)

## Citation

If you use this model, please cite the [original authors](https://arxiv.org/abs/2011.13230) of the model and the [Ersilia Model Hub](https://github.com/ersilia-os/ersilia/blob/master/CITATION.cff).

## License

This package is licensed under a GPL-3.0 license. The model contained within this package is licensed under a MIT license.

Notice: Ersilia grants access to these models 'as is' provided by the original authors, please refer to the original code repository and/or publication if you use the model in your research.

## About Us

The [Ersilia Open Source Initiative](https://ersilia.io) is a Non Profit Organization ([1192266](https://register-of-charities.charitycommission.gov.uk/charity-search/-/charity-details/5170657/full-print)) with the mission is to equip labs, universities and clinics in LMIC with AI/ML tools for infectious disease research.

[Help us](https://www.ersilia.io/donate) achieve our mission!