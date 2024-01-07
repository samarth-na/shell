#--------------------nvim-----------------------------
alias v='nvim'
alias e='nvim'
alias e.='nvim .'

#-----------------------------clear-------------------------
alias c='clear'
alias cl='clear'
alias cls='clear'

#--------------------------apps----------------------------
alias fm='ranger'
alias b='btop'
alias net='speedtest'

#------------------------dnf------------------------------
alias sdi='sudo dnf install'
alias upd='sudo dnf update'
alias ref='sudo dnf upgrade --refresh'
alias upg='sudo dnf upgrade '

#------------------------exa------------------------------
alias lt2='exa --tree --level=3 --icons -a  -lBb --colour-scale'
alias lt3='exa --tree --level=4 --icons -a  -lBb --colour-scale'
alias lt='exa --tree --level=2 --icons -a   -lBb --colour-scale'
alias l='exa --icons'
alias la='exa --icons -a'
alias L='exa --icons -lah'

#--------------------------tmux----------------------------
alias t='tmux'
alias ta='tmux attach-session'

alias ttop='tmux set -g status-position top'
alias tbot='tmux set -g status-position bottom'

#-------------------------liveserverhost-----------------------------
alias host='npm run dev'
alias livehost='npm run dev -- -H 192.168.1.8'
alias zshs='source ~/.zshrc'

#-------------------runners--------------------------
alias gp='g++'
alias pp='g++'
alias cc'gcc'
alias g.='go run .'
alias py='python'
#-------------------web-search------------
alias pd="web_search phind "
alias yt="youtube"
alias gpt="web_search gpt "
#-----------------------------scripts-------------------------
alias mdc='mcd() { mkdir "$@" && cd "$@" }; mcd'

setxkbmap -layout us -option ctrl:nocaps

#---------------------------navigation-----------------------------
alias ef="fd --hidden --type f | fzf --reverse | xargs -o nvim"
# alias sd='fd --hidden --type d | fzf --preview "exa -lah --icons {} "
# '
alias epf=" fd --type f -H |fzf --reverse --preview 'bat --color=always --style=numbers --line-range=:100 {}'| xargs nvim {}

"
alias pf=" fd --type f |fzf --reverse --preview 'bat --color=always --style=numbers --line-range=:100 {}'
"

alias ec='fd --hidden --type f --max-depth=1 | fzf-tmux -p --reverse | xargs -o nvim'
#
alias fl2='fd --max-depth=2 |fzf --reverse '

alias play='find ~/Music -type f \( -name "*.mp3" -or -name "*.m4a" -or -name "*.webm" \)| fzf-tmux --reverse -p |xargs -I {} vlc "{}"
'
alias conf=' cd $( find ~/.config   -type d  |fzf --reverse --preview "lt -lBb --colour-scale {}"
)'
alias jd=' cd $( find -type d  |fzf-tmux -p --reverse  --preview "lt -lBb --colour-scale {}"
)'
alias dnd=' cd $( find ~/Downloads -type d  |fzf --reverse --preview "lt -lBb --colour-scale {}"
)'
alias proj=' cd $( find ~/projects -type d  |fzf --reverse --preview "lt -lBb --colour-scale {}"
)'
alias econf='find ~/.config  -type f | fzf --reverse --preview "bat --color=always --style=numbers --line-range=:100 {}"|xargs nvim {}'

alias cdd=' cd $( fd -H --type d --max-depth=1 |fzf-tmux --reverse -p -w --preview " exa -laBb --colour-scale --no-permissions --no-time --no-user {}")'

alias ct='
tmux list-windows -a -F "#S:#I-#W" | fzf-tmux -p | cut -d "-" -f 1 | xargs tmux switch-client -t
'
alias ef="fd --hidden --type f | fzf --reverse | xargs -o nvim"
# alias sd='fd --hidden --type d | fzf --preview "exa -lah --icons {} "
# '
alias epf=" fd --type f -H |fzf --reverse --preview 'bat --color=always --style=numbers --line-range=:100 {}'| xargs nvim {}

"
alias pf=" fd --type f |fzf --reverse --preview 'bat --color=always --style=numbers --line-range=:100 {}'
"

alias ec='fd --hidden --type f --max-depth=1 | fzf-tmux -p --reverse | xargs -o nvim'
#
alias fl2='fd --max-depth=2 |fzf --reverse '

alias play='find ~/Music -type f \( -name "*.mp3" -or -name "*.m4a" -or -name "*.webm" \)| fzf-tmux --reverse -p |xargs -I {} vlc "{}"
'

function tmuxswitch() {
 ct
};
zle -N tmuxswitch
bindkey '^[t' tmuxswitch



pop()
{
 tmux popup
};
zle -N pop
bindkey '^\' pop



# fdd() {
#   cd $(fd -H --type=d "$@" |fzf --preview " exa -laBb --colour-scale --no-permissions --no-time --no-user {}")
# };

# fdz() {
#   fd -H --type=d "$!" | fzf --preview "exa -laBb --colour-scale --no-permissions --no-time --no-user {}"
# }

fld() {
    cd $(fd -H --type=d "$1" | fzf --preview "exa -labB {}")

}
