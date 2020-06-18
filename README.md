# Vikmind's dotfiles

Currently I am using this config on three machines:

- Manjaro desktop (XFCE edition originally)
- X230 Thinkpad with Arch
- 2012 MBP

## Setup

1. Install git and setup ssh
1. Install ``chezmoi``
1. ``git clone git@github.com:/vikmind/dotfiles.git``
1. ``chezmoi init && chezmoi cd && chezmoi apply``

### ``~/.config/chezmoi/chezmoi.toml`` template

```toml
[data]
homebrew_github_api_token = "Homebrew token for MacOS"
```

## Arch Linux configuration

Arch was installed using the [Arch wiki guide](https://wiki.archlinux.org/index.php/Installation_guide).
``/home`` is located on separated partition with
[dm-crypt](https://wiki.archlinux.org/index.php/Dm-crypt) encryption.

### Base packages

Install [``yay``](https://www.ostechnix.com/yay-found-yet-another-reliable-aur-helper/)

```shell
yay -S vim
```

```shell
yay -s xorg xorg-server xorg-init i3-wm i3status
```

```shell
yay -S openssh openssl antibody zsh chezmoi enpass-bin fzf ripgrep bat tmux yarn
```

### [Thinkpad recommendations](https://wiki.archlinux.org/index.php/Lenovo_ThinkPad_X230):

- Screen
- TLP for battery management
- [Fingerprint GUI](https://wiki.archlinux.org/index.php/Fingerprint_GUI) Command for starting polkit manager ``sudo
  /usr/lib/fingerprint-gui/fingerprint-polkit-agent -d``

## .vimrc brief description

Main plugins:

- ``Raimondi/delimitMate`` For auto-closing and positioning of cursor inside brackets
- ``tomtom/tcomment_vim`` Commenting
- ``tpope/vim-surround`` Working with surroundings, like brackets and tags
- ``scrooloose/nerdtree`` Nice file browser
- ``junegunn/fzf`` fzf and ripgrep search tools integration: fuzzy search by filename or text inside files
- ``airblade/vim-gitgutter`` Mark git status of individual lines
- ``neoclide/coc.nvim`` Autocmplete and linting engine
- ``vim-airline/vim-airline`` Status line
- ``editorconfig/editorconfig-vim`` https://editorconfig.org

Language specific:

```vimscript
'kana/vim-textobj-user'
'nelstrom/vim-textobj-rubyblock'
'vim-ruby/vim-ruby'

'dart-lang/dart-vim-plugin'
'thosakwe/vim-flutter'
'elzr/vim-json'
'calviken/vim-gdscript3'

'othree/html5.vim'
'cakebaker/scss-syntax.vim'
'jelera/vim-javascript-syntax'
'mxw/vim-jsx'
'hail2u/vim-css3-syntax'
'posva/vim-vue'
'ap/vim-css-color'
'alvan/vim-closetag'
'mattn/emmet-vim'
```
