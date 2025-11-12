#!/bin/bash
set -e  # Stop on error

echo "Installing dependencies..."
pip install -r requirements.txt --no-cache-dir --timeout 300

echo "Running migrations..."
python manage.py migrate --noinput

echo "Collecting static files..."
python manage.py collectstatic --noinput

echo "Running deploy checks..."
python manage.py check --deploy

echo "Starting Gunicorn..."
exec gunicorn bhavi_fashion.wsgi:application --bind 0.0.0.0:$PORT --workers 1 --timeout 300
