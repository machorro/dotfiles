function current_xcode
    set XCODE_PATH (xcode-select -p)
    set XCODE_VER (plutil -p $XCODE_PATH/../Info.plist | grep -e CFBundleShortVersionString | sed 's/[^0-9\.]*//g')
    echo "$XCODE_VER"
end