return {
	on_attach = function(client)
		client.server_capabilities.renameProvider = false
	end,
}
