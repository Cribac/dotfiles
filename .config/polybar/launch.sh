#!/usr/bin/env bash

# Polybar launch script
#
# Nuke already running instances of polybar
killall -q polybar

# Launch bar called cribac
echo "---" | tee -a /tmp/polybar_cribac.log
polybar cribac 2>&1 | tee -a /tmp/polybar_cribac.log & disown
echo "Polybar cribac launched..."
