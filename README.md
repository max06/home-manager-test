Requirements:

Set in your user profile:

```json
    "dev.containers.defaultFeatures": {
        "ghcr.io/devcontainers/features/nix:1.3": {
            "extraNixConfig": "experimental-features = nix-command flakes"
        }
    },
    "dotfiles.repository": "max06/home-manager-test",
    "dotfiles.targetPath": "~/dotfiles"
```

