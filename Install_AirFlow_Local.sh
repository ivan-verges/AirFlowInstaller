# Defines the AirFlow Home Path (Optional, Must Be Full Path)
export AIRFLOW_HOME=~/airflow

# Creater the Directories (If Not Exists) for DAGS, LOGS and PLUGINS
mkdir -p "${AIRFLOW_HOME}/dags" "${AIRFLOW_HOME}/logs" "${AIRFLOW_HOME}/plugins"

# AirFlow Version. Example: 2.1.0
AIRFLOW_VERSION=2.1.0

# Python Version. Example: 3.8
PYTHON_VERSION="$(python3 --version | cut -d " " -f 2 | cut -d "." -f 1-2)"

# Url to Install the Selected AirFlow Version for the Python Selected Version
CONSTRAINT_URL="https://raw.githubusercontent.com/apache/airflow/constraints-${AIRFLOW_VERSION}/constraints-${PYTHON_VERSION}.txt"

# Install Using PIP Latest Resolver
#pip install "apache-airflow==${AIRFLOW_VERSION}" --constraint "${CONSTRAINT_URL}"

# Install Using PIP Legacy Resolver
pip install "apache-airflow==${AIRFLOW_VERSION}" --use-deprecated=legacy-resolver --constraint "${CONSTRAINT_URL}"

# Initialize the DataBase
airflow db init

# Creates the Admin User for AirFlow
airflow users create \
    --username admin \
    --firstname Ivan \
    --lastname Verges \
    --role Admin \
    --email verges1@gmail.com