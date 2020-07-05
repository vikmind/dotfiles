set clipboard=unnamedplus

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set autoread

call plug#begin(stdpath('data') . '/plugged')

Plug 'tomtom/tcomment_vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'tpope/vim-surround'

Plug 'dart-lang/dart-vim-plugin', { 'for': 'dart' }

call plug#end()
