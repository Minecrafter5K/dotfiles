# Download Znap, if it's not there yet.
[[ -r ~/.znap-repos/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/.znap-repos/znap
source ~/.znap-repos/znap/znap.zsh  # Start Znap

# Starship
znap eval starship 'starship init zsh --print-full-init'
znap prompt

# Plugins
znap source marlonrichert/zsh-autocomplete
znap source zsh-users/zsh-autosuggestions
znap eval zoxide 'zoxide init zsh --cmd cd'
if type "mise" > /dev/null; then
  znap eval mise 'mise activate zsh'
fi
## OMZ
znap source ohmyzsh/ohmyzsh plugins/sudo
znap source ohmyzsh/ohmyzsh plugins/command-not-found
znap source ohmyzsh/ohmyzsh plugins/ssh-agent


# Completions
znap install zsh-users/zsh-completions

# other stuff
znap eval brew-shellenv '/home/linuxbrew/.linuxbrew/bin/brew shellenv'
if type "step" > /dev/null; then
  znap eval step_ssh_completions ~/.zsh/step_ssh_completions.zsh
fi
