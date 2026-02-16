---@class MyLspconfigOpts
---@field servers string[]

return {
	"neovim/nvim-lspconfig",
	event = "VeryLazy",
	---@type MyLspconfigOpts
	opts = {
		servers = { "lua_ls", "rust_analyzer", "pyright", "vtsls", "gopls", "dartls" },
	},
	keys = {
		{
			"<leader>lr",
			function()
				vim.lsp.buf.rename()
			end,
			{ desc = "LSP Rename" },
		},
		{
			"K",
			function()
				vim.lsp.buf.hover()
			end,
			desc = "LSP Hover",
		},
	},
	---@param opts MyLspconfigOpts
	config = function(_, opts)
		vim.lsp.enable(opts.servers)

		-- vim.diagnostic.config({
		-- 	float = false,
		-- 	virtual_text = false,
		-- 	underline = false,
		-- 	update_in_insert = false,
		-- 	severity_sort = false,
		-- 	signs = true,
		-- })
	end,
}
