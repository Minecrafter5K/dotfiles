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
znap eval zoxide 'zoxide init zsh --cmd cd'
if ! type "mise" > /dev/null; then
  znap eval mise 'mise activate zsh'
fi

# Completions
znap install zsh-users/zsh-completions
