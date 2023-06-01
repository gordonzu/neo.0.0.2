vim.opt.nu = true
vim.opt.rnu = true
vim.opt.ruler = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.timeoutlen = 1000
vim.opt.updatetime = 50
vim.opt.guifont = "monospace:h17"
vim.opt.omnifunc = "v:lua.vim.lsp.omnifunc"
vim.opt.clipboard = "unnamedplus"

vim.g.NERDTreeWinSize = 60
vim.g.NERDTreeHighlightCursorline = 0

vim.cmd([[
  highlight LineNr guibg=none guifg=gray
]])

--vim.api.nvim_exec([[ 
--    function! ToggleBackground()
--    let &background = &background == "dark" ? "light" : "dark"
--    endfunction
--]], false)

--vim.cmd([[ 
--    nnoremap <silent> <F10> :call ToggleBackground()<cr>
--]])   



