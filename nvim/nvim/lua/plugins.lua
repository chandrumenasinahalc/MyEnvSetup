--local execute = vim.fn.nvim_command
local fn =  vim.fn
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	vim.api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
	vim.api.nvim_command 'packadd packer.nvim'
end

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua
require('packer').init({display = {auto_clean = false}})

local function require_plugin(plugin)
	local plugin_prefix = fn.stdpath('data') .. '/site/pack/packer/opt/'

	local plugin_path = plugin_prefix .. plugin .. '/'
	--	print('test '..plugin_path)
	local ok, err, code = os.rename(plugin_path, plugin_path)
	if not ok then
		if code == 13 then
			-- Permission denied, but it exists
			return true
		end
	end
	--	print(ok, err, code)
	if ok then vim.cmd('packadd ' .. plugin) end
	return ok, err, code
end

return require('packer').startup({function(use)
	-- Packer can manage itself as an optional plugin
	use 'wbthomason/packer.nvim'
	use 'tpope/vim-surround'
	use 'tpope/vim-repeat'
	use 'majutsushi/tagbar'
	use 'scrooloose/nerdcommenter'
	use 'machakann/vim-highlightedyank'
	use 'svermeulen/vim-easyclip'
	use 'tpope/vim-rhubarb'
	use 'tpope/vim-unimpaired'
	use 'smpchandru/vim-code-dark'
	use 'aklt/plantuml-syntax'
	use 'rbgrouleff/bclose.vim'
	use 'mhinz/vim-startify'
	use 'ryanoasis/vim-devicons'
	use {'godlygeek/tabular',cmd='Tabularize'}
	use 'nvim-lua/popup.nvim'
	use 'psliwka/vim-smoothie'
	-- Convert numbers for diffrent base like octal,binary, decimal etc (A show all version of number)
	use 'glts/vim-radical'
	use 'glts/vim-magnum'

	-- git related
	use 'tpope/vim-fugitive'
	use 'tommcdo/vim-fubitive'
	use {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("ch-gitsign").config()
        end,
        event = "BufRead"
	}
	use 'rhysd/git-messenger.vim'
	use {'TimUntersberger/neogit',
		requires = {
			'nvim-lua/plenary.nvim',
			'sindrets/diffview.nvim'
		},
		config = function() require('ch-neogit') end
	}

	-- search related
	use { 'eugen0329/vim-esearch',
		config = function() require('ch-easysearh') end
		}
	use 'easymotion/vim-easymotion'
	use 'justinmk/vim-sneak'
	use {'junegunn/fzf', run = {function() vim.fn['firenvim#install'](0) end}}
	use {
		'junegunn/fzf.vim',
		config = function() vim.cmd('source $HOME/.config/nvim/vimscripts/fzf.vim') end
	}
	use 'kevinhwang91/nvim-bqf'
	use 'mhinz/vim-grepper'
	use 'nvim-telescope/telescope-media-files.nvim'
	use 'nvim-telescope/telescope-fzf-writer.nvim'
	use { 'nvim-telescope/telescope.nvim',
		config = function() require('ch-telescope') end
	}
	use { 'unblevable/quick-scope',
		config = function () require('ch-quickscope') end
	}
	use 'gennaro-tedesco/nvim-peekup'
	use {
		'phaazon/hop.nvim',
		event = 'BufRead',
        config = function()
            require('ch-hop').config()
        end,
		disable = not O.plugin.hop.active,
        opt = true
	}
	-- select wondow
	use 't9md/vim-choosewin'

	-- golang related
	use {'fatih/vim-go',
		ft='go',
		config = function() require('ch-vimgo') end
	}
	use {'sebdah/vim-delve',ft='go'}
	-- status/tab line
	use {
		'glepnir/galaxyline.nvim',
		branch = 'main',
		-- your statusline
		config = function() require'ch-galaxyline' end,
		-- some optional icons
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}
	use 'romgrk/barbar.nvim'

	-- LSP related
	use {
		'neoclide/coc.nvim',branch='release',
		config= function() vim.cmd('source $HOME/.config/nvim/vimscripts/coc.vim') end
	}
	use 'antoinemadec/coc-fzf'
	use 'sumneko/lua-language-server'
	--use 'nvim-lua/completion-nvim'
	--require_plugin('nvim-lspconfig')
	--require_plugin('lspsaga.nvim')
	--require_plugin('lspkind-nvim')


	-- markdown
	use {'iamcco/markdown-preview.nvim',ft='markdown', run= function() vim.fn['mkdp#util#install']() end }

	-- terminal related
	--use 'Lenovsky/nuake'
	use { 'voldikss/vim-floaterm',
		config = function() require('ch-floaterm') end
	}
	use	'voldikss/fzf-floaterm'


	-- Explorer related
	use {
		'kyazdani42/nvim-tree.lua',
        cmd = "NvimTreeToggle",
        config = function()
            require("ch-nvtree").config()
        end
	}

	-- appearance and color schmes
	use 'christianchiarulli/nvcode-color-schemes.vim'
	use 'nvim-lua/plenary.nvim'
	use 'chrisbra/colorizer'
    -- Zen Mode TODO this don't work with whichkey might gave to make this built in
    use {
        "Pocco81/TrueZen.nvim",
        -- event = 'BufEnter',
        cmd = {"TZAtaraxis"},
        config = function()
           require('ch-zen').config()
        end,
		 event = "BufEnter",
		 disable = true
    }
	use {
		'nvim-treesitter/nvim-treesitter',
	    run=':TSUpdate',
		config = function() require('ch-treesitter') end,
		requires = {
	 		'nvim-treesitter/nvim-treesitter-refactor',
	 		'nvim-treesitter/nvim-treesitter-textobjects'
		},
		disable= not O.enable_treesitter
	}
	use 'p00f/nvim-ts-rainbow'
	use {'lukas-reineke/indent-blankline.nvim', branch = 'lua',
	config = function() require('ch-indentline') end }
	use { 'folke/which-key.nvim',
		config = function () require('ch-whichkey') end
	}
	use 'mg979/vim-visual-multi'
	use 'KabbAmine/vCoolor.vim'
	use 'chrisbra/NrrwRgn'
	use 'tjdevries/colorbuddy.nvim'
	use 'marko-cerovac/material.nvim'
end,
config = {
  display = {
    open_fn = require('packer.util').float,
  }
}})
