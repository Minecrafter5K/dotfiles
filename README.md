# tristanjockel's dotfiles

# Quickstart

Install needed dependencies:

```bash
sudo apt install -y git stow
```

Clone the repository:

```bash
git clone https://github.com/Minecrafter5K/dotfiles.git
```

Some setup:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sudo locale-gen de_DE.UTF-8
brew install zoxide bat
```

Link all files:

```bash
cd dotfiles
stow .
```
