# Identifies and Kills the AirFlow Web Server Process (gunicorn)
kill $(lsof -i tcp:8080 | grep "gunicorn" | awk '{print $2}')

# Identifies and Kills the AirFlow Scheduler Service Process (airflow scheduler)
kill $(ps -eo 'tty,pid,comm' | grep "airflow" | awk '{print $2}')