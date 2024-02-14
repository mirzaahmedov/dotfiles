local ls = require 'luasnip'

local s = ls.snippet
local i = ls.insert_node

local fmt = require('luasnip.extras.fmt').fmt

ls.config.set_config {
  history = true,
  enable_autosnippets = true,
  updateevents = 'TextChanged,TextChangedI',
}

ls.add_snippets('go', {
  s(
    'rerr',
    fmt(
      [[
if err != nil {{
  return err, {}
}}
{}
]],
      { i(1), i(0) }
    )
  ),

  s(
    'herr',
    fmt(
      [[
if err != nil {{
  {}
}}
{}
]],
      { i(1), i(0) }
    )
  ),

  s(
    'serr',
    fmt(
      [[
if err{} := {}; err != nil {{
  {}
}}
{}
]],
      { i(1), i(2), i(3), i(0) }
    )
  ),
})
