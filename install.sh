#!/usr/bin/env bash

if ! command -v gem; then
  echo '`gem` not found. Exiting...'
  exit 1
fi

if ! command -v git; then
  echo '`git` not found. Exiting...'
  exit 1
fi

gem install overcommit \
  && overcommit --install \
  && git clone https://github.com/jethrodaniel/.git-hooks \
  && cp .git-hooks/.overcommit.yml.example .overcommit.yml \
  && overcommit --sign \
  && echo -e "\n✔ Git hooks initalized in .git-hooks!"
