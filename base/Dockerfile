FROM ioft/armhf-ubuntu:16.04

# Install dependencies
RUN apt-get update && apt-get install -y \
	wget \
	unzip \
	default-jre \
	ca-certificates

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
