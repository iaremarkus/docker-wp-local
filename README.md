# docker-wp-local

A simple local WordPress Docker setup.

1. Clone your theme into the root of this project
1. Personalize `.env`. These are the settings that will be used by Docker to setup the database etc.
1. Run (both options will install into a `wordpress` folder which is used by Docker)
   - `make setup` to download the latest WordPress from WordPress.org

Once the Bedrock installation process is complete, open up `./wordpress/.env` and customize your
settings to match the database you specified in your `.env` file.

Browse to http://localhost and complete your WordPress install.
