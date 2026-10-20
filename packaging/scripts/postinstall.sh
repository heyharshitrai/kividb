#!/bin/sh
set -e

if [ -d /run/systemd/system ]; then
    systemctl daemon-reload >/dev/null 2>&1 || true
    systemctl enable --now kividb.service >/dev/null 2>&1 ||
        echo "kividb: installed but did not start; see: journalctl -u kividb" >&2
fi

exit 0
