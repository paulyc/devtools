#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export LIBVA_DRIVER_NAME=i965

alias ls='ls -a --color=auto'
alias l='ls -altrh --color=auto'
alias ll='ls -alh --color=auto'
alias lt='ls -alth --color=auto'
alias vi='vim'

export PATH="$PATH:$HOME/go/bin"

export FC='f95-8'

PS1='[\u@\h \W]\$ '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GRADLE_USER_HOME=/zdisk/ARCH/linuxdev/gradle

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/lib/pkgconfig

alias pacsize='expac -H M "%011m\t%-20n\t%10d" $(comm -23 <(pacman -Qqen | sort) <({ pacman -Qqg base-devel; expac -l '\n' '%E' base; } | sort | uniq)) | sort -n'

PATH="/home/paulyc/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/paulyc/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/paulyc/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/paulyc/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/paulyc/perl5"; export PERL_MM_OPT;
