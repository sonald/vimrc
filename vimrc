" filetype off

set nu
syntax on
set nocompatible
set nobackup

filetype plugin on
filetype indent on

let mapleader = ';'

"ruby
" pathogen
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
" call pathogen#helptags()

" command-t
" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>
nnoremap <silent> <Leader>bt :CommandT<CR>
nnoremap <silent> <Leader>bl :CommandTBuffer<CR>

map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>

" clang_complete settings
let g:clang_auto_select=1
let g:clang_complete_auto=0
let g:clang_complete_copen=1
let g:clang_hl_errors=1
let g:clang_periodic_quickfix=0
let g:clang_snippets=1
let g:clang_snippets_engine="clang_complete"
let g:clang_conceal_snippets=1
let g:clang_exec="clang"
let g:clang_user_options=""
let g:clang_auto_user_options="path,.clang_complete"
let g:clang_use_library=1
let g:clang_library_path="/usr/lib"
let g:clang_sort_algo="priority"
let g:clang_complete_macros=1
let g:clang_complete_patterns=0
nnoremap <Leader>q :call g:ClangUpdateQuickFix()<CR>

let g:clic_filename="index.db"
nnoremap <Leader>r :call ClangGetReferences()<CR>
nnoremap <Leader>d :call ClangGetDeclarations()<CR>
nnoremap <Leader>s :call ClangGetSubclasses()<CR>

" tagbar
nmap <F8> :TagbarToggle<CR>

nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>bp :bp<CR>
nnoremap <Leader>bd :bd<CR>

" a.vim
nnoremap <Leader>AS :AS<CR>
nnoremap <Leader>AV :AV<CR>
nnoremap <Leader>A :A<CR>

"set modelines=0
 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
" set relativenumber
set undofile
set autoread  " auto re-read disk-changed file

" nnoremap / /\v
" vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" jscomplete
autocmd FileType javascript
  \ :setl omnifunc=jscomplete#CompleteJS

" make area reselected after (de)indentation
vnoremap < <gv
vnoremap > >gv

" treat wrapped lines as seprated
nnoremap j gj
nnoremap k gk

"au BufRead,BufNewFile *.go set filetype=go

" vimOrganizer
au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
au BufEnter *.org call org#SetOrgFileType()

"" powerline
set guifont=Terminus\ for\ Powerline
set laststatus=2
set encoding=utf-8
let g:Powerline_symbols = 'fancy'
"let g:Powerline_symbols = 'unicode'
let g:Powerline_colorscheme = 'skwp'

"set cul
"highlight CursorLine term=bold cterm=bold ctermbg=0 gui=bold guibg=DarkGrey
"highlight Search term=reverse cterm=reverse ctermbg=DarkGrey gui=reverse guibg=DarkGrey
"highlight MatchParen ctermfg=cyan ctermbg=black guibg=white guifg=DarkCyan

" set background=dark
colorscheme Tomorrow-Night-Bright

