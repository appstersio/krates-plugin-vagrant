#!/bin/sh

set -ue

# login
echo :rubygems_api_key: $RUBYGEMS_KEY > ~/.gem/credentials
chmod 0600 ~/.gem/credentials

# install dependencies
bundle install
gem build *.gemspec
gem push *.gem

# cleanup
rm ~/.gem/credentials
