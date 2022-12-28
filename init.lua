

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
	use 'navarasu/onedark.nvim'
	use { 'ellisonleao/gruvbox.nvim' }

	use { 'junegunn/fzf', run = ":call fzf#install()" }
	use { 'junegunn/fzf.vim' }


	use 'neovim/nvim-lspconfig'

	use({
		'rose-pine/neovim',
		as = 'rose-pine',
	})

	use 'tanvirtin/monokai.nvim'

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

	use {
  'nvim-tree/nvim-tree.lua',
 	 requires = {
    	'nvim-tree/nvim-web-devicons', -- optional, for file icons
  	},
  	tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	use {
 	 'nvim-lualine/lualine.nvim',
 	 requires = { 'kyazdani42/nvim-web-devicons', opt = true }
 	}

	use 'lukas-reineke/lsp-format.nvim'

	--treesitter
	use('nvim-treesitter/nvim-treesitter', {run=':TSUpdate'})

  if install_plugins then
    require('packer').sync()
  end

end)

if install_plugins then
  return
end

vim.opt.termguicolors = true
--vim.cmd('colorscheme gruvbox')
--require('gruvbox').load()
--vim.cmd('colorscheme molokai')
--vim.colorscheme = 'rose-pine'
-- nvim-tree
require("nvim-tree").setup()
require('onedark').setup()

require('core/status-line')
require('plugins/treesitter')
require('core/keymaps')
require('core/colors')
require('core/options')
require('lsp/lspconfig')
require('plugins/nvim-cmp')
-- flutter-tools
require("flutter-tools").setup{}
