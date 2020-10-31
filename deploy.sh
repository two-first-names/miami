#!/usr/bin/env bash
REPO="https://github.com/two-first-names/miami"

if [ ! -d "miami" ]
then
  git clone $REPO miami
fi

cd miami || exit
git pull
sudo pip install -r requirements.txt
evennia start