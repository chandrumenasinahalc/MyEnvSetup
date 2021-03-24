-- Make Ranger replace netrw and be the file explorer
vim.g.rnvimr_ex_enable = 1
--vim.g.rnvimr_draw_border = 1
-- Make Ranger to be hidden after picking a file
vim.g.rnvimr_pick_enable = 1
-- Make Neovim to wipe the buffers corresponding to the files deleted by Ranger
vim.g.rnvimr_bw_enable = 1
vim.g.rnvimr_border_attr = {fg= 18, bg= -1}
vim.g.rnvimr_ranger_cmd = 'ranger --cmd="set draw_borders both"'
vim.g.rnvimr_draw_border = 1
--vim.g.rnvimr_ranger_views= {
             --{minwidth=90, ratio={}},
             --{minwidth=50, maxwidth=89, ratio={1,1}},
             --{maxwidth=49, ratio={ 1 }}
             --}
