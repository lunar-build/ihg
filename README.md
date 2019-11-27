# lunar-wp-base
Base Wordpress theme and setup using Roots. Comprehensive documentation for Roots can be found [here](root.io).

## Setup

### Requirements
Your machine must have the following dependencies
* Ansible 2.5.3-2.7.5
* Virtualbox >= 4.3.10
* Vagrant >= 2.1.0
* Node.js >= 8.0.0
* Yarn

See the [Roots documentation for installing machine dependencies](https://roots.io/getting-started/docs/macos-basic-setup/).

### Quick setup

* Clone this repo:
````
git clone git@github.com:lunar-build/lunar-wp-base.git
````

* Change directory into project root
````
cd lunar-wp-base
````

* Clone Trellis
````
git clone --depth=1 git@github.com:roots/trellis.git && rm -rf trellis/.git
````

* Install Bedrock composer packages
cd site && composer install

* Install theme composer packages
cd web/app/themes/sage && composer install

* Install theme yarn packages
yarn && yarn build

### Local environment setup

* Define environment domain and other information in /trellis/group_vars/development/wordpress_sites.yml. For example:
````
wordpress_sites:
  local.lunar-wp-base:
    site_hosts:
      - canonical: local.lunar-wp-base
        redirects:
          - www.local.lunar-wp-base
    local_path: ../site # path targeting local Bedrock site directory (relative to Ansible root)
    admin_email: admin@local.lunar-wp-base
    multisite:
      enabled: false
    ssl:
      enabled: false
      provider: self-signed
    cache:
      enabled: false
````

* Define admin panel and database passwords in /trellis/group_vars/development/vault.yml. For example:
````
# Documentation: https://roots.io/trellis/docs/vault/
vault_mysql_root_password: devpw

# Variables to accompany `group_vars/development/wordpress_sites.yml`
# Note: the site name (`example.com`) must match up with the site name in the above file.
vault_wordpress_sites:
  local.lunar-wp-base:
    admin_password: admin
    env:
      db_password: password
````

* Build vagrant box (this will take some time)
````
cd trellis && vagrant up
````

* Login to site at, for example, http://local.lunar-wp-base/wp-admin. Your username is and password are defined in the file /trellis/group_vars/development/vault.yml

* Set theme to Lunar Base Theme

## Features
* Environment variables set in .env file, not wp_admin
* Additional image sizes are defined in setup.php
* Function to return responsive image (open to improvement). See Controllers/App.php function create_responsive_image()
* ACF Field Builder installed and configured. No more defining fields in the admin panel. See https://roots.io/guides/using-acf-builder-with-sage/ for how to use
* Browser watch. Run ````yarn start```` in the theme folder
* Linter is turned off in resources/assets/build/webpack.config.js. Turn back on if web development isn't frustrating enough for you
* Very lightweight layout strategy defined. Navigate to /sample-page in the browser (uses page.blade.php template) for examples. Feel free to use or delete if not fit for purpose

