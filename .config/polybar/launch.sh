#!/usr/bin/env bash

# Polybar launch script
#
# Nuke already running instances of polybar
killall -q polybar

# Wait until the processes have been shut down.
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar called cribac
echo "---" | tee -a /tmp/polybar_cribac.log
polybar cribac 2>&1 | tee -a /tmp/polybar_cribac.log & disown
echo "Polybar cribac launched..."
