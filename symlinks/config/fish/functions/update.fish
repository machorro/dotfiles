# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
function update
    sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; sudo gem cleanup
end
