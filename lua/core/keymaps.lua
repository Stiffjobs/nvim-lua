
local function map(mode, lhs, rhs, opts)
	local options = { noremap=true, silent=true }
	if opts then
		options = vim.tbl_extend('force', options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '

map('i', 'jj', '<Esc>')


-- Window moving
map('n', '<leader>h', '<C-w>h')
map('n', '<leader>j', '<C-w>j')
map('n', '<leader>k', '<C-w>k')
map('n', '<leader>l', '<C-w>l')
map('n', '<leader>v', '<C-w>v')
map('n', '<leader>s', '<C-w>s')
map('n', '<leader>q', '<C-w>q')

-- change split orientation
map('n', '<leader>tk', '<C-w>t<C-w>K') -- change vertical to horizontal
map('n', '<leader>th', '<C-w>t<C-w>H') -- change horizontal to vertical

-- Reload config without restart nvim
map('n', '<leader>r', ':so %<CR>')


-- Terminal mappings
map('t', '<Esc>', '<C-\\><C-n>') -- exit


--FZF
map('n', '<C-p>', ':FZF<CR>')
