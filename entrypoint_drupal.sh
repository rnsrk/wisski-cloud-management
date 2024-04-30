#!/bin/sh

# Entrypoint to install Drupal in container

# Check if installation already exists
if ! [ -d /opt/drupal/web ]
	then
		# https://www.drupal.org/node/3060/release
		DRUPAL_VERSION='10.1.6'

		# Installed Drupal modules, please check and update versions if necessary
		# List Requirements
		REQUIREMENTS=" \
			drupal/bootstrap5 \
		  drupal/colorbox \
			drupal/devel \
			drush/drush \
			drupal/facets \
			drupal/field_permissions \
			drupal/geofield \
			drupal/geofield_map \
			drupal/image_effects \
			drupal/imagemagick \
			drupal/imce \
			drupal/leaflet \
			drupal/smtp \
			drupal/search_api \
			drupal/search_api_solr \
			drupal/viewfield:^3.0@beta \
			kint-php/kint"

		# Install Drupal, WissKI and dependencies
		set -eux
		export COMPOSER_HOME="$(mktemp -d)"
		composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./
		yes | composer require ${REQUIREMENTS}



		# delete composer cache
		rm -rf "$COMPOSER_HOME"

		# install libraries
		set -eux
		mkdir -p web/libraries
		wget https://github.com/jackmoore/colorbox/archive/refs/heads/master.zip -P web/libraries/
		unzip web/libraries/master.zip -d web/libraries/
		rm -r web/libraries/master.zip
		mv web/libraries/colorbox-master web/libraries/colorbox

		# enable packages
		#drush en colorbox devel geofield_map image_effects imagemagick layout_builder leaflet_views media_library sophron_guesser viewfield

		# Move settings-file to the right place
		mv /settings.php web/sites/default/settings.php

		# Set permissions
		chmod -R 775 /opt/drupal
		chmod -R 644 web/sites/default/settings.php
		chown -R www-data:www-data /opt/drupal

	else
		echo "/opt/drupal/web already exists."
fi

# Adjust permissions and links
rm -r /var/www/html
ln -sf /opt/drupal/web /var/www/html

# Start apache
echo "$(ls /etc/)"
apache2-foreground
