local M = {
  "ray-x/go.nvim",
  commit = "a370cb932749d071a6bca20211533044c262e66d",
  event = "CmdlineEnter",
  ft = {"go", 'gomod'},
  build = ':lua require("go.install").update_all_sync()',
  dependencies = {
    {
       "ray-x/guihua.lua",
       commit = "5ad8dba19ce9b9fd8965598984dfdc9c119f97e4",
    },
    {
       "neovim/nvim-lspconfig",
       commit = "649137cbc53a044bffde36294ce3160cb18f32c7",
    },
    {
       "nvim-treesitter/nvim-treesitter",
       commit = "226c1475a46a2ef6d840af9caa0117a439465500",
    },
  },
}

function M.config()
	require("go").setup()
end

return M
