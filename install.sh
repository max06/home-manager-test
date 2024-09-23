#!/bin/bash

echo "FOOBAR"
env
echo "FOOBAZ"

nix run home-manager/master -- switch --flake ~/dotfiles#container --impure
