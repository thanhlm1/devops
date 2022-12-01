FROM nginx
# RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf
# RUN mkdir certs
# ADD fullchain.pem certs/fullchain.pem
# ADD privkey.pem certs/privkey.pem
# ADD nginx.conf /etc/nginx/nginx.conf
# ADD start.sh start.sh
# RUN chmod +x start.sh
RUN apt-get update
RUN apt-get -y install git
# RUN apt-get -y install python3
# RUN apt-get -y install pip
# RUN apt-get -y install systemctl
# RUN pip install django
# ENV PYTHONDONTWRITEBYTECODE=1
# ENV PYTHONUNBUFFERED=1
EXPOSE 443
EXPOSE 80
RUN git clone https://github.com/thanhlm1/devops.git
RUN rm usr/share/nginx/html/*
RUN cp -r devops/web0/* /usr/share/nginx/html/
RUN groupadd -r thanhlm && useradd -r -g thanhlm -s /sbin/nologin -c "thanhlm" thanhlm
# CMD ["./start.sh"]

# FROM nginx as intermediate
# WORKDIR /app
# RUN apt-get update
# RUN apt-get -y install git
# RUN git clone https://github.com/thanhlm1/devops.git

# FROM nginx
# EXPOSE 443
# EXPOSE 80
# RUN rm usr/share/nginx/html/*
# COPY --from=intermediate /app/ .
# RUN pwd
# RUN ls
# RUN cp -r /devops/web0/* /usr/share/nginx/html/
# RUN groupadd -r thanhlm && useradd -r -g thanhlm -s /sbin/nologin -c "thanhlm" thanhlm
# # CMD ["./start.sh"]
