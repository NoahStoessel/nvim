function register_keybind(keybind, command, mode)
  if mode == "normal" then
    vim.api.nvim_set_keymap('n', keybind, command, { noremap = true, silent = true })
  elseif mode == "insert" then
  vim.api.nvim_set_keymap('i', keybind, command, { noremap = true, silent = true })
  elseif mode == "visual" then
  vim.api.nvim_set_keymap('v', keybind, command, { noremap = true, silent = true })
else
  print("Failed registering keybind: " .. keybind)
  end
end

function setup()
  load_tree()
  load_save()
  load_lazy()
  load_telescope()
  load_toggle_term()
  vim.cmd("set clipboard=unnamedplus")
end

function load_tree()
  -- Register keybinds for nvim tree
register_keybind("<C-E>", ":NvimTreeToggle<CR>", "normal")
register_keybind("<C-E>", "<C-C>:NvimTreeToggle<CR>", "insert")
register_keybind("<C-E>", "<C-C>:nvimtreetoggle<CR>", "visual")

end

function load_save()
  register_keybind("<C-S>", ":w<CR>", "normal")
  register_keybind("<C-S>", ":w<CR>", "insert")
  register_keybind("<C-S>", ":w<CR>", "visual")
end
function load_lazy()
 register_keybind("<C-l>s", ":Lazy sync<CR>", "normal")
end
function load_telescope()
  register_keybind("<C-F>", ":Telescope find_files<CR>", "normal")
  register_keybind("<C-W>", ":Telescope colorscheme<CR>", "normal")
end
function load_toggle_term()
  register_keybind("<C-T>", ":ToggleTerm size=40 direction=float name=terminal<CR>", "normal")
  register_keybind("<C-T>", "<C-C>:ToggleTerm size=40 direction=float name=terminal<CR>", "insert")
end
setup()
