local fn = vim.fn

_G.Util = {}

P = function(...)
  local args = { ... }

  for _, v in ipairs(args) do
    print(vim.inspect(v))
  end

  return args
end

local to_rgb = function(hex)
  if #hex == 9 then
    local _, r, g, b, a = hex:match "(.)(..)(..)(..)(..)"
    return string.format(
      "rgba(%s, %s, %s, %s)",
      tonumber("0x" .. r),
      tonumber("0x" .. g),
      tonumber("0x" .. b),
      tonumber("0x" .. a)
    )
  end

  local _, r, g, b = hex:match "(.)(..)(..)(..)"
  return string.format(
    "rgb(%s, %s, %s)",
    tonumber("0x" .. r),
    tonumber("0x" .. g),
    tonumber("0x" .. b)
  )
end

local to_hex = function(rgb)
  if #rgb >= 16 then
    local r, g, b, a = rgb:match "%((%d+),%s(%d+),%s(%d+),%s(%d+)"
    return string.format("#%x%x%x%x", r, g, b, a)
  end

  local r, g, b = rgb:match "%((%d+),%s(%d+),%s(%d+)"
  return string.format("#%x%x%x", r, g, b)
end

Util.get_word = function()
  local first_line, last_line = fn.getpos("'<")[2], fn.getpos("'>")[2]
  local first_col, last_col = fn.getpos("'<")[3], fn.getpos("'>")[3]
  return fn.getline(first_line, last_line)[1]:sub(first_col, last_col)
end

Util.borders = {
  -- fancy border
  { "🭽", "FloatBorder" },
  { "▔", "FloatBorder" },
  { "🭾", "FloatBorder" },
  { "▕", "FloatBorder" },
  { "🭿", "FloatBorder" },
  { "▁", "FloatBorder" },
  { "🭼", "FloatBorder" },
  { "▏", "FloatBorder" },

  -- padding border
  -- {"▄", "Bordaa"},
  -- {"▄", "Bordaa"},
  -- {"▄", "Bordaa"},
  -- {"█", "Bordaa"},
  -- {"▀", "Bordaa"},
  -- {"▀", "Bordaa"},
  -- {"▀", "Bordaa"},
  -- {"█", "Bordaa"}
}

local get_mapper = function(mode, noremap)
  return function(lhs, rhs, opts)
    opts = opts or {}
    opts.noremap = noremap
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

Util.noremap = get_mapper("n", false)
Util.nnoremap = get_mapper("n", true)
Util.inoremap = get_mapper("i", true)
Util.tnoremap = get_mapper("t", true)
Util.vnoremap = get_mapper("v", true)

Util.is_vscode = function()
  return vim.g.vscode == 1;
end

Util.vscode_notify = function(command)
  return vim.fn.VSCodeNotify(command)
end

return Util
