#!/usr/bin/env bash
# Check if Tailscale is running, and prompt you to start it if not.

set -o errexit
set -o nounset



# Print a message in blue to stdout
print_info() {
    echo -e "\033[34m$1\033[0m"
}

# Print an error in red to stderr
print_error() {
    echo -e "\033[31m$1\033[0m" >&2
}

# Print a warning in yellow to stdout
print_warning() {
    echo -e "\033[33m$1\033[0m"
}



print_info "Checking if Tailscale is running…"

# Call the Tailscale CLI to check if Tailscale is running
#
# This usually returns one of two statuses: "Stopped" or "Running"
backend_state=$(
  /Applications/Tailscale.app/Contents/MacOS/Tailscale status --json \
    | jq -r .BackendState
)

if [[ "$backend_state" = "Running" ]]
then
  print_info "Tailscale is running!"
  exit 0
elif [[ "$backend_state" = "Stopped" ]]
then
  print_error "You need to start Tailscale!"
  exit 1
else
  print_warning "Unexpected BackendState from Tailscale CLI: $backend_state"
  exit 2
fi