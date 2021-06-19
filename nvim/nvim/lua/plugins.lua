local execute = vim.fn.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    execute 'packadd packer.nvim'
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

return require('packer').startup(function(use)
    -- Packer can manage itself as an optional plugin
     use 'wbthomason/packer.nvim'
     use 'tpope/vim-fugitive'
    -- little extention to fugutive for bitbucket
    use 'tommcdo/vim-fubitive'
    use 'eugen0329/vim-esearch'
    use {'fatih/vim-go', ft={'go', 'markdown'}}
    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'
    --use 'itchyny/lightline.vim'
    --use 'mengelbrecht/lightline-bufferline'
    use {
    		'glepnir/galaxyline.nvim',
    		branch = 'main',
    		-- your statusline
			config = function() require'ch-galaxyline' end,
    		-- some optional icons
    		requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    --vim.cmd('source $HOME/.config/nvim/vimscripts/lightline.vim')
    use 'majutsushi/tagbar'
    use 'scrooloose/nerdcommenter'
    use 'easymotion/vim-easymotion'
    use {'junegunn/fzf', run = {function() vim.fn['firenvim#install'](0) end}}
    use 'junegunn/fzf.vim'
    vim.cmd('source $HOME/.config/nvim/vimscripts/fzf.vim')
    use 'machakann/vim-highlightedyank'
    use 'sebdah/vim-delve'
    use 'justinmk/vim-sneak'
    use 'svermeulen/vim-easyclip'
    use 'tpope/vim-rhubarb'
    use 'tpope/vim-unimpaired'
    use 'smpchandru/vim-code-dark'
    use 'rhysd/git-messenger.vim'
    use {'neoclide/coc.nvim',branch='release'}
    vim.cmd('source $HOME/.config/nvim/vimscripts/coc.vim')
    use 'antoinemadec/coc-fzf'
    use 'iamcco/markdown-preview.nvim'--, { 'do': { -> mkdp#util#install() } }
    --use 'Lenovsky/nuake'
    use 'aklt/plantuml-syntax'
    use 'rbgrouleff/bclose.vim'
    use 'mhinz/vim-startify'
	use 'ryanoasis/vim-devicons'
    --use 'kyazdani42/nvim-web-devicons'
	--use 'yamatsum/nvim-web-nonicons'

    -- Convert numbers for diffrent base like octal,binary, decimal etc (gA
    -- show all version of number)
    use 'glts/vim-radical'
    use 'glts/vim-magnum'
    --use 'tpope/vim-vinegar'
    use 'nvim-lua/completion-nvim'
    use 'sumneko/lua-language-server'
    --use 'glepnir/dashboard-nvim'
    use 'nvim-lua/popup.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'psliwka/vim-smoothie'
    use 'kevinhwang91/nvim-bqf'
    use 'mhinz/vim-grepper'
    use 'nvim-telescope/telescope-media-files.nvim'
    use 'kyazdani42/nvim-tree.lua'
    use 'christianchiarulli/nvcode-color-schemes.vim'
    use 'nvim-lua/plenary.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'unblevable/quick-scope'
    use 'chrisbra/colorizer'
    use 'gennaro-tedesco/nvim-peekup'
    use 'phaazon/hop.nvim'
    --use 'kevinhwang91/rnvimr'
    use {'nvim-treesitter/nvim-treesitter', run=':TSUpdate'}
	use 'nvim-treesitter/nvim-treesitter-refactor'
	use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'p00f/nvim-ts-rainbow'
    use {'lukas-reineke/indent-blankline.nvim', branch = 'lua'}
 --   use 'neovim/nvim-lspconfig'
	--use 'romgrk/barbar.nvim'
	use 'TimUntersberger/neogit'
    use 't9md/vim-choosewin'
    use 'liuchengxu/vim-which-key'
    use 'mg979/vim-visual-multi'
    use 'KabbAmine/vCoolor.vim'
    use 'voldikss/vim-floaterm'
	use	'voldikss/fzf-floaterm'
	use 'chrisbra/NrrwRgn'
	use 'nvim-telescope/telescope-fzf-writer.nvim'
	use 'tjdevries/colorbuddy.nvim'
	use 'marko-cerovac/material.nvim'
    --use {'neovim/nvim-lspconfig'}
    --use {'glepnir/lspsaga.nvim'}
    --use {'onsails/lspkind-nvim'}
    --use {'kabouzeid/nvim-lspinstall'}
    --O
    --use 'neovim/nvim-lspconfig'
    --use 'glepnir/lspsaga.nvim'
	--use 'kosayoda/nvim-lightbulb'
    --use 'hrsh7th/nvim-compe'
    --use 'kosayoda/nvim-lightbulb'
    --use 'glepnir/lspsaga.nvim'
    --use 'onsails/lspkind-nvim'
    --use 'Yggdroot/indentLine'
    --use 'mhartington/oceanic-next'
    --use 'trusktr/seti.vim'
    --use 'jodosha/vim-godebug'
    --use 'valloric/youcompleteme'
     --mark hightlighter
    --use 'kshenoy/vim-signature'
    -- Vim powerline
    --use 'Lokaltog/powerline'
    --use 'airblade/vim-gitgutter'
    --use 'radenling/vim-dispatch-neovim'
    --use 'tpope/vim-dispatch'
    --use 'Shougo/vimproc'
    --use 'c9s/helper.vim'
    --use 'c9s/treemenu.vim'
    --use 'c9s/vikube.vim'
    --use 'vim-airline/vim-airline'
    --use 'vim-airline/vim-airline-themes'
    --use 'machakann/vim-sandwich'
    --use 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
    --use 'francoiscabrol/ranger.vim'
    --use 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
    --" prerequisite of vim-radical
	require_plugin('nvim-lspconfig')
    require_plugin('lspsaga.nvim')
    require_plugin('lspkind-nvim')
end)
