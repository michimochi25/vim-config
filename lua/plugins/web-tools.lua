return {
	{
		"ray-x/web-tools.nvim",
		event = "VeryLazy",
		config = function()
			require("web-tools").setup({
				browser_sync = {
					-- This form *explicitly* launches PowerShell correctly
					cmd = [[powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "Start-Process -NoNewWindow browser-sync -ArgumentList 'start','--server','--watch','--no-open'" ]],
				},
				keymaps = {
					rename = nil, -- rename HTML tags
					repeat_rename = ".", -- repeat rename with dot command
				},
				hurl = {
					show_headers = false, -- display response headers
					floating = false, -- use floating window or split
					json_formatter = "jq", -- formatter for JSON response
					formatters = {
						json = { "jq" },
						html = { "prettier", "--parser", "html" },
					},
				},
			})
		end,
	},
}
