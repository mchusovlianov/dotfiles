local M = {
  "nvim-telescope/telescope-fzf-native.nvim",
  commit = "9bc8237565ded606e6c366a71c64c0af25cd7a50",
  build = "make",
  dependencies =  {
    {
      "nvim-telescope/telescope.nvim",
      cmd = { "Telescope" },
    },
  },
}


function M.config()
  local telescope = require "telescope"
  telescope.load_extension "fzf"
end

return M
