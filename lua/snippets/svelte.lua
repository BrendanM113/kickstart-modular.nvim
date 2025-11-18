local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- Props
  s('pr', {
    t 'let { ',
    i(1, 'value'),
    t ' } = $props();',
  }),

  -- State runes
  s('st', {
    t 'let ',
    i(1, 'value'),
    t ' = $state(',
    i(2, '0'),
    t ');',
  }),

  s('stf', {
    t 'let ',
    i(1, 'value'),
    t ' = $state.frozen(',
    i(2, '{}'),
    t ');',
  }),

  s('sts', {
    t 'const ',
    i(1, 'snapshot'),
    t ' = $state.snapshot(',
    i(2, 'value'),
    t ');',
  }),

  -- Derived runes
  s('der', {
    t 'let ',
    i(1, 'computed'),
    t ' = $derived(',
    i(2, 'value'),
    t ');',
  }),

  s('derby', {
    t 'let ',
    i(1, 'computed'),
    t { ' = $derived.by(() => {', '\t' },
    i(2, 'return value;'),
    t { '', '});' },
  }),

  -- Bindable props
  s('bp', {
    t 'let { ',
    i(1, 'value'),
    t ' = $bindable() } = $props();',
  }),

  -- Effect runes
  s('eff', {
    t { '$effect(() => {', '\t' },
    i(1, '// side effect'),
    t { '', '});' },
  }),

  s('effp', {
    t { '$effect.pre(() => {', '\t' },
    i(1, '// pre-DOM update effect'),
    t { '', '});' },
  }),

  s('effr', {
    t { '$effect.root(() => {', '\t' },
    i(1, '// root effect'),
    t { '', '});' },
  }),

  -- Inspect
  s('ins', {
    t '$inspect(',
    i(1, 'value'),
    t ');',
  }),

  -- Template: if/else
  s('sif', {
    t '{#if ',
    i(1),
    t { '}', '\t' },
    i(2),
    t { '', '{/if}' },
  }),

  s('sel', {
    t '{:else}',
  }),

  s('seif', {
    t '{:else if ',
    i(1),
    t '}',
  }),

  -- Template: each
  s('each', {
    t '{#each ',
    i(1, 'items'),
    t ' as ',
    i(2, 'item'),
    t { '}', '\t' },
    i(3),
    t { '', '{/each}' },
  }),

  s('eachk', {
    t '{#each ',
    i(1, 'items'),
    t ' as ',
    i(2, 'item'),
    t ' (',
    i(3, 'item.id'),
    t { ')}', '\t' },
    i(4),
    t { '', '{/each}' },
  }),

  -- Template: await
  s('await', {
    t '{#await ',
    i(1, 'promise'),
    t { '}', '\t' },
    i(2, 'Loading...'),
    t { '', '{:then ' },
    i(3, 'result'),
    t { '}', '\t' },
    i(4),
    t { '', '{:catch ' },
    i(5, 'error'),
    t { '}', '\t' },
    i(6),
    t { '', '{/await}' },
  }),

  s('then', {
    t '{:then ',
    i(1, 'result'),
    t '}',
  }),

  s('catch', {
    t '{:catch ',
    i(1, 'error'),
    t '}',
  }),

  -- Template: key
  s('key', {
    t '{#key ',
    i(1, 'value'),
    t { '}', '\t' },
    i(2),
    t { '', '{/key}' },
  }),

  -- Template: const
  s('const', {
    t '{@const ',
    i(1, 'name'),
    t ' = ',
    i(2, 'value'),
    t '}',
  }),

  -- Template: html
  s('html', {
    t '{@html ',
    i(1, 'content'),
    t '}',
  }),

  -- Template: debug
  s('debug', {
    t '{@debug ',
    i(1, 'value'),
    t '}',
  }),

  -- Directives: events
  s('on', {
    t 'on',
    i(1, 'click'),
    t '={',
    i(2, 'handler'),
    t '}',
  }),

  -- Directives: bind
  s('bv', {
    t 'bind:value={',
    i(1, 'value'),
    t '}',
  }),

  s('bt', {
    t 'bind:this={',
    i(1, 'element'),
    t '}',
  }),

  s('bc', {
    t 'bind:checked={',
    i(1, 'checked'),
    t '}',
  }),

  -- Directives: class
  s('cls', {
    t 'class:',
    i(1, 'name'),
    t '={',
    i(2, 'condition'),
    t '}',
  }),

  -- Directives: use
  s('use', {
    t 'use:',
    i(1, 'action'),
    t '={',
    i(2, 'params'),
    t '}',
  }),
}
