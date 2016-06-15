#!/usr/bin/env bash

# Install Ruby Version Manager (RVM)
# gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
# curl -sSL https://get.rvm.io | bash -s stable --ruby=2.1
# rvm use 2.1 --default

# Essentials
gem install sass
gem install compass

# Linters
gem install haml_lint
gem install scss_lint
