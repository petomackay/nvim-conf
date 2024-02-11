function SetTransparentBg()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

return {
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme "rose-pine"
		SetTransparentBg()
	end,
}
