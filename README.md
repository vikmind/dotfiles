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

## Arch configuration adventures

Installation by the [Arch wiki guide](https://wiki.archlinux.org/index.php/Installation_guide).
``/home`` is located on separated partition with [dm-crypt](https://wiki.archlinux.org/index.php/Dm-crypt) encryption.

### Base packages

Install [``yay``](https://www.ostechnix.com/yay-found-yet-another-reliable-aur-helper/)
```
yay -S vim
```

### Xorg and i3

```
yay -s xorg xorg-server xorg-init i3-wm i3status
```

### Other packages
```
yay -S openssh openssl antibody zsh chezmoi enpass-bin fzf ripgrep bat tmux yarn
```

### Device specific, see [Thinkpad recommendation](https://wiki.archlinux.org/index.php/Lenovo_ThinkPad_X230):

- Screen
- TLP
- [Fingerprint GUI](https://wiki.archlinux.org/index.php/Fingerprint_GUI) Command for starting polkit manager ``sudo
  /usr/lib/fingerprint-gui/fingerprint-polkit-agent -d``

