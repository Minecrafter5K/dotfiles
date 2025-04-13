[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/env.zsh ]] && source ~/.zsh/env.zsh
[[ -f ~/.zsh/znap.zsh ]] && source ~/.zsh/znap.zsh
[[ -f ~/.zsh/step_ssh_completions.zsh ]] && source ~/.zsh/step_ssh_completions.zsh

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


# keybinds
## ctrl/navigation
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
bindkey '^H' backward-kill-word
bindkey '5~' kill-word

## zsh-autocomplete
bindkey -M menuselect '^M'              .accept-line
bindkey               '^I'              menu-select
bindkey               "$terminfo[kcbt]" menu-select
bindkey -M menuselect '^I'              menu-complete
bindkey -M menuselect "$terminfo[kcbt]" reverse-menu-complete
bindkey -M menuselect  '^[[D' .backward-char  '^[OD' .backward-char
bindkey -M menuselect  '^[[C'  .forward-char  '^[OC'  .forward-char

# zsh-autosuggestion
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)


# completions
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'


# history
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
