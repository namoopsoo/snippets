

clear Mac OS X from indexing a directory
=============

    Reference: http://apple.stackexchange.com/a/7135

    mdutil -i off /Volumes/yourUSBstick
    cd /Volumes/yourUSBstick
    rm -rf .{,_.}{fseventsd,Spotlight-V*,Trashes}
    mkdir .fseventsd
    touch .fseventsd/no_log .metadata_never_index .Trashes
    cd


