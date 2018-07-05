" On azerty keyboards using \ as the leader key is totally unpractical
let mapleader='<'

" Remap terminal exit to esc
tnoremap <Esc> <C-\><C-n>

" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

" List of all the plugins to install
" To initiate the install use :PlugInstall

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' } " deoplete for javascript
" Plug 'landaire/deoplete-d' " deoplete plugin for d language

" You can use cs<Char A><Char B> to replace the delimiter A by B
" You can use ds<Char A> to remove the delimiter A
" By default using opening char will add spaces, using ending char will not
" Use yss<Char A> to surround with A
" Use ysiw<Char A> to surround only the current word with A
Plug 'tpope/vim-surround'

Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'

Plug 'airblade/vim-gitgutter'
" Plug 'codeindulgence/vim-tig' " This plugin is no use until better terminal
                                " windows are made for nvim

call plug#end()


" Base settings
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1
set fileformat=unix
set fileformats=unix,dos,mac
filetype on
filetype plugin on
filetype plugin indent on
syntax on

set smartindent
set expandtab	" Tab to spaces
set tabstop=4
set shiftwidth=4
" set foldenable
" set foldmethod=indent
" set foldlevel=99
set ignorecase	" Ignore case when searching
set smartcase	" If searching text contains uppercase then we take it into account

set number
set nowrap

colorscheme gruvbox
set background=dark

" Start deoplete
" Could also be done by using call deoplete#enable()
let g:deoplete#enable_at_startup = 1

" Configuration of deoplete-jedi
" g:deoplete#sources#jedi#extra_path:  " A list of extra paths to add to sys.path when performing completions.
" g:deoplete#sources#jedi#server_timeout  " Timeout to avoid infinite loops, default value = 10

" Configuration of deoplete-d
" let g:deoplete#sources#d#dcd_client_binary = '' " location of the dcd-client on your system. This is optional and will be found in your $PATH if not set
" let g:deoplete#sources#d#dcd_server_binary = '' " location of the dcd-server on your system. This is optional and will be found in your $PATH if not set
" let g:deoplete#sources#d#dcd_server_autostart = 1 " whether or not dcd-server should be auto-started

" Configuration of deoplete-ternjs
" let g:deoplete#sources#ternjs#tern_bin = '/path/to/tern_bin'
" let g:deoplete#sources#ternjs#timeout = 1
"
" let g:deoplete#sources#ternjs#case_insensitive = 1

" Configuration for vim-tig
" let g:tig_default_command = ''
" Mapping ctrl + g to tig
map <C-G> :terminal tig --max-count=1000<Cr>
" Mapping ctrl + b to tig blame
map <C-B> :terminal tig blame %<Cr>

" Mapping useful functionalities
map <C-T> :NERDTreeToggle<Cr>
map <C-F> :grep -F '' **/*
map <C-X> :bd<Cr>

