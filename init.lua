
require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
	use 'navarasu/onedark.nvim'
	use { 'ellisonleao/gruvbox.nvim' }

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}


	use 'neovim/nvim-lspconfig'

	use({
		'rose-pine/neovim',
		as = 'rose-pine',
	})

	use 'tanvirtin/monokai.nvim'
	use 'github/copilot.vim'

	
	use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    };
  }


	--comment.nvim
	use 'terrortylor/nvim-comment'

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
-- nvim-tree
require("nvim-tree").setup()
require('onedark').setup()
require('nvim_comment').setup({
	line_mapping = '<C-/>',
	operator_mapping = "<C-'>"
})

require('core/status-line')
require('plugins/treesitter')
require('core/keymaps')
require('core/colors')
require('plugins/telescope')
require('core/options')
require('lsp/lspconfig')
require('plugins/nvim-cmp')
-- flutter-tools
require("flutter-tools").setup{}

-- require('rose-pine').setup({
	-- variant = 'moon',
-- @usage 'main' | 'moon'
-- dark_variant = 'main',
-- 	bold_vert_split = false,
-- dim_nc_background = false,
-- disable_background = false,
-- disable_float_background = false,
-- disable_italics = false,
--
-- --- @usage string hex value or named color from rosepinetheme.com/palette
-- groups = {
-- 	background = 'base',
-- 	panel = 'surface',
-- 	border = 'highlight_med',
-- 	comment = 'muted',
-- 	link = 'iris',
-- 	punctuation = 'subtle',
--
-- 	error = 'love',
-- 	hint = 'iris',
-- 	info = 'foam',
-- 	warn = 'gold',
--
-- 	headings = {
-- 		h1 = 'iris',
-- 		h2 = 'foam',
-- 		h3 = 'rose',
-- 		h4 = 'gold',
-- 		h5 = 'pine',
-- 		h6 = 'foam',
-- 	}
	-- or set all headings at once
	-- headings = 'subtle'
-- },

-- Change specific vim highlight groups
-- highlight_groups = {
-- 	ColorColumn = { bg = 'rose' }
-- }
-- })


--require('gruvbox').load()

-- set colorscheme after options
vim.cmd('colorscheme rose-pine')
