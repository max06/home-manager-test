#!/bin/bash
env

nix run home-manager/master --impure -- switch --flake ~/dotfiles#container
