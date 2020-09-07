nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>t :SwitchBuffer<CR>

nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" " Copy to clipboard
vnoremap <leader>y  "+y
nnoremap <leader>y  "+y

" " Paste from clipboard
nnoremap <leader>p "+p
vnoremap <leader>p "+p

nnoremap <leader>[d :call LanguageClient#textDocument_definition()<CR>
nnoremap <leader>[r :call LanguageClient#textDocument_rename()<CR>
nnoremap <leader>[f :call LanguageClient#textDocument_formatting()<CR>
nnoremap <leader>[t :call LanguageClient#textDocument_typeDefinition()<CR>
nnoremap <leader>[x :call LanguageClient#textDocument_references()<CR>
nnoremap <leader>[a :call LanguageClient_workspace_applyEdit()<CR>
nnoremap <leader>[c :call LanguageClient#textDocument_completion()<CR>
nnoremap <leader>[h :call LanguageClient#textDocument_hover()<CR>
nnoremap <leader>[s :call LanguageClient_textDocument_documentSymbol()<CR>
nnoremap <leader>[m :call LanguageClient_contextMenu()<CR>

" Auto format on save
autocmd BufWritePre * :call LanguageClient#textDocument_formatting_sync()

