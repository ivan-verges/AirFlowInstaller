# Defines the AirFlow Home Path (Default: .../home/airflow)
export AIRFLOW_HOME=~/airflow

# Starts the WebServer at the Specified Port (Defaulr: 8080) As a Daemon Service
airflow webserver --port 8080 -D

# Starts the WebServer at the Specified Port (Defaulr: 8080) (Blocks the Terminal)
#airflow webserver --port 8080

# Runs the Scheduler as a Daemon Service
airflow scheduler -D

# Starts the AirFlow Scheduler (Blocks the Terminal)
#airflow scheduler