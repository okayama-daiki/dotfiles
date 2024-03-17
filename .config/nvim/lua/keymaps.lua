local keymap = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }
local expr_opts = { expr = true, noremap = true, silent = true, replace_keycodes = false }

keymap('i', 'jj', '<ESC>', opts)

keymap('i', '<C-Space>', 'coc#refresh()', expr_opts)
keymap('i', '<Tab>', 'pumvisible() ? "\\<C-y>" : "<Tab>"', expr_opts)

keymap('n', '<leader>ff', ":Telescope find_files<CR>", opts)
keymap('n', '<leader>fg', ":Telescope live_grep<CR>", opts)
keymap('n', '<leader>fb', ":Telescope buffers<CR>", opts)
keymap('n', '<leader>fh', ":Telescope help_tags<CR>", opts)
