return {
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-vsnip",

	config = function()
		local cmp = require("cmp")

		cmp.setup({
			sources = {
				{ name = "nvim_lsp" },
				{ name = "tsserver" },
				{ name = "buffer" },
			},
			snippet = {
				expand = function(args)
					vim.fn["vsnip#anonymous"](args.body)
				end,
			},
			mapping = {
				["<C-Space>"] = cmp.mapping.select_prev_item(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			},
		})
	end,
}
