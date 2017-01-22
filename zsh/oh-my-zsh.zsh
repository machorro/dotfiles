# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="spaceship" 
# https://git.io/spaceship

# Auto update without asking
DISABLE_UPDATE_PROMPT=true


# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which formats would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh_reload brew colored-man-pages colorize cp jira pod osx)

source $ZSH/oh-my-zsh.sh

# PROMPT
SPACESHIP_PROMPT_SYMBOL='𝜉'
