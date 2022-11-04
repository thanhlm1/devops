# syntax=docker/dockerfile:1
FROM python:3.8
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
EXPOSE 8888
CMD python3 manage.py runserver 8888

FROM nginx:latest
COPY /etc/nginx/nginx.conf /etc/nginx/nginx.conf 
CMD sudo nginx -s reload
