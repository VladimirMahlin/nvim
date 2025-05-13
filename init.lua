require("config.lazy")
local builtin = require('telescope.builtin')

-- disable arrow keys in normal mode
vim.api.nvim_set_keymap('n', '<Up>', '', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', '', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', '', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '', { noremap = true, silent = true })

-- show line numbers
vim.wo.number = true

-- telescope setup
vim.keymap.set('n', 'ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', 'fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', 'fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', 'fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- spaces instead of tab (for F#)
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
