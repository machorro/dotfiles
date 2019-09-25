set -x PATH ~/.rbenv/shims /usr/local/opt/coreutils/libexec/gnubin  /usr/local/bin /usr/bin /bin /usr/sbin /sbin /usr/local /usr/local/sbin 
# set rbenv before /usr/local/bin
set -x PATH $HOME/.rbenv/shims/ $PATH
set -x PATH $HOME/Library/Android/sdk/tools $PATH

# fuxor git to non-interactively merge commits
set -x GIT_MERGE_AUTOEDIT no

# Set where to install casks
set -x HOMEBREW_CASK_OPTS "--appdir=/Applications"

# Setup terminal, and turn on colors
set -x TERM xterm-256color
set -x LS_COLORS "di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34:su=0:sg=0:tw=0:ow=0:"

# Enable color in grep
set -x GREP_OPTIONS '--color=auto'
set -x GREP_COLOR '3;33'

set -x PAGER less --quit-if-one-screen --no-init -c
set -x EDITOR 'vim'

set -x LANG en_CA.UTF-8
set -x LC_CTYPE "en_CA.UTF-8"
set -x LC_MESSAGES "en_CA.UTF-8"
set -x LC_COLLATE C

# less with highlight
set hilite (which highlight)
set -x LESSOPEN "| $hilite %s --out-format xterm256 --line-numbers --quiet --force --style vampire"
set -x LESS " -R --ignore-case --raw-control-chars"

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

