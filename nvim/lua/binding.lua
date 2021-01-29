local opts = {
	noremap = true,
	silent = true,
}

-- Completion menu on ctrl+space
vim.api.nvim_set_keymap('i', '<C-Space>', '<C-x><C-o>', opts)

-- Move between panels with ctrl+hjkl
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w><C-j>', opts)
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w><C-k>', opts)
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w><C-l>', opts)
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w><C-h>', opts)

-- Navigation
vim.api.nvim_set_keymap('n', '<Leader>\'', '<cmd>FZF<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader><Leader>', '<cmd>w|bd<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>\\', '<cmd>Ag<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>[', '<cmd>tabprevious<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>]', '<cmd>tabNext<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>l', '<cmd>bprev<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>k', '<cmd>bnext<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>n', '<cmd>NvimTreeToggle<CR>', opts)

-- Deleting with d
vim.api.nvim_set_keymap('n', 'd', '"_d', opts)
vim.api.nvim_set_keymap('n', 'D', '"_D', opts)
vim.api.nvim_set_keymap('v', 'D', '"_D', opts)

-- Indentation controls
vim.api.nvim_set_keymap('n', '<Tab>', '>>', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', '<<', {})
vim.api.nvim_set_keymap('i', '<S-Tab>', '<Esc><<i', {})

-- LSP
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting_sync(nil, 1000)<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>h', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)

--[[
vim.api.nvim_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
vim.api.nvim_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
]]

