function hide
    defaults write com.apple.finder AppleShowAllFiles -bool false; and killall Finder
end
