set encoding=utf-8

" vim-plug
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)

call plug#begin('~/.vim/plugged')

" UI
Plug 'crusoexia/vim-monokai'
Plug 'dracula/vim'
Plug 'itchyny/lightline.vim'

" Syntastic
Plug 'scrooloose/syntastic'

" Search
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'mileszs/ack.vim'
Plug 'a.vim'

" Initialize plugin system
call plug#end()


" Configuration


set guifont=SourceCodePro-Regular:h16    " Font family and font size.
set antialias                     " MacVim: smooth fonts.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set number                        " Show line numbers.
set ruler                         " Show cursor position.
set cursorline                    " Highlight the line of the cursor

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set expandtab                     " Use spaces, not tabs
set tabstop=4                     " A tab is two spaces
set shiftwidth=4                  " An autoindent (with <<) is two spaces

set spelllang=en_ca

" Color Schemes
syntax on
"" colorscheme monokai
colorscheme dracula 
set t_Co=256  " vim-monokai now only support 256 colours in terminal.

" removed curly braces error for obj-c blocks
let c_no_curly_error = 1

" ctrl-p settings
" http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>F :CtrlP %%<cr>
map <leader>b :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = { 'dir': '\v(build|Pods|node_modules|components|bundle|vendor|_site|bin)$' }
let g:ctrlp_root_markers = ['.git', '.ctrlp']

" clear the search buffer when hitting return
nnoremap <CR> :nohlsearch<cr>

" a.vim setting for objc
let g:alternateExtensions_m = "h"
let g:alternateExtensions_h = "m"

set splitright
set splitbelow

function! SyntaxItem()
  return synIDattr(synID(line("."),col("."),1),"name")
endfunction

" status linen settings
if has("statusline") && !&cp
  set laststatus=2              " always show the status bar
  set statusline=%f\ %m\ %r     " filename, modified, readonly
 " set statusline+=%{fugitive#statusline()}
  set statusline+=\ %l/%L[%p%%] " current line/total lines
  set statusline+=\ %v[0x%B]    " current column [hex char]
  set statusline+=%{SyntaxItem()}
endif

" smart square brackets for objc methods
imap <C-]> <Esc>yss]$i

" :Gstatus
nmap <leader>g :Gstatus<CR>

" Code completion
inoremap <C-k> <C-x><C-u>

" ligthline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"x":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ }
      \ }

" trailing whitespace
set list listchars=tab:→\ ,trail:·
set list

" syntastic
let g:syntastic_enable_signs  = 1
let g:syntastic_auto_loc_list = 0
" let g:syntastic_ruby_checkers = ['rubocop']
let syntastic_mode_map = { 'passive_filetypes': ['html'] }
