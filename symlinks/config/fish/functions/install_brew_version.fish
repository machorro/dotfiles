set fail 1

function read_confirm --description 'Ask the user for confirmation' --argument prompt
  if test -z "$prompt"
    set prompt "Continue?"
  end 

  while true
    read -p 'set_color green; echo -n "$prompt [y/N]: "; set_color normal' -l confirm

    switch $confirm
      case Y y 
          return 0
      case '' N n 
          return 1
    end 
  end 
end

function install_brew_version \
  --description 'Brew install from a specific hash, \
  run brew log <formula_name> to find the hash you want to install' \
  --argument-names formula hash

  set error 0
  if test -z "$formula"
    set_color red; echo 'Missing formula name'; set_color normal
    set error (math $error + 1)
  end
  if test -z "$hash"
    set_color red; echo 'Missing hash'; set_color normal
    set error (math $error + 1)
  end

  if test $error -gt 0; return $fail; end;

  brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/$hash/Formula/$formula.rb

  if read_confirm 'Pin version?'
    brew pin $formula
  end
end
