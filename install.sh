#!/bin/bash
nix run home-manager/master --impure -- switch --flake ~/dotfiles
