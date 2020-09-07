let mapleader=";"

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/globals.vim

syntax on
set termguicolors
set background=dark
colorscheme hybrid_material

set shiftwidth=2
set tabstop=2
set expandtab

set autoindent
set smartindent

set number
set relativenumber

let g:LanguageClient_settingsPath = '~/.config/nvim/server.json'
let g:LanguageClient_serverCommands = {
                  \ 'go': ['gopls'],
                  \ 'python': ['pyls'],
                  \ 'yaml': ['yaml-language-server', '--stdio'],
                  \ 'bash': ['bash-language-server', 'start']
                  \ }


