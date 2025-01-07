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
				----Defaults from josean----
				"ts_ls", --"tsserver",
				"html",
				"cssls",
				"tailwindcss",
				"svelte",
				"lua_ls",
				"graphql",
				"emmet_ls",
				"prismals",
				"pyright",
				----Python----
				--"sourcery", -- BUG: When saving file changes with ":w", causes error "E13 file exists, add ! to override"
				----SQL----
				"sqlls",
				----Go----
				"gopls",
				----Others----
				"bashls",
				"jsonls",
				"yamlls",
				"lemminx",
				"terraformls",
			},
			automatic_installation = false,
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				--"isort", -- python formatter
				--"black", -- python formatter
				"ruff", -- python linter
				"eslint_d",
				"goimports", -- go formatter
				"golangci-lint", -- go linter
				"sqlfluff", -- sql formatter
			},
		})
	end,
}
