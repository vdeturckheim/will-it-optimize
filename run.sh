#!/usr/bin/env bash

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
rm RES.md
for VERSION in 4.0 4 5.0 5 6.0 6 7.0 7
do
    nvm install $VERSION;
    nvm use $VERSION;
    node -v >> RES.md
    echo '```sh' >> RES.md
    node index.js >> RES.md
    echo '```' >> RES.md
    echo '--' >> RES.md
done
