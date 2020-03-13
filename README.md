# IHG

Base Wordpress theme and setup using Roots. Comprehensive documentation for Roots can be found [here](root.io).

## Setup

### Requirements

Your machine must have the following dependencies

- Ansible 2.5.3-2.7.5
- Virtualbox >= 4.3.10
- Vagrant >= 2.1.0
- Node.js >= 8.0.0
- Yarn

See the [Roots documentation for installing machine dependencies](https://roots.io/getting-started/docs/macos-basic-setup/).

#### Build local environment

- Build vagrant box (this will take some time)

```
cd trellis && vagrant up
```

#### Install dependencies and build assets

- Install Bedrock composer packages

```
cd site && composer install
```

- Install theme composer packages

```
cd web/app/themes/sage && composer install
```

- Install theme yarn packages

```
yarn && yarn build
```

- Login to site at, for example, http://ihg.local/wp-admin. Your username and password are defined in the file /trellis/group_vars/development/vault.yml. To view this, run:

```
ansible-vault view trellis/group_vars/development/vault.yml
```

**Command not found: ansible-vault**
If you receive `command not found: ansible-vault`, you need to add python to your path:

```
export PATH="/Users/<your_username>/Library/Python/2.7/bin:$PATH"
```

- Set theme to Lunar Base Theme
- Activate plugins
- Or, upload an existing database. Database details are found in .env, which will have been generated from the encrypted vault.yml file on vagrant up.

## Multisite

Should be setup as soon as you vagrant up, and log in to the WP admin area.

There is currently a bug, where `Config::define` isn't setting up the appropriate constants that WP is provisioned with Multisite, you'll need to define the constants in `development.php` instead.

```
Config::define('WP_ALLOW_MULTISITE', true);
Config::define('MULTISITE', true);
Config::define('SUBDOMAIN_INSTALL', false); // Set to true if using subdomains
Config::define('DOMAIN_CURRENT_SITE', env('DOMAIN_CURRENT_SITE'));
Config::define('PATH_CURRENT_SITE', env('PATH_CURRENT_SITE') ?: '/');
Config::define('SITE_ID_CURRENT_SITE', env('SITE_ID_CURRENT_SITE') ?: 1);
Config::define('BLOG_ID_CURRENT_SITE', env('BLOG_ID_CURRENT_SITE') ?: 1);
```

Roots.io multisite doesn't work out of the box, you have to install an [mu-plugin](https://github.com/felixarntz/multisite-fixes) to fix a URL rewrite bug.

### Adding sites

By default the Crowne Plaza site will be up and running, but you'll need to add the Holiday Inn sub-site using the WP UI.

Visit `http://transformation.crowne-plaza.local/wp-admin/network/sites.php` and add a new site. Initially you'll have to add the sub-site as a path off of the Crowne Plaza site but you can edit the full URL for the Holiday Inn site to be `http://transformation.holiday-inn.local/`.

## Plugins

Plugins are version managed as Composer dependencies at the root of the site directory. This can be accomplished in different ways depending on the plugin.

### Installing plugins from the Wordpress Plugin Directory

This is the simplest use case. All plugins from the [WP Plugin Directory](https://wordpress.org/plugins/) are available from the wpackagist-plugin namespace, already defined in site/composer.json. For example:

```
composer require wpackagist-plugin/akismet
```

For more information read this [document](https://roots.io/bedrock/docs/composer/).

### Installing custom or private plugins

See [this document](https://roots.io/wordpress-plugins-with-composer/).

### Installing ACF Pro with encrypted license key

This base theme comes with ACF already installed, with an encrypted license key stored in /trellis/group_vars/development/vault.yml. It does not currently have the same key stored in the other environment vaults - on the assumption that the site will use another license in production, paid for by the client. To understand how this is setup, read [this document](https://roots.io/guides/acf-pro-as-a-composer-dependency-with-encrypted-license-key/)

## Features

- Environment variables set in .env file, not wp_admin
- Additional image sizes are defined in setup.php
- Function to return responsive image (open to improvement). See Controllers/App.php function create_responsive_image()
- ACF Field Builder installed and configured. No more defining fields in the admin panel. See https://roots.io/guides/using-acf-builder-with-sage/ and https://github.com/StoutLogic/acf-builder/wiki for how to use
- Browser watch. Run `yarn start` in the theme folder
- Linter is turned off in resources/assets/build/webpack.config.js. Turn back on if web development isn't frustrating enough for you
- Very lightweight layout strategy defined. Navigate to /sample-page in the browser (uses page.blade.php template) for examples. Feel free to use or delete if not fit for purpose

## CPTs

CPTs are defined within a CPT class for encapsulation `site/web/app/themes/sage/app/cpt.php`. Add more CPTs here if you need to and invoke them in setup.php.

```
add_action('init', function () {
    $cpt = new CPT;
    $cpt->register_events();
    //.... more CPTs
});
```

## Styling

Styling across both the Crowne Plaza and Holiday Inn microsites is largely the same. The code should be as if they were one site with brand colours being the exception. 

The core styles are found in main.scss, but I have added 2 new entry points in the config.json for brand specific CSS variables.

**RegEx for deriving brand from URL**
```
$full_path = $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
preg_match('/[a-z]+.([a-z-]*).([a-z]+)/', $full_path, $matches);

$brand = $matches[1];
define('BRAND', $brand);

wp_enqueue_style('sage/'.$brand.'.css', asset_path('styles/'.$brand.'.css'), false, null);
```

**New CSS build entrypoints**
```
"entry": {
  "main": ["./scripts/main.js", "./styles/main.scss"],
  "crowne-plaza": [
    "./styles/crowne-plaza.scss"
  ],
  "holiday-inn": [
    "./styles/holiday-inn.scss"
  ],
},
```


## Deployment