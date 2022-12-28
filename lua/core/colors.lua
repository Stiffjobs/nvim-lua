function ColorMyPencils(color)
--	color = color or "rose-pine"
--	vim.cmd.colorscheme(color)
--	pro, soda, ristretto

	require('monokai').setup{
		palette = require('monokai').ristretto
	}
--transparency
--	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
--	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})

end

ColorMyPencils()
