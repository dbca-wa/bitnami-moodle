FROM bitnami/moodle:3.6.2
RUN install_packages git zip unzip ghostscript composer \
  && git clone git://github.com/tmuras/moosh.git \
  && cd moosh \
  && composer install \
  && ln -s /moosh/moosh.php /usr/local/bin/moosh
