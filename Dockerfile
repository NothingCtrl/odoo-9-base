FROM odoo:9.0
MAINTAINER thang@camratus.com
USER root
RUN apt-get update && apt-get install git nano iputils-ping postgresql-client -y
RUN apt-get install -y build-essential autoconf libtool pkg-config python-opengl python-imaging python-pyrex python-pyside.qtopengl idle-python2.7 qt4-dev-tools qt4-designer libqtgui4 libqtcore4 libqt4-xml libqt4-test libqt4-script libqt4-network libqt4-dbus python-qt4 python-qt4-gl libgle3 python-dev
RUN pip install --upgrade pip==20.3.1
RUN pip install --upgrade setuptools
# --- patch for cloud logging
COPY patch/odoo/openerp/netsvc.py /usr/lib/python2.7/dist-packages/openerp/netsvc.py
COPY requirements_docker.txt /mnt/requirements.txt
COPY docker-package/ /docker-package/
RUN pip install -r /mnt/requirements.txt
user odoo
EXPOSE 8069