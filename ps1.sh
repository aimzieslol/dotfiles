#!/bin/sh

get_distro_name() {
  if [ -n "$WSL_DISTRO_NAME" ]; then
    printf "%s" "$WSL_DISTRO_NAME"  # Use WSL_DISTRO_NAME if available
  else
    distro_name=$(lsb_release -i 2>/dev/null | awk '{print $2}')
    if [ -z "$distro_name" ]; then
      echo "Error: Could not determine distro name." >&2
      return 1
    fi
    printf "%s" "$distro_name"
  fi
}

distro_name=$(get_distro_name)
if [ $? -ne 0 ]; then
  exit 1  # Exit if distro name detection fails
fi

# Directly set PS1 (Recommended approach)
PS1="\[\e[32m\][$distro_name]\[\e[0m\] \u@\h:\w\$ "
export PS1
