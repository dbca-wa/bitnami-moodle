FROM bitnami/moodle:3.6.2
RUN install_packages git ghostscript composer \
  && git clone git://github.com/tmuras/moosh.git \
  && cd moosh \
  && composer install
