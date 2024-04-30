# WissKI Cloud Manager

## Prerequistes
You need a running [WissKI Distillery](https://github.com/FAU-CDI/wisski-distillery) with an admin account an token.

## Pre-Config
Create .env file from template .env-example

## Start Docker Environment
Start everything with `docker-compose up -d`

## Drupal-Install
Visit your site and install Drupal

## Module installation
Clone [this module](https://github.com/rnsrk/wisski_cloud_account_manager) to drupal/web/modules/custom with

```
git clone https://github.com/rnsrk/wisski_cloud_account_manager
```

## Activate and Config
At /admin/modules activate WissKI cloud account manager and adjust settings at /admin/config/wisski-cloud-account-manager/settings

