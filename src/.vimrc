" Load vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My bundles
" UI
Bundle 'Lokaltog/powerline'
Bundle 'altercation/vim-colors-solarized'

" General editing
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-endwise'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tomtom/tcomment_vim'
Bundle 'rking/ag.vim'
Bundle 'matchit.zip'
Bundle 'Raimondi/delimitMate'
Bundle 'kana/vim-textobj-user'

" VIM enhancements
Bundle 'tpope/vim-dispatch'

" Completion
Bundle 'Valloric/YouCompleteMe'
let g:ycm_collect_identifiers_from_tags_files = 1

" Linting
Bundle 'scrooloose/syntastic'

" VCS
Bundle 'tpope/vim-fugitive'
Bundle 'gregsexton/gitv'

" Handling files
Bundle 'scrooloose/nerdtree'
Bundle 'wincent/Command-T'
let g:CommandTAlwaysShowDotFiles = 1

" Ruby and Rails
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-bundler'
Bundle 'thoughtbot/vim-rspec'
let g:rspec_command = 'Dispatch rspec {spec}'
Bundle 'nelstrom/vim-textobj-rubyblock'

" HTML
Bundle 'mattn/zencoding-vim'

" HAML
Bundle 'tpope/vim-haml'

" Coffeescript
Bundle 'kchmck/vim-coffee-script'

" Livescript
Bundle 'gkz/vim-ls'

" Clojure
Bundle 'tpope/vim-fireplace'
Bundle 'guns/vim-clojure-static'

filetype plugin indent on " required!

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Activate powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" Enable special characters in powerline
let g:Powerline_symbols = 'fancy'

" Hide the now reduntant mode display (e.g. --INSERT--)
set noshowmode

" Always show status line
set laststatus=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = " "

inoremap jj <Esc>
inoremap <Esc> <Nop>

nnoremap , :

noremap <C-n> :NERDTreeToggle<CR>

" Move through windows
noremap <C-h> :wincmd h<CR>
noremap <C-j> :wincmd j<CR>
noremap <C-k> :wincmd k<CR>
noremap <C-l> :wincmd l<CR>

" Move through tabs
noremap <C-Left> :tabp<CR>
noremap <C-Right> :tabn<CR>

" Run rspec
nnoremap <Leader>f :call RunNearestSpec()<CR>
nnoremap <Leader>d :call RunCurrentSpecFile()<CR>
nnoremap <Leader>r :call RunLastSpec()<CR>
nnoremap <Leader>g :call RunAllSpecs()<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Enable local .vimrcs
set exrc
set secure


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make VIM use utf-8 characters
set encoding=utf8

" Show line numbers
set number

" Highlight the current line
set cursorline

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Height of the command bar
set cmdheight=1

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" No annoying sound on errors
set noerrorbells
set novisualbell


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Manually enable 256 colors in gnome-terminal
if $COLORTERM == 'gnome-terminal'
  set t_Co=16
endif

set background=dark
colorscheme solarized


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

" Reload files when changed from outside vim
set autoread

" Use unix line endings
set fileformats=unix,dos,mac

" Save files in utf-8
set fileencoding=utf-8


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text formatting/editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Do not wrap lines
set nowrap

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HTML
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tags that are not indented by default
let g:html_indent_inctags = 'html,head,body,title'
