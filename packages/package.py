# ---------------------------------------
# | Install Odoo 16 with docker-compose |
# ---------------------------------------
# To initiate the installation of Odoo-16.0, execute the following Docker-Compose command in your terminal:
# docker-compose up -d
#
# If necessary, you can perform a restart of Odoo using the following command:
# docker-compose restart
#
# To gracefully conclude the installation, use the following command to stop and terminate the services:
# docker-compose down

# -----------------------
# | Add Python packages |
# -----------------------
# To install below packages at startup, uncomment this line in "docker-compose.yml" file!
# - ./entrypoint.sh:/entrypoint.sh
#
# pip install pip --upgrade
# 
# * if you want to install enterprise addons
# git clone clone https://github.com/odoo/odoo.git --branch 16.0 --depth 1 /opt/odoo/odoo
# git clone https://github.com/odoo/enterprise.git
#
# pip install -r /etc/odoo/requirements.txt