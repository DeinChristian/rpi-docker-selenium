FROM deinchristian/rpi-selenium-node-base

USER root

#=========
# Firefox
#=========
ENV FIREFOX_VERSION=53.0.2
ARG FIREFOX_LIB_FILENAME=firefox_53.0.2+build1-0ubuntu0.14.04.2_armhf.deb

RUN apt-get update
RUN apt-get -y --no-install-recommends install firefox \
&& apt-get -y purge firefox \
&& rm -rf /var/lib/apt/lists/* /var/cache/apt/*

RUN wget --no-verbose -O /tmp/firefox.deb \
  http://launchpadlibrarian.net/319017478/$FIREFOX_LIB_FILENAME \
  && dpkg -i /tmp/firefox.deb

#============
# GeckoDriver
#============
ARG GECKODRIVER_VERSION=0.16.1

RUN wget --no-verbose -O /tmp/geckodriver.tar.gz \
  https://github.com/mozilla/geckodriver/releases/download/v$GECKODRIVER_VERSION/geckodriver-v$GECKODRIVER_VERSION-arm7hf.tar.gz \
  && rm -rf /opt/geckodriver \
  && tar -C /opt -zxf /tmp/geckodriver.tar.gz \
  && rm /tmp/geckodriver.tar.gz \
  && mv /opt/geckodriver /opt/geckodriver-$GECKODRIVER_VERSION \
  && chmod 755 /opt/geckodriver-$GECKODRIVER_VERSION \
  && ln -fs /opt/geckodriver-$GECKODRIVER_VERSION /usr/bin/geckodriver

#========================
# Selenium Configuration
#========================
ENV NODE_MAX_INSTANCES 1
ENV NODE_MAX_SESSION 1
ENV NODE_REGISTER_CYCLE 5000
ENV NODE_PORT 5555
ENV NODE_APPLICATION_NAME ""
COPY generate_config /opt/selenium/generate_config
RUN chmod +x /opt/selenium/generate_config \
  && chown -R seluser:seluser /opt/selenium

USER seluser
