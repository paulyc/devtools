### Install Homebrew ###
yes|/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

### Install bash-completion ###
brew install bash-completion
echo "[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion" >> ~/.bash_profile
cp -rv $(dirname $0)/../generic/bash-completions/* /usr/local/etc/bash_completion.d/

### Install bash-git-prompt ###
brew install --HEAD bash-git-prompt
cat <<EOF >> ~/.bash_profile
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
EOF

[ -x ./hack.sh ] && ./hack.sh
