#!/bin/sh

set -ue

# install dependencies
bundle install
gem build *.gemspec

if [ -n "$RUBYGEMS_KEY" ]; then
  # login
  echo :rubygems_api_key: $RUBYGEMS_KEY > ~/.gem/credentials
  chmod 0600 ~/.gem/credentials

  gem push *.gem

  # cleanup
  rm ~/.gem/credentials
fi