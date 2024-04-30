# WissKI Cloud Manager

## Prerequistes
You need a running [WissKI Distillery](https://github.com/FAU-CDI/wisski-distillery) with an admin account and a admin token.

## Pre-Config
Create .env file from template .env-example

## Clone Deamon
Clone [Wisski Cloud Deamon](https://github.com/rnsrk/wisski_cloud_daemon) to drupal/web/modules/custom with

```
git clone git@github.com:rnsrk/wisski_cloud_daemon.git
```


## Start Docker Environment
Start everything with `docker-compose up -d`

## Drupal-Install
Visit your site and install Drupal

## Theme installation
Clone [WissKI Cloud Theme](https://github.com/rnsrk/wisski_cloud_theme) to drupal/web/themes/custom with

```
git clone git@github.com:rnsrk/wisski_cloud_theme.git
```


## Module installation
Clone [WissKI Cloud Account Manager](https://github.com/rnsrk/wisski_cloud_account_manager) to drupal/web/modules/custom with

```
git clone git@github.com:rnsrk/wisski_cloud_account_manager
```

## Activate and Config
At /admin/modules activate WissKI cloud account manager.
At https://wisski.cloud/admin/appearance install and activate Wisski_Cloud_Theme.
Adjust settings at /admin/config/wisski-cloud-account-manager/settings

