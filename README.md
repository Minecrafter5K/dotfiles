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

Link all files:

```bash
cd dotfiles
stow .
```

Some setup:

```bash
sudo locale-gen de_DE.UTF-8
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
source ~/.zshrc
brew install zoxide bat
```

# brew for sudo/root

To use brew commands with sudo/root you need to add them to PATH:

```bash
sudo nano /etc/sudoers
```

After `Defaults  secure_path` add `/home/linuxbrew/.linuxbrew/bin`
