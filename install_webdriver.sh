#!/bin/bash
# Script for installation chrome and chromedriver

# install google chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
apt-get -y update
apt-get install -y google-chrome-stable
chown root:root /usr/bin/google-chrome
chmod 0755 /usr/bin/google-chrome

# install chromedriver
apt-get install -yqq unzip
wget -O /tmp/chromedriver.zip http://chromedriver.storage.googleapis.com/`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE`/chromedriver_linux64.zip
unzip -o /tmp/chromedriver.zip chromedriver -d /usr/local/bin/
chown root:root /usr/local/bin/chromedriver
chmod 0755 /usr/local/bin/chromedriver


