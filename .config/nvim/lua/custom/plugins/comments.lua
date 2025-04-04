return {
	"numToStr/Comment.nvim",
	lazy = false,
	opts = {
		---Add a space b/w comment and the line
		padding = true,
		---Whether the cursor should stay at its position
		sticky = true,
		---Lines to be ignored while (un)comment
		ignore = nil,
		---LHS of toggle mappings in NORMAL mode
		toggler = {
			---Line-comment toggle keymap
			line = "<A-/>",
			---Block-comment toggle keymap
			block = "<A-c>",
		},
		---LHS of operator-pending mappings in NORMAL and VISUAL mode
		opleader = {
			---Line-comment keymap
			line = "<A-/>",
			---Block-comment keymap
			block = "<A-c>",
		},
		---LHS of extra mappings
		extra = {
			---Add comment on the line above
			above = "gca",
			---Add comment on the line below
			below = "gcb",
			---Add comment at the end of line
			eol = "gcA",
		},
		---Enable keybindings
		---NOTE: If given `false` then the plugin won't create any mappings
		mappings = {
			---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
			basic = true,
			---Extra mapping; `gco`, `gcO`, `gcA`
			extra = true,
		},
	},
}
