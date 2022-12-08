

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'joshdick/onedark.vim'
	use { 'ellisonleao/gruvbox.nvim' }
	use 'neovim/nvim-lspconfig'

	use { 'junegunn/fzf', run = ":call fzf#install()" }
	use { 'junegunn/fzf.vim' }

	use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    },
  }

	use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}

  if install_plugins then
    require('packer').sync()
  end

end)

if install_plugins then
  return
end

vim.opt.termguicolors = true
vim.cmd('colorscheme gruvbox')

-- flutter-tools
require("flutter-tools").setup{}

require('core/keymaps')
require('core/options')
require('lsp/lspconfig')
require('plugins/nvim-cmp')
