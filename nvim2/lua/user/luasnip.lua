local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet

-- jump to next / prev snippet param
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap("i", "<c-l>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("s", "<c-l>", "<cmd>lua require'luasnip'.jump(1)<CR>", opts)
keymap("i", "<c-h>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)
keymap("s", "<c-h>", "<cmd>lua require'luasnip'.jump(-1)<CR>", opts)

-- dummy snippet
ls.add_snippets("all", {
	s("ternary", {
		-- equivalent to "${1:cond} ? ${2:then} : ${3:else}"
		i(1, "cond"), t(" ? "), i(2, "then"), t(" : "), i(3, "else")
	})
})

ls.add_snippets("javascript", {
  -- Styled components: base
  s("scb", {
    t({'import styled, { css } from "styled-components";'}),
    t({"", "", "export const "}), i(1, "Wrapper"), t(" = styled."), i(2, "div"), t("`"),
    t(""), i(3, ""), t('`;'),
  }),

  -- Styled components: component
  s("scc", {
    t({"export const "}), i(1, "Wrapper"), t(" = styled."), i(2, "div"), t("`"),
    t(""), i(3, ""), t('`;'),
  }),

  -- Styled components: media query desktop
  s("mqd", {
    t({"${desktop(css`"}),
    t({"", "  "}), i(1),
    t({"", "`)}"}),
  }),

  -- Styled components: media query tablet
  s("mqt", {
    t({"${tablet(css`"}),
    t({"", "  "}), i(1),
    t({"", "`)}"}),
  }),

  -- Styled components: get props
  s("pp", {
    t({"${props => props."}), i(1), t("};")
  }),

  -- storybook: base
  s("storybook", {
    t({'import { storiesOf } from "@storybook/react";'}),
    t({ "", "", 'storiesOf('}), i(1, "storyname"), t(", module);"),
  }),

  -- storybook: story
  s("story", {
    t({'stories.add("'}), i(1, "Default"), t({'", () => ('}),
    t({"", "  <"}), i(2, "Component"), t({" />"}),
    t({"", "));"}),
  }),
})

-- carry-over js snippets to react
require("luasnip").filetype_extend("javascriptreact", {"javascript"})
