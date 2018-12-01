# bookmarks
alias dl='cd ~/Downloads; la'
alias doc='cd ~/Documents; la'

# shortcuts
alias c='clear'
alias cat='bat'
alias q='exit'
alias ls='ls --color'
alias vimrc='vi ~/.config/nvim/init.vim'
alias grep='grep --color'
alias ...='../..'
alias ....='../../..'
alias la='ls -a'
alias video='youtube-dl --output "%(title)s.%(ext)s"'
alias mp3='youtube-dl --ignore-config --extract-audio \
    --audio-format "mp3" --audio-quality 0 --embed-thumbnail \
    --add-metadata --metadata-from-title "%(artist)s - %(title)s" \
    --output "%(title)s.%(ext)s"'
alias weather='curl -s wttr.in | sed -n "1,17p"'
alias ec2='ssh ec2' 
alias socks='ssh -N -f socks' 
alias config='vi ~/.config/i3/config'
alias svi='sudo -E nvim'
alias install='sudo apt install'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade -y'
alias search='apt search'
alias show-pkg='apt show'
alias remove='sudo apt remove'
alias wifi='nohup ~/github/cyberoam/cycle.py ~/.credentials &'
alias logout='pkill python'
alias autovenv='source .venv/bin/activate'

# developer shortcuts
alias vi='nvim -p'
alias em='emacsclient'
alias agenda='emacs -nw -f org-agenda'
alias py='ipython3'

#extra
alias docker-clean=' \
  docker container prune -f ; \
  docker image prune -f ; \
  docker network prune -f ; \
  docker volume prune -f '
