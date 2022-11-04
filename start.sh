#!/bin/bash
systemctl restart nginx
python3 /week1-devops/web2/manage.py runserver 0.0.0.0:9000 & 
python3 /week1-devops/web1/manage.py runserver 0.0.0.0:8000 