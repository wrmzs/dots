require 'plugins'

-- Completion 
vim.g.coq_settings = { 
	auto_start = 'shut-up'
}

coq = require('coq')

-- Language Servers
require 'lspconfig'.ccls.setup(coq.lsp_ensure_capabilities())
require 'lspconfig'.pylsp.setup(coq.lsp_ensure_capabilities())

-- Colors
require 'colorizer'.setup()



	
