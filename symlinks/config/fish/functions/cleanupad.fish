function cleanupad
    find . -type d -name '.AppleD*' -ls -exec /bin/rm -r {} \;
end
