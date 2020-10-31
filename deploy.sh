#!/usr/bin/env bash
REPO="https://github.com/two-first-names/miami"

if [ ! -d "venv" ]
then
  python3 -mvenv venv
fi
source ./venv/bin/activate

if [ ! -d "miami" ]
then
  git clone $REPO miami
fi

cd miami || exit
git pull
pip install -r requirements.txt
evennia start