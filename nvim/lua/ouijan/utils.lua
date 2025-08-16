local M = {}
OuijanUtils = M

M.format = function()
	M.organise_imports()
	require("conform").format({ async = false })
end

M.organise_imports = function()
	if vim.bo.filetype == "typescript" then
		local ok = vim.lsp.buf_request_sync(0, "workspace/executeCommand", {
			command = "typescript.organizeImports",
			arguments = { vim.api.nvim_buf_get_name(0) },
		}, 3000)
		if not ok then
			print("Organise imports timeout or failed to complete.")
		end
	end
end

M.get_current_path = function()
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

M.strip_icons = function(str)
	-- Match and remove everything up to the first printable path character
	return str:match("[%w%./~][%w%p%s]*")
end

M.set_normal_mode = function()
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-c>", true, false, true), "n", true)
end
