require'nvim-treesitter.configs'.setup {
  rainbow = {
    enable = true
  },
  ensure_installed = "go","yaml", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust","ocamllex","swift","gdscript","devicetree", "supercollider","teal","ledger","nix","erlang"},  -- list of language that will be disabled
  },
}
