return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"bashls",
				"cssls",
				"dockerls",
				"emmet_ls",
				"eslint",
				"gopls",
				"html",
				"jsonls",
				"lua_ls",
				"marksman",
				"prismals",
				"pyright",
				"sqlls",
				"taplo",
				"terraformls",
				"tsserver",
				"yamlls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"black", -- python formatter
				"eslint_d", -- js linter
				"hclfmt", -- format HCL
				"isort", -- python formatter
				"prettier", -- prettier formatter
				"pylint", -- python linter
				"stylua", -- lua formatter
				"tflint", -- terraform linter
				"tfsec", -- terraform static analysis
			},
		})
	end,
}
