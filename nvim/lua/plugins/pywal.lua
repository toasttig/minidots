local function pywal()
  local file = vim.fn.expand("~/.cache/wal/colors-wal.vim")
  local f = io.open(file, "r")

  if not f then
    return
  end

  local colors = {}

  for line in f:lines() do
    local name, value = line:match('let%s+(%w+)%s*=%s*"([^"]+)"')
    if name and value then
      colors[name] = value
    end
  end

  f:close()

  local set = vim.api.nvim_set_hl

  -- Base
  set(0, "Normal", {
    fg = colors.foreground,
    bg = colors.background,
  })

  set(0, "NormalFloat", {
    fg = colors.foreground,
    bg = colors.color0,
  })

  set(0, "FloatBorder", {
    fg = colors.color8,
    bg = colors.color0,
  })

  -- Cursor / lines
  set(0, "Cursor", {
    fg = colors.background,
    bg = colors.cursor,
  })

  set(0, "CursorLine", {
    bg = colors.color0,
  })

  set(0, "LineNr", {
    fg = colors.color8,
  })

  set(0, "CursorLineNr", {
    fg = colors.color3,
    bold = true,
  })

  -- Syntax
  set(0, "Comment", {
    fg = colors.color8,
    italic = true,
  })

  set(0, "String", {
    fg = colors.color2,
  })

  set(0, "Function", {
    fg = colors.color4,
  })

  set(0, "Keyword", {
    fg = colors.color5,
  })

  set(0, "Type", {
    fg = colors.color3,
  })

  set(0, "Constant", {
    fg = colors.color6,
  })

  set(0, "Number", {
    fg = colors.color6,
  })

  set(0, "Boolean", {
    fg = colors.color6,
  })

  set(0, "Operator", {
    fg = colors.color4,
  })

  set(0, "Identifier", {
    fg = colors.foreground,
  })

  -- UI
  set(0, "StatusLine", {
    fg = colors.foreground,
    bg = colors.color0,
  })

  set(0, "StatusLineNC", {
    fg = colors.color8,
    bg = colors.color0,
  })

  set(0, "WinSeparator", {
    fg = colors.color8,
  })

  set(0, "VertSplit", {
    fg = colors.color8,
  })

  set(0, "Visual", {
    bg = colors.color8,
  })

  set(0, "Search", {
    fg = colors.background,
    bg = colors.color3,
  })

  set(0, "IncSearch", {
    fg = colors.background,
    bg = colors.color4,
  })

  -- Completion
  set(0, "Pmenu", {
    fg = colors.foreground,
    bg = colors.color0,
  })

  set(0, "PmenuSel", {
    fg = colors.background,
    bg = colors.color4,
  })

  -- Diagnostics
  set(0, "DiagnosticError", {
    fg = colors.color1,
  })

  set(0, "DiagnosticWarn", {
    fg = colors.color3,
  })

  set(0, "DiagnosticInfo", {
    fg = colors.color4,
  })

  set(0, "DiagnosticHint", {
    fg = colors.color6,
  })

  -- Git
  set(0, "GitSignsAdd", {
    fg = colors.color2,
  })

  set(0, "GitSignsChange", {
    fg = colors.color4,
  })

  set(0, "GitSignsDelete", {
    fg = colors.color1,
  })
end

return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = pywal,
    },
  },
}
