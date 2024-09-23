#!/bin/bash

echo "FOOBAR"
env
echo "FOOBAZ"

nix run home-manager/master --impure -- switch --flake ~/dotfiles#container
