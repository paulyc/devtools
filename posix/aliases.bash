

function sudoalias() {
sudo -E "$@"
}

alias l='ls -altr --color=auto'
alias lh='ls -altrh --color=auto'
alias ll='ls -al --color=auto'
alias llh='ls -alh --color=auto'
alias ls='ls -a --color=auto'
alias lt='ls -alt --color=auto'
alias lth='ls -alth --color=auto'

alias pacsize='expac -H M "%011m\t%-20n\t%10d" $(comm -23 <(pacman -Qqen | sort) <({ pacman -Qqg base-devel; expac -l n %E base; } | sort | uniq)) | sort -n'

alias vi='vim'
alias sc='systemctl'
alias ssc='sudoalias systemctl'
alias scstart='sudoalias systemctl start'
alias scstop='sudoalias systemctl stop'
alias scstat='systemctl status'
alias jc='journalctl'
alias jcu='journalctl -u'
alias jcf='journalctl -f'
alias dmfollow='sudoalias dmesg -H -w'

