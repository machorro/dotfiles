#!/bin/sh

echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
exec fish -l
fisher
