vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
{
	'nvim-lua/plenary.nvim',
	"nvim-telescope/telescope.nvim", tag = '0.1.2', dependencies = { 'nvim-lua/plenary.nvim' },
	"neovim/nvim-lspconfig",
	'hrsh7th/cmp-vsnip',
	'hrsh7th/vim-vsnip',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/nvim-cmp', dependencies = { 'hrsh7th/cmp-vsnip', 'hrsh7th/vim-vsnip', 'neovim/nvim-lspconfig'},
	'tpope/vim-surround',
	'tpope/vim-fugitive',
	'tpope/vim-sensible',
	'tpope/vim-commentary',
	{
	  'folke/tokyonight.nvim',
	  lazy = false,
	  priority = 1000,
	  opts = {},
	},
	'nvim-tree/nvim-tree.lua'
}
)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

require('user.settings')
require('user.lsp')
require('user.nvimcmp')
require('user.nvimtree')
