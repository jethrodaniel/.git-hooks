#!/usr/bin/env bash

if ! command -v gem
then
  echo '`gem` not found. Exiting...'
  exit 1
fi

gem install overcommit \
  && overcommit --install \
  && git clone https://github.com/jethrodaniel/.git-hooks \
  && cp .git-hooks/.overcommit.yml.example .overcommit.yml \
  && overcommit --sign \
  && overcommit --sign prepare-commit-msg \
  && overcommit --sign commit-msg
  && echo -e "\n✔ Git hooks initalized in .git-hooks!"
