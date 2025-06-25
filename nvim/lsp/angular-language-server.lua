return {
	on_attach = function(client)
		client.server_capabilities.renameProvider = false
		print("Angular Language Server attached")
	end,
}
