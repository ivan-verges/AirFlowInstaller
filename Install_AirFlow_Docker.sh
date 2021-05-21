# AirFlow Version. Example: 2.1.0
AIRFLOW_VERSION=2.1.0

# Downloads the Docker Compose File to Download the Images and Install Them
curl -LfO "https://airflow.apache.org/docs/apache-airflow/${AIRFLOW_VERSION}/docker-compose.yaml"

# Creater the Directories (If Not Exists) for DAGS, LOGS and PLUGINS
mkdir -p ./dags ./logs ./plugins

# Creater the ".env" File with the User to Link Local User to Docker Image User and Folders
echo -e "AIRFLOW_UID=$(id -u)\nAIRFLOW_GID=0" > .env

# Compose the AirFlow Docker Image(s) and Initialize It
sudo docker-compose up airflow-init

# Downloads and Sets a Script File to Facilitate the AirFlow Commands Execution
curl -LfO "https://airflow.apache.org/docs/apache-airflow/${AIRFLOW_VERSION}/airflow.sh"

# Gives the Script the Executios Permission
chmod +x airflow.sh