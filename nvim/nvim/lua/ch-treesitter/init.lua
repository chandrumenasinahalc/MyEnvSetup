require'nvim-treesitter.configs'.setup {
    ensure_installed = {"go","yaml","json","python"}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    -- TODO seems to be broken
    ignore_install = {"haskell"},
    highlight = {
        enable = true -- false will disable the whole extension
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
	indent = {
			enable = true,
			disable = {"go","python"}
	},
    rainbow = {enable = true},
	refactor = {
		highlight_definitions = {enable = true},
		smart_rename = {
			enable = true,
			keymaps = {
				smart_rename = "grr",
			},
		},
	}
}
