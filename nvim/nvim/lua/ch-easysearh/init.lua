vim.api.nvim_set_var('esearch',{
			 adapter='ag',
			 backend='vimproc',
			 out='win',
			 batch_size=1000,
			 use={'visual', 'hlsearch', 'last'},
			})
