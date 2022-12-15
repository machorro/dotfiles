# Flush Directory Service cache
function flush
    dscacheutil -flushcache; and killall -HUP mDNSResponder
end
