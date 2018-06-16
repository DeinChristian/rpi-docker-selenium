FROM deinchristian/rpi-selenium-base

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

#==============
# VNC and Xvfb
#==============
RUN apt-get update -qqy \
  && apt-get -qqy install \
    locales \
    xvfb \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

  #================
  # Font libraries
  #================
  # libfontconfig            ~1 MB
  # libfreetype6             ~1 MB
  # xfonts-cyrillic          ~2 MB
  # xfonts-scalable          ~2 MB
  # fonts-liberation         ~3 MB
  # fonts-ipafont-gothic     ~13 MB
  # fonts-wqy-zenhei         ~17 MB
  # fonts-tlwg-loma-otf      ~300 KB
  # ttf-ubuntu-font-family   ~5 MB
  #   Ubuntu Font Family, sans-serif typeface hinted for clarity
  # Removed packages:
  # xfonts-100dpi            ~6 MB
  # xfonts-75dpi             ~6 MB
  # Regarding fonts-liberation see:
  #  https://github.com/SeleniumHQ/docker-selenium/issues/383#issuecomment-278367069
  # Layer size: small: 36.28 MB (with --no-install-recommends)
  # Layer size: small: 36.28 MB
  RUN apt-get -qqy update \
    && apt-get -qqy --no-install-recommends install \
      libfontconfig \
      libfreetype6 \
      xfonts-cyrillic \
      xfonts-scalable \
      fonts-liberation \
      fonts-ipafont-gothic \
      fonts-wqy-zenhei \
      fonts-tlwg-loma-otf \
      ttf-ubuntu-font-family \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get -qyy clean

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
ENV SCREEN_WIDTH 1360
ENV SCREEN_HEIGHT 1020
ENV SCREEN_DEPTH 24
ENV DISPLAY :99.0

USER seluser

CMD ["/opt/bin/entry_point.sh"]
