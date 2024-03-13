-- sample
vim.keymap.set("n", "<leader>alf", function()
	print("A lua func")
end, { noremap = true })

-- debugging
vim.keymap.set("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { noremap = true })
vim.keymap.set("n", "<leader>dpr", function()
	require("dap-python").test_method()
end, { noremap = true })

-- testing
vim.keymap.set("n", "<leader>td", function()
	require("neotest").run.run({ strategy = "dap" })
end, { noremap = true })
vim.keymap.set("n", "<leader>tr", function()
	require("neotest").run.run()
end, { noremap = true })
vim.keymap.set("n", "<leader>tf", function()
	require("neotest").run.run(vim.fn.expand("%"))
end, { noremap = true })
--[[ additional testing functionalities:
      * neotest.run.stop()
      * neotest.run.attach()
      * neotest.watch
      * neotest.output
      * neotest.output_panel
      * neotest.summary
      * neotest.diagnostic
      * neotest.status
--]]

-- formatting
--vim.keymap.set('n', '', function() end, {noremap = true})

-- quickfix
