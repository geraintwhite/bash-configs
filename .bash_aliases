alias rm='rm -I'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

alias mkdir='mkdir -pv'
alias ..='cd ..'
alias open='xdg-open'
alias dd='dcfldd'

alias ls='ls -lh --color'
alias du='du -h'
alias df='df -h'

alias update='sudo apt-get update && sudo apt-get dist-upgrade'
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'
alias autoremove='sudo apt-get autoremove'

alias reload='source $HOME/.bashrc'
alias c='clear'

alias dropbox-uploader='/opt/Dropbox-Uploader/./dropbox_uploader.sh'
alias drop-shell='/opt/Dropbox-Uploader/./dropShell.sh'
alias python='python3'

alias clbin='curl -F "clbin=<-" https://clbin.com'

alias keys="xev | grep -A2 --line-buffered '^KeyRelease' | sed -n '/keycode /s/^.*keycode \([0-9]*\).* (.*, \(.*\)).*$/\1 \2/p'"
