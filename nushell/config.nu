# config.nu
#
# Installed by:
# version = "0.107.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R

# Disable the welcome screen
$env.config = {
  show_banner: false
};


source ~/.cache/atuin/init.nu


$env.PROMPT_COMMAND = { starship prompt }
#########
# theme #
#########
source /home/noir/.config/nushell/catppuccin_mocha.nu

source /home/noir/.config/nushell/.zoxide.nu

# ---------------------------------------------------------------------
# General Aliases
# ---------------------------------------------------------------------


# Use bat for cat if available
# requires bat to be installed: `cargo install bat`
alias cat = bat --paging=never

# Common commands
alias grep = rg # requires ripgrep to be installed: `cargo install ripgrep`
alias find = fd # requires fd to be installed: `cargo install fd-find`

# ---------------------------------------------------------------------
# Git Aliases
# ---------------------------------------------------------------------


alias g = git
alias ga = git add
alias gaa = git add .
alias gau = git add -u
alias gc = git commit -m
alias gca = git commit -am
alias gco = git checkout
alias gcb = git checkout -b
alias gs = git status -s
alias gl = git log --oneline --graph --decorate
alias gp = git push
alias gpf = git push --force
alias gpl = git pull
alias gd = git diff
alias gds = git diff --staged
alias gr = git restore
alias grs = git restore --staged

# ---------------------------------------------------------------------
# Navigation Aliases
# ---------------------------------------------------------------------


# ---------------------------------------------------------------------
# Web Development Aliases
# ---------------------------------------------------------------------

# Package managers
alias ni = npm install
alias nis = npm install --save
alias nid = npm install --save-dev
alias nr = npm run
alias nt = npm test

alias yi = yarn install
alias ya = yarn add
alias yad = yarn add --dev
alias yr = yarn run
alias yt = yarn test

# Docker
alias d = docker
alias dc = docker-compose
alias dps = docker ps
alias dpa = docker ps -a
alias di = docker images
alias dr = docker run
alias drm = docker rm
alias drmi = docker rmi
alias dex = docker exec -it

# ---------------------------------------------------------------------
# System Aliases
# ---------------------------------------------------------------------

# Update the entire system (pacman, AUR, flatpak, cargo, npm)
def update [] {
    print "Updating pacman and AUR packages..."
    yay -Syu
    print "Updating flatpak packages..."
    flatpak update
    print "Updating cargo packages..."
    cargo install-update -a
    print "Updating global npm packages..."
    npm update -g
}

# ---------------------------------------------------------------------
# Useful Functions
# ---------------------------------------------------------------------

# Create a directory and change into it
def mcd [name: string] {
  mkdir $name
  cd $name
}

# Start a simple web server in the current directory
def server [port: int = 8080] {
  python -m http.server $port
}

# Lazygit
def lg [] {
  lazygit
}

# Lazydocker
def lzd [] {
  lazydocker
}
