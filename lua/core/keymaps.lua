
local function map(mode, lhs, rhs, opts)
	local options = { noremap=true, silent=true }
	if opts then
		options = vim.tbl_extend('force', options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '

map('i', 'jj', '<Esc>')

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

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

-- NvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>')
map('n', '<leader>f', ':NvimTreeRefresh<CR>')
map('n', '<leader>n', ':NvimTreeFindFile<CR>')

-- Terminal mappings
map('t', '<Esc>', '<C-\\><C-n>') -- exit

-- Flutter-tools
map('n', '<leader>fr', ':FlutterReload<CR>')
map('n', '<leader>fR', ':FlutterRestart<CR>')
map('n', '<leader>fa', ':FlutterRun<CR>')
map('n', '<leader>fq', ':FlutterQuit<CR>')

