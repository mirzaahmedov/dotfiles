local ls = require "luasnip"

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local fmt = require "luasnip.extras.fmt".fmt
local rep = require "luasnip.extras".rep

ls.config.set_config {
  history = true,
  enable_autosnippets = true,
  updateevents = "TextChanged,TextChangedI"
}

local filename = function ()
    return vim.fn.expand('%:t:r')
end
local capitalize = function (args)
  return args[1][1]:sub(1,1):upper() .. args[1][1]:sub(2,-1)
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
)),
s('qr', fmt([[
const {{
  data: {},
  isLoading,
  error
}} = useQuery({{
  queryKey: ["{}"],
  queryFn: {}Query,
}})
{}
]], {
  i(1),
  i(2),
  i(3),
  i(0)
}
)),


s('mt', fmt([[
const {{
  mutate: {},
  isLoading,
  error
}} = useMutation({{
  mutationFn: {}Mutation,
  onSuccess(values) {{
    console.log(values)
  }},
  onError(error) {{
    console.log(error)
  }}
}})
{}
]], {
  i(1),
  rep(1),
  i(0)
}
)),

s('mp', fmt([[
{{Array.isArray({}) ? {}.map({} => (
  <{} key={{{}}}>{}</{}>
)) : null}}
]], {
  i(1),
  rep(1),
  i(2),
  i(3),
  i(4),
  i(0),
  rep(3)
}
)),

s('ust', fmt([[
const [{}, set{}] = useState({})
]], {
  i(1),
  f(capitalize, 1),
  i(0)
}
)),
})

vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

vim.keymap.set({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})
