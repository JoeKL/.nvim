-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		'mrcjkb/rustaceanvim',
		version = '^6',
		lazy = false,
		init = function()
			vim.g.rustaceanvim = {
				server = {
					default_settings = {
						['rust-analyzer'] = {
							cargo = { allTargets = false },
							check = { allTargets = false },
						},
					},
				},
			}
		end,
	},
}
