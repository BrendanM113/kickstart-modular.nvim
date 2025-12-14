local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s('vf', {
    t '#v(1fr)',
  }),

  s('pb', {
    t '#pagebreak()',
  }),

  s('qu', {
    t '#question(points: ',
    i(1, '1'),
    t ')[',
    i(2, ''),
    t ']',
  }),
}
