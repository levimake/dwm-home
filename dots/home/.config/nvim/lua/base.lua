vim.cmd('autocmd!')
vim.scriptencoding = 'utf-8'
vim.wo.number = true

local options = {
  encoding = 'utf-8',
  fileencoding = 'utf-8', -- the encoding written to a file
  title = true,
  autoindent = true,
  hlsearch = true, -- highlight all matches on previous search pattern
  backup = false, -- creates a backup file
  showcmd = true,
  cmdheight = 2, -- more space in the neovim cli for displaying messages
  laststatus = 2,
  shell = 'zsh',
  clipboard = "unnamedplus",  -- allows neovim to access the system clipboard
  conceallevel = 0,           -- `` is visible in markdown files
  ignorecase = true, -- ignore case in search patterns
  mouse = "a", -- allos the mouse to be used in neovim
  pumheight = 10, -- pop up menu height
  showmode = true, -- show status like INSERT, VISUAL
  showtabline = 2, -- always show tabs
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false, -- creates a swapfile
  timeoutlen = 1000, -- time to wait for a mapped seq. to complete (in ms)
  undofile = true,
  updatetime = 300,
  writebackup = false,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  number = true,
  relativenumber = false,
  numberwidth = 4,
  signcolumn = "yes",
  wrap = true,
  scrolloff = 8,
  sidescrolloff = 8,
  guifont = "monospace:h17",
}

vim.opt.shortmess:append "c"

for k,v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
