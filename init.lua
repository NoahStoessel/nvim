-- Todolist
-- Setup lazy package manager [x]
-- Setup mason [x]
-- Setup Telescope [x]
-- Setup Lualine [x]
-- Setup LSP config [x]
-- Setup Treesitter [x]
-- Setup Keybinds [x] (File Tree [x], Save [x], Packages [x], Telescope [x], Toggle Term[x])
-- Setup Git integration [x]
-- Setup Toggle Term [x]
-- Setup Color theme [x]
-- Setup Nvim Tree [x]
-- Setup Dashboard(use alpha.nvim) [x]
-- Setup Qemu Integration(Create Plugin) [x]
-- Setup Tabs, Pages, etc [x]
-- Setup Auto Bracket/Html tag completion [x]
-- Setup Discord RPC [x]
-- Setup Mason Config [x]
-- Setup Lualine theme [x]
-- Add Relative Line Numbers [x]
-- Setup Showing Colors/HexCodes Plugin [x]
-- Change tab to 2 spaces [x]
-- ========================================================
-- =                    Lazy.nvim Stuff                   =
-- ========================================================
-- Bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
-- Get plugin table
local Plug = require("plugins.plugins")
local Plugins = Plug.Plugins
-- Load plugins
require("lazy").setup(Plugins)

-- ========================================================
-- =                   Plugin Configs                     =
-- ========================================================

-- Require mason Config
require "plugins.configs.mason"

-- Require Telescope Config
require "plugins.configs.telescope"

-- Require Lualine Config
require "plugins.configs.lualine"

-- Require gruvbox Config
require "plugins.configs.gruvbox"
-- One Dark config
require "plugins.configs.onedark"

-- Require Treesitter Config
require "plugins.configs.treesitter"

-- Require FileTree Config
require "plugins.configs.nvim-tree"

-- Require ToggleTerm Config
require "plugins.configs.toggleterm"

-- Require Tabs Config
require "plugins.configs.barbar"

-- Require Bracket Complete Plugin
require "plugins.configs.autoclose"

-- Require Tag Complete Plugin
require "plugins.configs.autotag"

-- Require Discord RPC Config
require "plugins.configs.presence"

-- Require LSP Config
require "plugins.configs.lsp"

-- Require colorizer config
require "plugins.configs.colors"

-- Alpha Config
require "plugins.configs.alpha"

-- Fugitive config
require "plugins.configs.git"

-- ========================================================
-- =                      Configs                         =
-- ========================================================

-- Require line configs
require "config.lines"
-- Require tabs to space config
require "config.space-to-tab"
-- Load custom plugins
require "plugins.configs.custom.qemu"
-- Load Keybinds
require "config.keybinds"

