#!/bin/bash
source $HOME/.rvm/scripts/rvm
sudo apt-get install -y libxml2 libxml2-dev libxslt-dev libcurl4-openssl-dev libzip-dev libssl-dev
git clone http://github.com/errbit/errbit.git
chown vagrant.vagrant errbit
cd errbit
bundle install
bundle exec rake errbit:bootstrap
#bundle exec rails server
