return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				suggestion = { enabled = false },
				panel = { enabled = false },
				filetypes = {
					yaml = true,
					markdown = true,
					help = true,
					gitcommit = true,
					gitrebase = true,
					hgcommit = false,
					cvs = false,
					["."] = false,
				},
			})
		end,
	},

	{
		"zbirenbaum/copilot-cmp",
		config = function()
			require("copilot_cmp").setup()
		end,
	},

	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		keys = {
			-- Quick chat with Copilot in normal mode
			{
				"<leader>cc",
				function()
					local input = vim.fn.input("Quick Chat: ")
					if input ~= "" then
						require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
					end
				end,
				mode = "n",
				desc = "CopilotChat - Quick chat (normal mode)",
			},
			-- Quick chat with Copilot in visual mode
			{
				"<leader>cc",
				function()
					local input = vim.fn.input("Quick Chat: ")
					if input ~= "" then
						require("CopilotChat").ask(input, { selection = require("CopilotChat.select").visual })
					end
				end,
				mode = "v",
				desc = "CopilotChat - Quick chat (visual mode)",
			},
			{
				"<leader>ch",
				function()
					local actions = require("CopilotChat.actions")
					require("CopilotChat.integrations.telescope").pick(actions.help_actions())
				end,
				desc = "CopilotChat - Help actions",
			},
			-- Show prompts actions with telescope
			{
				"<leader>ca",
				function()
					local actions = require("CopilotChat.actions")
					require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
				end,
				desc = "CopilotChat - Prompt actions",
			},
		},
		opts = {
			debug = false, -- Enable debug logging
			proxy = nil, -- [protocol://]host[:port] Use this proxy
			allow_insecure = false, -- Allow insecure server connections

			model = "gpt-4o", -- GPT model to use, see ':CopilotChatModels' for available models
			temperature = 0.1, -- GPT temperature

			question_header = "## User ", -- Header to use for user questions
			answer_header = "## Copilot ", -- Header to use for AI answers
			error_header = "## Error ", -- Header to use for errors
			separator = "───", -- Separator to use in chat

			show_folds = true, -- Shows folds for sections in chat
			show_help = true, -- Shows help message as virtual lines when waiting for user input
			auto_follow_cursor = true, -- Auto-follow cursor in chat
			auto_insert_mode = false, -- Automatically enter insert mode when opening window and on new prompt
			insert_at_end = false, -- Move cursor to end of buffer when inserting text
			clear_chat_on_new_prompt = false, -- Clears chat on every new prompt
			highlight_selection = true, -- Highlight selection in the source buffer when in the chat window

			context = "buffer", -- Default context to use, 'buffers', 'buffer' or none (can be specified manually in prompt via @).
			history_path = vim.fn.stdpath("data") .. "/copilotchat_history", -- Default path to stored history
			callback = nil, -- Callback to use when ask response is received

			{
				window = {
					layout = "float",
					relative = "cursor",
					width = 1,
					height = 0.4,
					row = 1,
				},
			},
		},
	},
}
