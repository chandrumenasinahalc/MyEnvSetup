local M = {}

function M.search()
   --vim.api.nvim_open_win(0,false,{relative='win', row=3, col=3, width=12, height=3})
   vim.api.nvim_open_win(0,false,{relative='win', width=12, height=3, bufpos={100,10}})
end
return M
