call plug#begin()
" Base
Plug 'tpope/vim-sensible'

" Languages
Plug 'sheerun/vim-polyglot'
Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh',
      \ }
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" FZF
Plug 'junegunn/fzf.vim'

" Git & navigation
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yohannfra/Nvim-Switch-Buffer'

" Airline & themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'luochen1990/rainbow'

" Icons
Plug 'ryanoasis/vim-devicons'

call plug#end()

syntax on
colorscheme onedark

set signcolumn=yes
set termguicolors
set switchbuf=usetab
set number
set relativenumber
set cmdheight=2
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

let mapleader=";"

let g:rainbow_active = 1

let g:deoplete#enable_at_startup = 1

let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:NERDTreeChDirMode = 2  " Change cwd to parent node
let g:NERDTreeMinimalUI = 1  " Hide help text
let g:NERDTreeAutoDeleteBuffer = 1

let g:onedark_terminal_italics = 1

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'signature'


nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>t :SwitchBuffer<CR>

nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

function SetLSP()
  nnoremap <leader>ld :call LanguageClient#textDocument_definition()<CR>
  nnoremap <leader>lr :call LanguageClient#textDocument_rename()<CR>
  nnoremap <leader>lf :call LanguageClient#textDocument_formatting()<CR>
  nnoremap <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
  nnoremap <leader>lx :call LanguageClient#textDocument_references()<CR>
  nnoremap <leader>la :call LanguageClient_workspace_applyEdit()<CR>
  nnoremap <leader>lc :call LanguageClient#textDocument_completion()<CR>
  nnoremap <leader>lh :call LanguageClient#textDocument_hover()<CR>
  nnoremap <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
  nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>

  " Auto format on save
  autocmd BufWritePre * :call LanguageClient#textDocument_formatting_sync()
endfunction()


" Launch gopls when Go files are in use
let g:LanguageClient_serverCommands = {
      \ 'go': ['gopls'],
      \ 'python': ['pyls']
      \ }

" Add to the list as necessary
autocmd! FileType go,python call SetLSP()

