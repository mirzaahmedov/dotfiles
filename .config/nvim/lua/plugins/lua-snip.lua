local ls = require "luasnip"

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local fmt = require "luasnip.extras.fmt".fmt

ls.config.set_config {
  history = true,
  enable_autosnippets = true,
  updateevents = "TextChanged,TextChangedI"
}

local filename = function ()
    return vim.fn.expand('%:t:r')
end

ls.add_snippets('go', {
  s('iferr',{
    t({'if err != nil {', '\t'}),
    i(0,'return err'),
    t({'\t', '}', '\t'}),
  }),
  s('iferrfn',{
    t({'if err := '}), i(1,'fn'), t({'(); err != nil {', '\t'}),
    i(0,'return err'),
    t({'\t', '}', '\t'}),
  }),
})

ls.add_snippets('typescriptreact', {
s('rc', fmt([[
type {}Props = {{
  {}
}}

const {} = () => {{
  return (
    <div>{}</div>
  )
}}
]], {
  f(filename, {}),
  i(1),
  f(filename, {}),
  i(0)
}
))

})

vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

vim.keymap.set({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})
