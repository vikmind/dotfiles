# Vikmind's dotfiles

## Installation process

1. Install git and setup ssh
1. Install ``chezmoi``
1. ``git clone git@github.com:/vikmind/dotfiles.git``
1. ``chezmoit init && chezmoi cd && chezmoi apply``

## ``chezmoi.toml`` template

```
[data]
homebrew_github_api_token = "Homebrew token"
pfa_cli_api_token = "PFA cli token"
pfa_cli_url = "PFA cli url"
```
