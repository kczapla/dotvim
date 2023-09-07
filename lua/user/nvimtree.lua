vim.opt.termguicolors = true

require('nvim-tree').setup()

nvimtreeapi = require('nvim-tree.api')

vim.keymap.set('n', '<leader>b', nvimtreeapi.tree.toggle, {})
