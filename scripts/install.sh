#!/usr/bin/env bash

set -o pipefail

if [[ ${TRAVIS_OS_NAME} == "osx" ]]; then
  source ~/.bashrc
else
  source ~/.nvm/nvm.sh
fi

nvm install ${NODE_VERSION}
nvm alias default ${NODE_VERSION}
nvm use ${NODE_VERSION}

node --version
npm --version

npm install --compile
