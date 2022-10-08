FROM python:3.7-slim
COPY ./ /app
RUN python -m pip install --upgrade pip
RUN pip install -r /app/requirements.txt
WORKDIR /app/infra_project/
CMD python manage.py runserver 0:5000
