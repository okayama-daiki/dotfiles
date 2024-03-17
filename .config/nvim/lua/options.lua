local set = vim.opt
local cmd = vim.cmd
local bo = vim.bo

cmd("set whichwrap+=<,>,[,],h,l")

-- Basic Options
set.helplang = "ja,en"
set.encoding = "utf-8"
set.fileencoding = "utf-8"
set.title = true
set.backup = false
set.number = true
set.expandtab = true

if bo.filetype == "python" or bo.filetype == "rust" then
	set.tabstop = 4
	set.softtabstop = 4
	set.shiftwidth = 4
else
	set.tabstop = 2
	set.softtabstop = 2
	set.shiftwidth = 2
end
