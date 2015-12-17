" ----------
" Vim Config
" ----------

set shell=/bin/zsh

set encoding=utf-8
set nocompatible                " Don't maintain compatibility with vi
filetype off                    " Avoid a Vim/Pathogen bug

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'VundleVim/Vundle.vim'

Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rking/ag.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'tomtom/tcomment_vim'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdtree'

" Ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-bundler'
Bundle 'ngmy/vim-rubocop'

"   HTML
Plugin 'mustache/vim-mustache-handlebars'
Bundle 'othree/html5.vim'
Bundle 'indenthtml.vim'

" Go
Bundle 'fatih/vim-go'

"   JavaScript
Plugin 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'leshill/vim-json'

" Other langs
Bundle 'msanders/cocoa.vim'
Bundle 'mutewinter/nginx.vim'
Bundle 'timcharper/textile.vim'
Bundle 'mutewinter/vim-tmux'
Bundle 'plasticboy/vim-markdown'
Bundle 'groenewege/vim-less'
Bundle 'wavded/vim-stylus'
Bundle 'tpope/vim-cucumber'
Bundle 'wting/rust.vim'
Bundle "ekalinin/Dockerfile.vim"
Bundle 'derekwyatt/vim-scala'
Bundle 'elixir-lang/vim-elixir'

" MatchIt
Bundle 'matchit.zip'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'

Bundle 'bkad/vim-terraform'

call vundle#end()

syntax on                       " Highlight known syntaxes
filetype plugin indent on
set clipboard=unnamed

set backup
set noswapfile

set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files



" Source initialization files
" ---------------------------

set t_Co=256
runtime! init/**.vim


" Machine-local vim settings - keep this at the end
" --------------------------
silent! source ~/.vimrc.local
