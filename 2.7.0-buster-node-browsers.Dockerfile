FROM circleci/ruby:2.7.0-buster-node-browsers

RUN sudo sh -c "echo 'deb [signed-by=/usr/share/keyrings/groonga-archive-keyring.gpg] https://packages.groonga.org/debian/ buster main' >> /etc/apt/sources.list.d/groonga.list" && \
    sudo sh -c "echo 'deb-src [signed-by=/usr/share/keyrings/groonga-archive-keyring.gpg] https://packages.groonga.org/debian/ buster main' >> /etc/apt/sources.list.d/groonga.list" && \
    # sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ buster-pgdg main' >> /etc/apt/sources.list.d/pgdg.list" && \
    # sudo wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add - && \
    sudo wget -O /usr/share/keyrings/groonga-archive-keyring.gpg https://packages.groonga.org/debian/groonga-archive-keyring.gpg && \
    sudo apt-get update -qq && \
    sudo apt-get install -y postgresql-client && \
    sudo apt-get install -y apt-transport-https && \
    # sudo apt-get install -y --allow-unauthenticated groonga-keyring && \
    sudo apt-get install -y -V --force-yes groonga groonga-tokenizer-mecab libgroonga-dev
