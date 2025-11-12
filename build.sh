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

echo "Creating superuser..."
echo "from django.contrib.auth import get_user_model; \
User = get_user_model(); \
User.objects.create_superuser('UV', 'uvgothadiya2003@gmail.com', 'jungkook123')" | python manage.py shell

echo "Starting Server..."
exec gunicorn bhavi_fashion.wsgi:application --bind 0.0.0.0:$PORT --workers 1 --timeout 300
