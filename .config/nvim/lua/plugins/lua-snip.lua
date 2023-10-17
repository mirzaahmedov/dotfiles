local ls = require "luasnip"

local snippet = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.config.set_config {
  history = true,
  enable_autosnippets = true,
  updateevents = "TextChanged,TextChangedI"
}

ls.add_snippets('go', {
  snippet('iferr',{
    t({'if err != nil {', '\t'}),
    i(0,'return err'),
    t({'\t', '}', '\t'}),
  }),
  snippet('iferrfn',{
    t({'if err := '}), i(1,'fn'), t({'(); err != nil {', '\t'}),
    i(0,'return err'),
    t({'\t', '}', '\t'}),
  })
})

vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

vim.keymap.set({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})
