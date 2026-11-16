return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		opts = {
			-- Inline ghost text: <Tab> accept, <M-]>/<M-[> cycle, <C-]> dismiss
			suggestion = { auto_trigger = true, keymap = { accept = false } },
			panel = { enabled = false },
			filetypes = {
				yaml = true,
				markdown = true,
				help = true,
				gitcommit = true,
				gitrebase = true,
				["."] = false,
			},
		},
		keys = {
			{
				"<Tab>",
				function()
					local s = require("copilot.suggestion")
					if s.is_visible() then
						s.accept()
					else
						vim.api.nvim_feedkeys(vim.keycode("<Tab>"), "ni", false) -- "i": ahead of queued keys
					end
				end,
				mode = "i",
				desc = "Copilot accept / Tab",
			},
		},
	},

	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			"zbirenbaum/copilot.lua", -- NOT copilot.vim: running both starts two competing Copilot clients
			{ "nvim-lua/plenary.nvim", branch = "master" },
		},
		build = "make tiktoken",
		cmd = { "CopilotChat", "CopilotChatModels", "CopilotChatToggle" },
		opts = {
			-- newest model enabled on this account (Nov 2026). claude-opus-5.5 / gpt-6.1-sol need enabling
			-- at github.com/settings/copilot/features first. Switch live: :CopilotChatModels or $model in a prompt
			model = "gpt-6-luna",
			window = { layout = "horizontal" },
		},
		keys = {
			{
				"<leader>vv",
				function()
					local input = vim.fn.input("Quick Chat: ")
					if input ~= "" then
						require("CopilotChat").ask(input)
					end
				end,
				mode = { "n", "v" }, -- visual selection is sent by default
				desc = "CopilotChat - Quick chat",
			},
		},
	},
}
