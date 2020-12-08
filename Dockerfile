FROM nginx:1.19.5
LABEL description="NGINX avec NANO installé"
LABEL version="3.0"
LABEL maintainer="Damien VIDAL (CABM")
ENV MYSQL_USER="root"
RUN apt-get update
RUN apt-get install -y nano
WORKDIR /usr/share/nginx/html
RUN mkdir mon-site
RUN echo "coucou" >> mon-site/index.html
