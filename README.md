# Install Odoo with Server using Docker

## Quick Installation
To run the installation quickly, double-click on the `autorun.cmd` file, and Docker Compose will run automatically. Make sure you have Docker Desktop or Docker Engine installed on Windows before running this file. Default web Odoo in port `localhost:8069` and Master Password `mr.Aldirs`

and/or run this script in the Windows Command Prompt by typing `autorun.cmd` script

``` cmd
autorun.cmd
```

## Installation Command Prompt (docker-compose.yml)

**Run Odoo**:

``` cmd
docker-compose up -d
```

- To run Odoo container in detached mode (be able to close terminal without stopping Odoo):

```
docker-compose up -d
```

- Open `localhost:8069` to access default port web Odoo 16.0. If you want to start the server with a different port, change **10000** to another value in **docker-compose.yml** inside the parent dir:

```
ports:
 - "10000:8069"
```

## Custom addons

The **addons/** folder contains custom addons. Just put your custom addons if you have any.

## Add custom addons

If you can custom addons, follow in this code in your terminal

``` cmd
odoo scaffold <name your addons> <directory addons>
```

in this default configuration  **directory addons** `/mnt/extra-addons`

## Odoo configuration & log

* To change Odoo configuration, edit file: **etc/odoo.conf**.
* Default database password (**admin_passwd**) is `mr.Aldirs`

## docker-compose.yml

* odoo:16.0
* postgres:15

## References Installation Odoo 16.0
- [github.com/minghing92](https://github.com/minhng92/odoo-16-docker-compose).
- [github.com/odoo](https://github.com/odoo).

