#!/bin/bash

#Build 
cd src
npm install
npm run build node --max_old_space_size=8000
export LIMIT=12096
npm install -g increase-memory-limit
cd /temp/portal/src/app/client
export NODE_OPTIONS=--max_old_space_size=4096
npm run offline-prod 
cd ../../../../../
npm run build-copy-clean
cd ..
tar -czvf src.tar.gz src

