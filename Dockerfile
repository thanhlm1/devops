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
# RUN git clone --branch main https://thanhlm:glpat--8_sjwJVUV5Gfq5zaek7@gitlab.com/cs_le_minh_thanh2/week1-devops.git
RUN git clone https://github.com/thanhlm1/devops.git
RUN rm usr/share/nginx/html/*
RUN cp -r devops/web/* /usr/share/nginx/html/
# RUN groupadd -r cystack && useradd -r -g cystack -s /sbin/nologin -c "CyStack user" cystack
# CMD ["./start.sh"]
