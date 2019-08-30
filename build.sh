#!/bin/bash
set -e

BUILD_NUMBER=1;

docker run -it --rm \
-v ~/.cache:/root/.cache \
-v ~/.config:/root/.config \
-v ~/.gnupg:/root/.gnupg \
-v ~/.local:/root/.local \
-v ~/.npm:/root/.npm \
-v `pwd`:/src \
--workdir /src \
node /bin/sh -c "node --version && yarn install && yarn run build"

docker build -t hub.niusys.com/practice/my_vue_template:${BUILD_NUMBER} .

docker push hub.niusys.com/practice/my_vue_template:${BUILD_NUMBER}