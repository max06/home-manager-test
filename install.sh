#!/bin/bash

# Check if we're in a docker container
if [ ! -f /.dockerenv ]; then
  echo "Not running inside a Docker container. Exiting..."
  exit 1
fi

# Change working directory
cd ${HOME}/dotfiles

# Define the output Nix file path
nix_file="${HOME}/dotfiles/currentUser.nix"

# Create the Nix file with user and home directory information
cat <<EOF > "$nix_file"
{
  user = "${USER}";
  home = "${HOME}";
}
EOF

# Add file to git (because flakes only use files in the worktree)
git add currentUser.nix

# Run home-manager
nix run home-manager/master -- switch --flake ~/dotfiles#container
