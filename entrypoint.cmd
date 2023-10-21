@echo off

REM Set the postgres database host, port, user and password according to the environment
REM and pass them as arguments to the odoo process if not present in the config file
REM Setel host dan port basis data PostgreSQL
set HOST=db
set PORT=5432
set USER=odoo16
set PASSWORD=odoo16@2022

REM Check if the Odoo config file exists
if not exist "%ODOO_RC%" (
REM If the config file does not exist, create a new one
odoo --config /etc/odoo --addons-path=/mnt/extra-addons --init
)

REM Set the Odoo database arguments
set DB_ARGS=/server-db-host:%HOST% /server-db-port:%PORT% /server-db-user:%USER% /server-db-password:%PASSWORD%

REM Start Odoo
odoo.exe --config /etc/odoo --addons-path=/mnt/extra-addons %DB_ARGS%

REM Keep the command prompt window open
pause