#-----------------------commands---------------------------
alias info='info --vi-key'
#--------------------nvim-----------------------------
alias v='nvim'
alias e='nvim'
alias e.='nvim .'
alias kn='killall nvim '

alias lg= 'lazygit'
#-----------------------------clear-------------------------
alias c='clear'
alias cl='clear'
alias cls='clear'

#--------------------------apps----------------------------
alias fm='ranger'
alias b='btop'

#------------------------dnf------------------------------
alias sdi='sudo dnf install'
alias upd='sudo dnf update'
alias ref='sudo dnf upgrade --refresh'
alias upg='sudo dnf upgrade '

#------------------------eza------------------------------
alias lt2='eza --tree --icons --level=3 --icons -a  -lBb '
alias lt3='eza --tree --icons --level=4 --icons -a  -lBb '
alias lt='eza --tree --icons --level=2 --icons -a   -lBb '
alias tree='eza --tree --icons'
alias l='eza --icons'
alias la='eza --icons -a'
alias L='eza --icons -lahBb --git '

#--------------------------tmux----------------------------
alias t='tmux'
alias ta='tmux attach-session'

alias ttop='tmux set -g status-position top'
alias tbot='tmux set -g status-position bottom'

#-------------------------liveserverhost-----------------------------
alias host='bun run dev'
alias livehost='bun run dev -- -H 192.168.1.8'
alias zshs='source ~/.zshrc'

#-------------------runners--------------------------
alias gp='g++'
alias pp='g++'
alias g.='go run .'
alias py='python'
alias cct= 'codecrafters test'
#-------------------web-search------------
alias pd="web_search phind "
# alias yt="youtube"
alias px="web_search px"
alias gpt="web_search gpt "
alias stack="stackoverflow"
#-----------------------------scripts-------------------------
alias mdc='mcd() { mkdir "$@" && cd "$@" }; mcd'

#---------------------------navigation-----------------------------
alias obs="cd ~/obsidian/ && nvim "
alias ef="fd --hidden --type f | fzf --reverse | xargs -o nvim"
# alias sd='fd --hidden --type d | fzf --preview "eza -lah --icons {} "
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
alias conf=' cd $( find ~/.config   -type d  |fzf --reverse --preview "lt -lBb  {}"
)'
alias jd=' cd $( find -type d  |fzf-tmux -p --reverse  --preview "lt -lBb  {}"
)'
alias jp=' cd $( find  ~/projects -type d  |fzf-tmux -p --reverse  --preview "lt -lBb  {}"
)'
alias dnd=' cd $( find ~/Downloads -type d  |fzf --reverse --preview "lt -lBb -- {}"
)'
alias proj=' cd $( find ~/projects -type d  |fzf --reverse --preview "lt -lBb -- {}"
)'
alias econf='find ~/.config  -type f | fzf --reverse --preview "bat --color=always --style=numbers --line-range=:100 {}"|xargs nvim {}'

alias cdd=' cd $( fd -H --type d --max-depth=1 |fzf-tmux --reverse -p -w --preview " eza -laBb  --no-permissions --no-time --no-user {}")'

alias ct='
tmux list-windows -a -F "#S:#I-#W" | fzf-tmux -p | cut -d "-" -f 1 | xargs tmux switch-client -t
'
alias ef="fd --hidden --type f | fzf --reverse | xargs -o nvim"
# alias sd='fd --hidden --type d | fzf --preview "eza -lah --icons {} "
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
alias ctp="
 tmux list-panes -a -F '#{session_name}:#{window_index}.#{pane_index}.#{window_name}-#{pane_current_path}' | fzf-tmux -p | cut -d "." -f 1 |xargs tmux switch-client -t
 "
function tmuxswitch() {
 ct
};
zle -N tmuxswitch
bindkey '^[d' tmuxswitch

function paneswitch() {
 ctp
};
zle -N paneswitch 
bindkey '^[t' paneswitch


pop()
{
 tmux popup
};
zle -N pop
bindkey '^\' pop



# fdd() {
#   cd $(fd -H --type=d "$@" |fzf --preview " eza -laBb  --no-permissions --no-time --no-user {}")
# };

# fdz() {
#   fd -H --type=d "$!" | fzf --preview "eza -laBb  --no-permissions --no-time --no-user {}"
# }

fld() {
    cd $(fd -H --type=d "$1" | fzf --preview "eza -labB {}")

}
