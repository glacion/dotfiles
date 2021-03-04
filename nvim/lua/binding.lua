local opts = {
	noremap = true,
	silent = true,
}

vim.api.nvim_set_keymap("n", "<ESC>", "<cmd>noh<CR><ESC>", opts)

vim.api.nvim_set_keymap("n", "<A-n>", "<cmd>NvimTreeToggle<CR>", opts)

vim.api.nvim_set_keymap("n", "<A-w>", "<cmd>BufferClose<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-,>", "<cmd>BufferPrevious<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-.>", "<cmd>BufferNext<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-<>", "<cmd>BufferMovePrevious<CR>", opts)
vim.api.nvim_set_keymap("n", "<A->>", "<cmd>BufferMoveNext<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-m>", "<cmd>BufferPick<CR>", opts)

vim.api.nvim_set_keymap("n", "<A-h>", "<cmd>wincmd h<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-j>", "<cmd>wincmd j<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-k>", "<cmd>wincmd k<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-l>", "<cmd>wincmd l<CR>", opts)

vim.api.nvim_set_keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting_sync(nil, 1000)<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>h", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>d", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>s", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>dd", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>hh", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space><space>', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)

vim.api.nvim_set_keymap("n", "<leader>cc", "<Plug>kommentary_line_default", {})
vim.api.nvim_set_keymap("n", "<leader>c", "<Plug>kommentary_motion_default", {})
vim.api.nvim_set_keymap("v", "<leader>c", "<Plug>kommentary_visual_default", {})

vim.api.nvim_set_keymap("n", "<A-f>", "<cmd>Telescope find_files<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-g>", "<cmd>Telescope live_grep<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-b>", "<cmd>Telescope buffers<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-t>", "<cmd>Telescope help_tags<CR>", opts)
--[[
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
]]
