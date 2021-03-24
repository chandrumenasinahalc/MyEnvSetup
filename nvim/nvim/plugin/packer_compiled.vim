" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/chandru/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/chandru/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/chandru/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/chandru/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/chandru/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["bclose.vim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/bclose.vim"
  },
  ["coc-fzf"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/coc-fzf"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/coc.nvim"
  },
  colorizer = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/colorizer"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  fzf = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["git-messenger.vim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/git-messenger.vim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/hop.nvim"
  },
  ["lightline-bufferline"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/lightline-bufferline"
  },
  ["lightline.vim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/lightline.vim"
  },
  ["lua-language-server"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/lua-language-server"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  nuake = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/nuake"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/nvcode-color-schemes.vim"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/nvim-bqf"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-peekup"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/nvim-peekup"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plantuml-syntax"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/plantuml-syntax"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/quick-scope"
  },
  rnvimr = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/rnvimr"
  },
  tagbar = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/tagbar"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-code-dark"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-code-dark"
  },
  ["vim-delve"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-delve"
  },
  ["vim-easyclip"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-easyclip"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-easymotion"
  },
  ["vim-esearch"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-esearch"
  },
  ["vim-fubitive"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-fubitive"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-go"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/opt/vim-go"
  },
  ["vim-grepper"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-grepper"
  },
  ["vim-highlightedyank"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-highlightedyank"
  },
  ["vim-magnum"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-magnum"
  },
  ["vim-radical"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-radical"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-rhubarb"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-smoothie"
  },
  ["vim-sneak"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-sneak"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-unimpaired"
  }
}

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
vim.cmd [[au FileType go ++once lua require("packer.load")({'vim-go'}, { ft = "go" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'vim-go'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
vim.cmd [[source /home/chandru/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]]
vim.cmd("augroup END")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
