# [Docker] Odoo 9 Base Image

Odoo v9 CE edition base image build from odoo:9.0 with some addition tools

* App config note: the config file must have name `openerp-server.conf` and mount to path `/etc/odoo`
* Docker Hub: https://hub.docker.com/repository/docker/nothingctrl/odoo-9-base

# Build & Push

```
docker build --tag nothingctrl/odoo-9-base:<tag-name> .
docker push nothingctrl/odoo-9-base:<tag-name>
```