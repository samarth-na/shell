cd $( fd -H --type d|fzf-tmux --reverse -p -w --preview " exa -laBb --colour-scale --no-permissions --no-time --no-user {}")
fd --hidden --type f --max-depth=1 -H | fzf-tmux -p --reverse | xargs -o nvim

