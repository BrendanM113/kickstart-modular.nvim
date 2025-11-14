local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s('pr', {
    t 'let { ',
    i(1, 'value'),
    t ' } = $props();',
  }),

  s('st', {
    t 'let ',
    i(1, 'value'),
    t ' = $state(',
    i(2, '0'),
    t ');',
  }),
}

