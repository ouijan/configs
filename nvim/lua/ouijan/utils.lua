local M = {}
OuijanUtils = M

M.format = function()
	require("conform").format({ async = false })
end

M.getCurrentPath = function()
	local path = vim.fn.expand("%:p")
	if path == "" then
		path = vim.fn.getcwd()
	else
		local f = io.open(path, "r")
		if f then
			f.close(f)
		else
			path = vim.fn.getcwd()
		end
	end
	return path
end
