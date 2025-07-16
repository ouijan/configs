return {
	settings = {
		vtsls = {
			autoUseWorkspaceTsdk = true,
			experimental = {
				completion = {
					enableServerSideFuzzyMatch = true,
				},
			},
		},
		typescript = {
			tsserver = {
				maxTsServerMemory = 16384,
			},
		},
	},
}
