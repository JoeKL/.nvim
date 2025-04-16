return {
	{
		-- Edge colorscheme
		"sainnhe/edge",
		priority = 1000, -- Ensure it loads before other plugins
		config = function()
			-- Set the background to 'dark' or 'light'
			vim.o.background = "dark"

			-- Optional settings
			vim.g.edge_style = "aura" -- Options: 'default', 'aura', 'neon'
			vim.g.edge_enable_italic = 1
			vim.g.edge_disable_italic_comment = 0
			vim.g.edge_transparent_background = 0
			vim.g.edge_dim_inactive_windows = 0

			-- Apply the colorscheme
			vim.cmd.colorscheme("edge")
		end,
	},
}
