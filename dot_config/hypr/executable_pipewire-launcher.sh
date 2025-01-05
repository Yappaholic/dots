#!/usr/bin/bash
restart () {
    echo "Terminating PipeWire processes ..."
    pkill -u "${USER}" -x pipewire\|wireplumber 1>/dev/null 2>&1

    # pidwait was renamed to pwait w/ procps-4 (bug #914030)
    if command -v pidwait > /dev/null ; then
        pidwait -u "${USER}" -x pipewire\|wireplumber
    elif command -v pwait > /dev/null ; then
        pwait -u "${USER}" -x pipewire\|wireplumber
    fi

    echo "PipeWire terminated."
}

if [ "${#}" -gt 0 ]
then
    if [ "${1}" = 'restart' ]
    then
	restart
    else
        echo "Unrecognised argument." >&2
        echo "Usage: gentoo-pipewire-launcher [restart]" >&2
	exit 1
    fi
fi

if pgrep -u "${USER}" -x pipewire\|wireplumber 1>/dev/null 2>&1
then
    echo "PipeWire already running, exiting." >&2
    echo "(Use 'gentoo-pipewire-launcher restart' to restart PipeWire and WirePlumber.)" >&2
    exit 1
fi

exec pipewire
