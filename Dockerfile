FROM circleci/ruby:2.6.5-node-browsers

RUN sudo sh -c "echo 'deb http://packages.groonga.org/debian/ jessie main' >> /etc/apt/sources.list.d/groonga.list" \
 && sudo sh -c "echo 'deb-src http://packages.groonga.org/debian/ jessie main' >> /etc/apt/sources.list.d/groonga.list" \
 && sudo apt-get update \
 && sudo apt-get install -y --allow-unauthenticated groonga-keyring \
 && sudo apt-get update \
 && sudo apt-get install -y libgroonga-dev
