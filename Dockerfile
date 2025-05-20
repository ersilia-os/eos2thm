FROM bentoml/model-server:0.11.0-py38
MAINTAINER ersilia

RUN pip install rdkit==2022.9.5
RUN pip install flake8==3.8.4
RUN pip install mypy==0.790
RUN pip install pytest==5.3.2
RUN pip install pytorch-lightning==0.8.4
RUN pip install scikit-learn==0.22.2
RUN pip install scipy==1.5.1
RUN pip install transformers==3.5.1
RUN pip install torch==1.7.1
RUN pip install pandas==1.3.5
RUN pip install protobuf=3.20.0

WORKDIR /repo
COPY . /repo
