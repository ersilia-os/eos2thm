FROM bentoml/model-server:0.11.0-py37
MAINTAINER ersilia

RUN conda install -c conda-forge rdkit=2021.03
RUN pip install flake8==3.8.4
RUN pip install mypy==0.790
RUN pip install pytest==5.3.2
RUN pip install pytorch-lightning==0.8.4
RUN pip install scikit-learn==0.21.3
RUN pip install scipy==1.3.1
RUN pip install transformers==3.5.1
RUN pip install torch==1.4.0

WORKDIR /repo
COPY ./repo
