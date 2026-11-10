#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

sudo apt-get update
sudo apt-get install -y nodejs npm
sudo npm install -g pm2
npm install

if pm2 describe example_app >/dev/null 2>&1; then
  pm2 restart example_app --update-env
else
  pm2 start ./bin/www --name example_app
fi