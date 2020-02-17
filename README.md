# docker-wp-local

A simple local WordPress Docker setup.

1. Clone your theme into the root of this project
1. Personalize `.env`. These are the settings that will be used by Docker to setup the database etc.
1. Run (both options will install into a `wordpress` folder which is used by Docker)
    - `make official` to download the latest WordPress from WordPress.org, or
    - `make bedrock` to install Bedrock

Once the Bedrock installation process is complete, open up `./wordpress/.env` and customize your
settings to match the database you specified in your `.env` file.

Browse to http://localhost and complete your WordPress install.

---

**Important:** The nginx in this repo is setup to run Bedrock. If you install WordPress using
`official` WordPress:

1. open `nginx/default.conf` and change
   [line 5](https://github.com/iaremarkus/docker-wp-local/blob/1074366a3773334736b1fd01ba6afb090f63f9a2/nginx/default.conf#L5)
   from
1. open `docker-compose.yml` and comment **IN** line 17, and comment **OUT** line 19
   [here](https://github.com/iaremarkus/docker-wp-local/blob/1074366a3773334736b1fd01ba6afb090f63f9a2/docker-compose.yml#L17).

`root /var/www/app/web;`

to

`root /var/www/app;`
