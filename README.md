# Mlflow With PostgreSQL and HDFS (on Docker)

<b>! Hadoop should be installed on locally because pyarrow needs to some hadoop file!. </br></b>

Database = PostgreSQL (on Docker) </br>
Artifact Store = HDFS (Hadoop Distributed File System) (on Docker) </br>

How to run PostgreSQL and MLflow </br>
* "./ docker compose up" </br>
  * localhost:5000 for MLflow UI
  * localhost:8080 for PostgreSQL

How to run HDFS </br>
* "./hadoop/ docker compose up" </br>
  * localhost:9870 for HDFS
