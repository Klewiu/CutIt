web: gunicorn djang_project_name.wsgi:application --log-file - --log-level debug
heroku ps:scale web=1
python manage.py migrate