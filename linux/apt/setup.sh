#!/usr/bin/env bash -x
cd $(dirname $0)

[ -x ../pre_setup.sh ] && ../pre_setup.sh

### Update ###
apt update

### Install bash-completion ###
apt install bash-completion
cp -rn ../../generic/bash-completions/* /etc/bash_completion.d/

[ -x ../post_setup.sh ] && ../post_setup.sh
