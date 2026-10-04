# MolBERT chemical language transformer

Produces a 768-dimensional embedding from MolBERT, a language model trained on SMILES with chemistry-aware auxiliary objectives. Fabian and colleagues at BenevolentAI combined masked-token prediction with tasks such as recovering physicochemical descriptors and recognising equivalent SMILES for the same molecule, so the encoder learns chemical invariances instead of surface string patterns. The embedding is task-independent and its individual dimensions carry no direct chemical meaning.

This model was incorporated on 2021-09-28.Last packaged on 2026-08-31.

## Information
### Identifiers
- **Ersilia Identifier:** `eos2thm`
- **Slug:** `molbert`

### Domain
- **Task:** `Representation`
- **Subtask:** `Featurization`
- **Biomedical Area:** `Any`
- **Target Organism:** `Any`
- **Tags:** `Chemical language model`, `Embedding`, `Descriptor`

### Input
- **Input:** `Compound`
- **Input Dimension:** `1`

### Output
- **Output Dimension:** `768`
- **Output Consistency:** `Fixed`
- **Interpretation:** 768 features encoding molecular structure from a chemistry-aware language model.

Below are the **Output Columns** of the model:
| Name | Type | Direction | Description |
|------|------|-----------|-------------|
| feat_000 | float |  | Feature 0 of the MolBERT transformer |
| feat_001 | float |  | Feature 1 of the MolBERT transformer |
| feat_002 | float |  | Feature 2 of the MolBERT transformer |
| feat_003 | float |  | Feature 3 of the MolBERT transformer |
| feat_004 | float |  | Feature 4 of the MolBERT transformer |
| feat_005 | float |  | Feature 5 of the MolBERT transformer |
| feat_006 | float |  | Feature 6 of the MolBERT transformer |
| feat_007 | float |  | Feature 7 of the MolBERT transformer |
| feat_008 | float |  | Feature 8 of the MolBERT transformer |
| feat_009 | float |  | Feature 9 of the MolBERT transformer |

_10 of 768 columns are shown_
### Source and Deployment
- **Source:** `Local`
- **Source Type:** `External`
- **DockerHub**: [https://hub.docker.com/r/ersiliaos/eos2thm](https://hub.docker.com/r/ersiliaos/eos2thm)
- **Docker Architecture:** `AMD64`
- **S3 Storage**: [https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos2thm.zip](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos2thm.zip)

### Resource Consumption
- **Model Size (Mb):** `998`
- **Environment Size (Mb):** `5653`
- **Image Size (Mb):** `8594.19`

**Computational Performance (seconds):**
- 10 inputs: `30.67`
- 100 inputs: `61.53`
- 10000 inputs: `-1`

### References
- **Source Code**: [https://github.com/BenevolentAI/MolBERT](https://github.com/BenevolentAI/MolBERT)
- **Publication**: [https://doi.org/10.48550/arXiv.2011.13230](https://doi.org/10.48550/arXiv.2011.13230)
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
