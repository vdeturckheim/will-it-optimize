#!/usr/bin/env bash

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
echo '[' > result.json
for VERSION in 0.12 4.0 4 5.0 5 6.0 6 7.0 7
do
    nvm install $VERSION;
    nvm use $VERSION;
    node index.js >> result.json
    echo ',' >> result.json
done
echo ']' >> result.json
