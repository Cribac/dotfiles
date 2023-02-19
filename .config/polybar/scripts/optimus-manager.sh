#!/usr/bin/env bash

# Script to get the current mode as single string from Nvidia Optimus Manager.
# @author https://github.com/cribac
# @version 0.1.1

optimus_modes=("integrated" "nvidia" "hybrid" "intel")

current_mode=$(optimus-manager --print-mode)

output_mode="n/a"

for mode in "${optimus_modes[@]}"
do
  if [[ $current_mode == *"$mode"* ]]; then
    output_mode=$mode
  fi
done

echo $output_mode

