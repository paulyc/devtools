#!/usr/bin/env bash -x
cd $(dirname $0)

[ -x ../pre-setup.sh ] && ../pre-setup.sh

### Update ###
apk update

### Install bash-completion ###
apk add bash-completion
cp -rn ../../generic/bash-completions/* /usr/share/bash-completion/completions/

[ -x ../post_setup.sh ] && ../post_setup.sh
