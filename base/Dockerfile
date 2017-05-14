FROM hypriot/rpi-java
MAINTAINER dein.christian "dein.christian@googlemail.com"

# Install dependencies
RUN apt-get update -qqy \
  && apt-get -qqy --no-install-recommends install \
    bzip2 \
    ca-certificates \
    sudo \
    unzip \
    wget \
  && rm -rfv /var/lib/apt/lists/* /var/cache/apt/*

# Selenium
ARG SELENIUM_VERSION=3.4
ARG SELENIUM_VERSION_FULL=3.4.0

RUN mkdir -p /opt/selenium \
  && wget --no-verbose http://selenium-release.storage.googleapis.com/$SELENIUM_VERSION/selenium-server-standalone-$SELENIUM_VERSION_FULL.jar -O /opt/selenium/selenium-server-standalone.jar \
  && chmod 744 /opt/selenium/selenium-server-standalone.jar

# Add normal user with passwordless sudo
RUN useradd seluser --shell /bin/bash --create-home \
	&& usermod -a -G sudo seluser \
	&& echo 'ALL ALL = (ALL) NOPASSWD: ALL' >> /etc/sudoers \
	&& echo 'seluser:secret' | chpasswd \
	&& chown -R seluser /opt/selenium