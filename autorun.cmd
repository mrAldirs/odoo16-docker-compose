@echo off

REM Run command `docker-compose up -d`
docker-compose up -d

REM Wait until Odoo is ready
ping -n 1 localhost:8069 >nul 2>nul
if errorlevel 1 (
    goto :wait
)

REM Show message
echo "Odoo is ready!"

:wait
ping -n 1 localhost:8069 >nul 2>nul
if errorlevel 1 (
    goto :wait
)