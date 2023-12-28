local treesitterC = {
  ensure_installed = {"c", "go", "python", "lua", "html", "css", "javascript", "typescript", "vim", "dockerfile", "nasm"}
}
require'nvim-treesitter.configs'.setup(treesitterC)
