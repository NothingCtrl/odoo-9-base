FROM odoo:9.0
MAINTAINER thang@camratus.com
USER root
RUN apt-get update && apt-get install git nano iputils-ping -y
COPY requirements_docker.txt /mnt/requirements.txt
COPY docker-package/ /docker-package/
RUN pip install -r /mnt/requirements.txt
user odoo
EXPOSE 8069