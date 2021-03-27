
require'nvim-treesitter.configs'.setup {
		ensure_installed = {"go","yaml"}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
		highlight = {
				enable = true -- false will disable the whole extension
		},
		playground = {
				enable = true,
				disable = {},
				updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
				persist_queries = false -- Whether the query persists across vim sessions
		},
		autotag = {enable = true},
		rainbow = {enable = true},
		refactor = {
				highlight_definitions = {enable = true},
				highlight_current_scope = { enable = false },
				smart_rename = {
						enable = true,
						keymaps = {
								smart_rename = "grr",
						},
				}
		},
		incremental_selection = {
				enable = true,
				keymaps = {
						init_selection = "gnn",
						node_incremental = "grn",
						scope_incremental = "grc",
						node_decremental = "grm",
				},
		},
		--indent = {
				--enable = true
		--}
}
