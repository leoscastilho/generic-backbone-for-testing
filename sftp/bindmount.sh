#!/bin/bash
# File mounted as: /etc/sftp.d/bindmount.sh
# Just an example (make your own)

function bindmount() {
    if [ -d "$1" ]; then
        mkdir -p "$2"
    fi
    mount --bind $3 "$1" "$2"
}

# Remember permissions, you may have to fix them:
#chown -R rootuser: /home/rootuser/cdpna

# Mounts the FTP directories
#bindmount /data/tests/complete /cdpna/tests/complete
#bindmount /data/tests/inbound /cdpna/tests/inbound
#bindmount /data/tests/outbound /cdpna/tests/outbound
#bindmount /data/tests/work /cdpna/tests/work