#!/usr/bin/env bash -x
cd $(dirname $0)

[ -x ../pre_setup.sh ] && ../pre_setup.sh

### Update yum ###
yum update

### Install bash-completion ###
yum install -y bash-completion
cp -rn ../../generic/bash-completions/* /etc/bash_completion.d/

[ -x ../post_setup.sh ] && ../post_setup.sh
