local ls = require "luasnip"

-- load snippets from path/of/your/nvim/config/my-cool-snippets

ls.config.set_config {
  history = true,
  enable_autosnippets = true,
  updateevents = "TextChanged,TextChangedI"
}

require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./snippets" } })

