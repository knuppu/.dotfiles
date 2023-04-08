function Knuppremap(mode, lhs, rhs, opts) 
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
Knuppremap("n", "<leader>wq", ":wq<cr>")
Knuppremap("n", "<leader>q", ":q<cr>")
Knuppremap("n", "<leader>x", ":x<cr>")

