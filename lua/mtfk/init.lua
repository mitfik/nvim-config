require("mtfk.lazy")
require("mtfk.remap")
require("mtfk.set")
vim.o.filetype = 'on'
vim.o.foldmethod = 'syntax'
vim.o.foldlevel = 1
vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"

vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]
vim.cmd("colorscheme rose-pine")
