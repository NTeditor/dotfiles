return {
	"akinsho/bufferline.nvim",
	version = "*",
	event = "VeryLazy",
	dependencies = "nvim-tree/nvim-web-devicons",
	keys = {
		{ "H", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
		{ "L", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },

		{ "<leader>bp", "<cmd>BufferLineMovePrev<cr>", desc = "Move Buffer Left" },
		{ "<leader>bn", "<cmd>BufferLineMoveNext<cr>", desc = "Move Buffer Right" },

		{ "<leader>bc", "<cmd>bdelete!<cr>", desc = "Close Current Buffer" },
		{ "<leader>bo", "<cmd>BufferLineCloseOthers<cr>", desc = "Close Other Buffers" },
		{ "<leader>br", "<cmd>BufferLineCloseRight<cr>", desc = "Close Buffers to the Right" },
		{ "<leader>bl", "<cmd>BufferLineCloseLeft<cr>", desc = "Close Buffers to the Left" },

		{ "<leader>be", "<cmd>BufferLinePick<cr>", desc = "Pick Buffer" },
	},
	opts = {
		options = {
			numbers = "none",
			diagnostics = "nvim_lsp",
			separator_style = "thin",
			always_show_bufferline = false,
		},
	},
}
