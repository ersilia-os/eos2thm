# MolBERT chemical language transformer

Molecular representation using the BERT language Transformer. The model has been pre-trained on the GuacaMol dataset (~1.6M molecules from ChEMBL), and can be fine-tuned to the desired QSAR tasks. It has been benchmarked in MoleculeNet.

This model was incorporated on 2021-09-28.

## Information
### Identifiers
- **Ersilia Identifier:** `eos2thm`
- **Slug:** `molbert`

### Domain
- **Task:** `Representation`
- **Subtask:** `Featurization`
- **Biomedical Area:** `Any`
- **Target Organism:** `Not Applicable`
- **Tags:** `Chemical language model`, `Embedding`, `Descriptor`

### Input
- **Input:** `Compound`
- **Input Dimension:** `1`

### Output
- **Output Dimension:** `768`
- **Output Consistency:** `Fixed`
- **Interpretation:** Embedding representation of a molecule

Below are the **Output Columns** of the model:
| Name | Type | Direction | Description |
|------|------|-----------|-------------|
| feature_000 | float |  | Feature 0 of the MolBERT transformer |
| feature_001 | float |  | Feature 1 of the MolBERT transformer |
| feature_002 | float |  | Feature 2 of the MolBERT transformer |
| feature_003 | float |  | Feature 3 of the MolBERT transformer |
| feature_004 | float |  | Feature 4 of the MolBERT transformer |
| feature_005 | float |  | Feature 5 of the MolBERT transformer |
| feature_006 | float |  | Feature 6 of the MolBERT transformer |
| feature_007 | float |  | Feature 7 of the MolBERT transformer |
| feature_008 | float |  | Feature 8 of the MolBERT transformer |
| feature_009 | float |  | Feature 9 of the MolBERT transformer |

_10 of 768 columns are shown_
### Source and Deployment
- **Source:** `Local`
- **Source Type:** `External`
- **DockerHub**: [https://hub.docker.com/r/ersiliaos/eos2thm](https://hub.docker.com/r/ersiliaos/eos2thm)
- **Docker Architecture:** `AMD64`
- **S3 Storage**: [https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos2thm.zip](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos2thm.zip)

### Resource Consumption
- **Model Size (Mb):** `998`
- **Environment Size (Mb):** `5637`


### References
- **Source Code**: [https://github.com/BenevolentAI/MolBERT](https://github.com/BenevolentAI/MolBERT)
- **Publication**: [https://arxiv.org/abs/2011.13230](https://arxiv.org/abs/2011.13230)
- **Publication Type:** `Preprint`
- **Publication Year:** `2020`
- **Ersilia Contributor:** [miquelduranfrigola](https://github.com/miquelduranfrigola)

### License
This package is licensed under a [GPL-3.0](https://github.com/ersilia-os/ersilia/blob/master/LICENSE) license. The model contained within this package is licensed under a [MIT](LICENSE) license.

**Notice**: Ersilia grants access to models _as is_, directly from the original authors, please refer to the original code repository and/or publication if you use the model in your research.


## Use
To use this model locally, you need to have the [Ersilia CLI](https://github.com/ersilia-os/ersilia) installed.
The model can be **fetched** using the following command:
```bash
# fetch model from the Ersilia Model Hub
ersilia fetch eos2thm
```
Then, you can **serve**, **run** and **close** the model as follows:
```bash
# serve the model
ersilia serve eos2thm
# generate an example file
ersilia example -n 3 -f my_input.csv
# run the model
ersilia run -i my_input.csv -o my_output.csv
# close the model
ersilia close
```

## About Ersilia
The [Ersilia Open Source Initiative](https://ersilia.io) is a tech non-profit organization fueling sustainable research in the Global South.
Please [cite](https://github.com/ersilia-os/ersilia/blob/master/CITATION.cff) the Ersilia Model Hub if you've found this model to be useful. Always [let us know](https://github.com/ersilia-os/ersilia/issues) if you experience any issues while trying to run it.
If you want to contribute to our mission, consider [donating](https://www.ersilia.io/donate) to Ersilia!
