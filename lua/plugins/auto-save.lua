return {
	{
		"okuuva/auto-save.nvim",
		cmd = "ASToggle",
		event = { "InsertLeave", "TextChanged" },
		opts = {
			enabled = true,
			trigger_events = {
				immediate_save = { "BufLeave", "FocusLost" },
				defer_save = { "InsertLeave", "TextChanged" },
				cancel_deferred_save = { "InsertEnter" },
			},
			condition = nil,
			write_all_buffers = false,
			noautocmd = false,
			lockmarks = false,
			debounce_delay = 1000,
			debug = false,
		},
		config = function()
			local group = vim.api.nvim_create_augroup("autosave", {})

			vim.api.nvim_create_autocmd("User", {
				pattern = "AutoSaveWritePost",
				group = group,
				callback = function(opts)
					if opts.data.saved_buffer ~= nil then
						local filename = vim.api.nvim_buf_get_name(opts.data.saved_buffer)
						print("AutoSave: saved " .. filename .. " at " .. vim.fn.strftime("%H:%M:%S"))
					end
				end,
			})
		end,
	},
}
