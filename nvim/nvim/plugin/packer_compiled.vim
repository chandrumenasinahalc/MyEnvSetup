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
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/chandru/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/chandru/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/chandru/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/chandru/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/chandru/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  NrrwRgn = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/NrrwRgn"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
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
  ["colorbuddy.nvim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim"
  },
  colorizer = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/colorizer"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/diffview.nvim"
  },
  fzf = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf-floaterm"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/fzf-floaterm"
  },
  ["fzf.vim"] = {
    config = { "\27LJ\2\nP\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0001source $HOME/.config/nvim/vimscripts/fzf.vim\bcmd\bvim\0" },
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18ch-galaxyline\frequire\0" },
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["git-messenger.vim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/git-messenger.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\15ch-gitsign\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18ch-indentline\frequire\0" },
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lua-language-server"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/lua-language-server"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/material.nvim"
  },
  neogit = {
    config = { "\27LJ\2\n)\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\14ch-neogit\frequire\0" },
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/neogit"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/nvcode-color-schemes.vim"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/nvim-bqf"
  },
  ["nvim-peekup"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/nvim-peekup"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle" },
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\14ch-nvtree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua"
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
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18ch-quickscope\frequire\0" },
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/quick-scope"
  },
  tabular = {
    after_files = { "/home/chandru/.local/share/nvim/site/pack/packer/opt/tabular/after/plugin/TabularMaps.vim" },
    commands = { "Tabularize" },
    loaded = false,
    needs_bufread = false,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/opt/tabular"
  },
  tagbar = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/tagbar"
  },
  ["telescope-fzf-writer.nvim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/telescope-fzf-writer.nvim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17ch-telescope\frequire\0" },
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vCoolor.vim"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vCoolor.vim"
  },
  ["vim-choosewin"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-choosewin"
  },
  ["vim-code-dark"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-code-dark"
  },
  ["vim-delve"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/opt/vim-delve"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-devicons"
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
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17ch-easysearh\frequire\0" },
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-esearch"
  },
  ["vim-floaterm"] = {
    config = { "\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16ch-floaterm\frequire\0" },
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-floaterm"
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
    config = { "\27LJ\2\n(\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\rch-vimgo\frequire\0" },
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
  ["vim-startify"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-unimpaired"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/vim-visual-multi"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16ch-whichkey\frequire\0" },
    loaded = true,
    path = "/home/chandru/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16ch-whichkey\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17ch-telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18ch-indentline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: quick-scope
time([[Config for quick-scope]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18ch-quickscope\frequire\0", "config", "quick-scope")
time([[Config for quick-scope]], false)
-- Config for: vim-floaterm
time([[Config for vim-floaterm]], true)
try_loadstring("\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16ch-floaterm\frequire\0", "config", "vim-floaterm")
time([[Config for vim-floaterm]], false)
-- Config for: fzf.vim
time([[Config for fzf.vim]], true)
try_loadstring("\27LJ\2\nP\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0001source $HOME/.config/nvim/vimscripts/fzf.vim\bcmd\bvim\0", "config", "fzf.vim")
time([[Config for fzf.vim]], false)
-- Config for: vim-esearch
time([[Config for vim-esearch]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17ch-easysearh\frequire\0", "config", "vim-esearch")
time([[Config for vim-esearch]], false)
-- Config for: neogit
time([[Config for neogit]], true)
try_loadstring("\27LJ\2\n)\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\14ch-neogit\frequire\0", "config", "neogit")
time([[Config for neogit]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18ch-galaxyline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
vim.cmd [[command! -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Tabularize lua require("packer.load")({'tabular'}, { cmd = "Tabularize", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType go ++once lua require("packer.load")({'vim-delve', 'vim-go'}, { ft = "go" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'gitsigns.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/chandru/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], true)
vim.cmd [[source /home/chandru/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]]
time([[Sourcing ftdetect script at: /home/chandru/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
