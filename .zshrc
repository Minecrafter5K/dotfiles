[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/env.zsh ]] && source ~/.zsh/env.zsh
[[ -f ~/.zsh/znap.zsh ]] && source ~/.zsh/znap.zsh

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


# keybinds
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
bindkey '^H' backward-kill-word
bindkey '5~' kill-word

SAVEHIST=10000
HISTFILE=~/.zsh_history
