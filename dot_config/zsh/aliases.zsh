# Enable aliases to be sudo’ed
alias sudo="sudo "

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"

# Shortcuts
alias ls="ls --color"

# Bat: https://github.com/sharkdp/bat
alias ccat="/usr/local/opt/coreutils/libexec/gnubin/cat"
command -v bat >/dev/null 2>&1 && alias cat="bat --style=numbers,changes"

# Download file and save it with filename of remote file
alias get="curl -O -L"

# Make a directory and cd to it
take() {
  mkdir -p $@ && cd ${@:$#}
}
