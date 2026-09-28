if not vim.g.rustaceanvim_half_split then
	local ui = require('rustaceanvim.ui')
	local resize = ui.resize
	ui.resize = function(vertical, amount)
		if vertical and amount == '-25' then
			return resize(true, tostring(math.floor(vim.o.columns / 2)))
		end
		return resize(vertical, amount)
	end
	vim.g.rustaceanvim_half_split = true
end

local function map(key, action, desc)
	vim.keymap.set('n', key, function()
		if vim.fn.exists(':RustLsp') ~= 2 then
			vim.notify('rust-analyzer is still starting', vim.log.levels.INFO)
			return
		end
		vim.cmd.RustLsp(action)
	end, { buffer = true, silent = true, desc = desc })
end

map('<leader>ra', 'codeAction', 'Rust code action')
map('<leader>rr', 'run', 'Rust run')
map('<leader>rt', 'testables', 'Rust test')
map('<leader>rf', 'flyCheck', 'Rust fly check')
map('<leader>rm', 'expandMacro', 'Rust expand macro')
map('<leader>re', 'explainError', 'Rust explain error')
