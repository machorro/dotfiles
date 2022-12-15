function cleanupds
    find . -type f -name '*.DS_Store' -ls -exec /bin/rm {} \;
end
