FROM circleci/ruby:2.6.5-node-browsers

RUN echo "deb http://packages.groonga.org/debian/ jessie main" >> /etc/apt/sources.list.d/groonga.list \
  && echo "deb-src http://packages.groonga.org/debian/ jessie main" >> /etc/apt/sources.list.d/groonga.list \
  && apt-get update \
  && apt-get install -y --allow-unauthenticated groonga-keyring \
  && apt-get update \
  && apt-get install -y libgroonga-dev
