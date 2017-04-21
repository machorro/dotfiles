function lessh
    less -m -N -g -i -J --line-numbers --underline-special $argv
end

function more
    lessh $argv
end
