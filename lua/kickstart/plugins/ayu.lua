return {
	{
		-- Ayu colorscheme
		"Shatur/neovim-ayu",
		priority = 1000, -- Ensure it loads before other plugins
		config = function()
			-- Optional: Enable true color support
			vim.opt.termguicolors = true

			-- Configure Ayu
			require("ayu").setup({
				mirage = false, -- Set to true to use the 'mirage' variant
				terminal = true, -- Use terminal colors
				overrides = {}, -- Customize highlight groups if needed
			})

			-- Apply the colorscheme
			-- vim.cmd.colorscheme("ayu")
			vim.cmd.colorscheme("ayu-mirage")
		end,
	},
}
