return {
	"folke/trouble.nvim",
	opts = {
		win = {
			position = "bottom",
			type = "float",
			border = "single",
		},
		auto_close = true,
		auto_open = false,
		auto_preview = false,
		auto_refresh = true,
		focus = true,
		restore = true,
		keys = {
			["<cr>"] = "jump_close",
			["q"] = "close",
		},
	},
	cmd = "Trouble",
	keys = {
		{
			"<leader>d",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "Diagnostics (Trouble)",
		},
	},
}
