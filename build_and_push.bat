@echo OFF
echo === Build and push tag: %1 ===
if "%1" == "" (
    echo - A param for tag version is required!
    timeout 3
    exit
)
docker build --tag nothingctrl/odoo-9-base:%1 .
docker push nothingctrl/odoo-9-base:%1