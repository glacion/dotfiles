call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'jiangmiao/auto-pairs'

Plug 'sheerun/vim-polyglot'
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yohannfra/Nvim-Switch-Buffer'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'
Plug 'kristijanhusak/vim-hybrid-material'

Plug 'ryanoasis/vim-devicons'

call plug#end()


