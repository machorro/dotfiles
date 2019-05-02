# .zshrc
source ~/.dotfiles/zsh/env.zsh
source ~/.dotfiles/zsh/path.zsh
source ~/.dotfiles/zsh/aliases.zsh
source ~/.dotfiles/zsh/completions.zsh
source ~/.dotfiles/zsh/bindings.zsh
source ~/.dotfiles/zsh/colored-man-pages.zsh

# Prompt
autoload -U promptinit; promptinit
prompt pure

# Primary prompt with additional tweaks.
typeset -g PROMPT='%(?.%F{white}.%F{red})❯%f '

# cd by typing directory name if it's not a command
setopt auto_cd

# Do not overwrite files when redirecting using ">". Note that you can still override this with ">|"
set -o noclobber

# Enable extended glob
setopt extendedglob

# Remove older duplicate entries from history
setopt hist_ignore_all_dups
# Remove superfluous blanks from history items
setopt hist_reduce_blanks
# Show command with history expansion to user before running it
setopt hist_verify
# share history between different instances of the shell
setopt share_history

# Enable Ctrl-x-e to edit command line
autoload -U edit-command-line

# VI style:
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# Terminal title
DISABLE_AUTO_TITLE="true"
function _set_terminal_title() {
	local title="$(basename "$PWD")"
	if [[ -n $SSH_CONNECTION ]]; then
		title="$title \xE2\x80\x94 $HOSTNAME"
	fi
	echo -ne "\033];$title\007"
}
precmd_functions+=(_set_terminal_title)

# Save command history to disk
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE

# Enable zsh-history-substring-search: https://github.com/zsh-users/zsh-history-substring-search
[ -f /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh ] && source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# Enable zsh-autossugestions: https://github.com/zsh-users/zsh-autosuggestions
[ -f /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh


# Enable zsh-syntax-highlighting: https://github.com/zsh-users/zsh-syntax-highlighting
[ -f /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

