FROM python:3.6.8

ENV MLFLOW_SERVER_HOST 0.0.0.0
ENV MLFLOW_SERVER_DEFAULT_ARTIFACT_ROOT "hdfs://localhost:9000/Models"
ENV MLFLOW_BACKEND_STORE_URI "postgresql+psycopg2://root:root@postgres:5432/postgres"

WORKDIR /

RUN apt-get update
RUN apt-get install libpq-dev python3-dev -y
RUN pip install --upgrade pip
RUN pip install mlflow psycopg2-binary

CMD mlflow server \
     --backend-store-uri ${MLFLOW_BACKEND_STORE_URI} \
      --default-artifact-root ${MLFLOW_SERVER_DEFAULT_ARTIFACT_ROOT} \
       --host 0.0.0.0

