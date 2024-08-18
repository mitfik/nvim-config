require("mtfk")

-- Remove trailing whitespace on save
vim.cmd([[autocmd BufWritePre * :%s/\s\+$//e]])

-- Return to last edit position when opening files (if possible)
vim.cmd([[
autocmd BufReadPost *
 \ if line("'\"") > 1 && line("'\"") <= line("$") |
 \  exe "normal! g`\"" |
 \ endif
]])

