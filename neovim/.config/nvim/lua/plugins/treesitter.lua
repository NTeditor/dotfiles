---@class MyTreesitterOpts
---@field languages string[]

return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	---@type MyTreesitterOpts
	opts = {
		languages = { "lua", "c", "cpp", "html", "css", "rust", "json", "json5", "bash", "zsh", "fish" },
	},

	---@param opts MyTreesitterOpts
	config = function(_, opts)
		require("nvim-treesitter").install(opts.languages):wait(60000)
		vim.api.nvim_create_autocmd("FileType", {
			pattern = (function(list)
				local languages = vim.deepcopy(list)
				if vim.tbl_contains(languages, "json") then
					table.insert(languages, "jsonc")
				end
				return languages
			end)(opts.languages),
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
