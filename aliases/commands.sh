function my_command() {
  epf
}
zle -N my_command
bindkey '^[e' my_command


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
