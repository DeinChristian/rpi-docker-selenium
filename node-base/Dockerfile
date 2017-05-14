FROM deinchristian/rpi-selenium-base
MAINTAINER dein.christian "dein.christian@googlemail.com"

USER root

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

#===================
# Timezone settings
# Possible alternative: https://github.com/docker/docker/issues/3359#issuecomment-32150214
#===================
ENV TZ "Europe/Berlin"
RUN echo "${TZ}" | tee /etc/timezone \
  && dpkg-reconfigure --frontend noninteractive tzdata

#==============
# Xvfb
#==============
RUN apt-get update -qqy \
  && apt-get -qqy install xvfb \
  && apt-get -qqy install iproute \
  && rm -rf /var/lib/apt/lists/*

#==============================
# Scripts to run Selenium Node
#==============================
COPY \
  entry_point.sh \
  functions.sh \
    /opt/bin/
RUN chmod +x /opt/bin/entry_point.sh

#============================
# Some configuration options
#============================
ENV SCREEN_WIDTH 1680
ENV SCREEN_HEIGHT 1050
ENV SCREEN_DEPTH 24
ENV DISPLAY :99.0

USER seluser

CMD ["/opt/bin/entry_point.sh"]
