local M = {
  "alexghergh/nvim-tmux-navigation",
  commit = "543f090a45cef28156162883d2412fffecb6b750",
  event = "VeryLazy",
}

function M.config()
    require("nvim-tmux-navigation").setup {
        disable_when_zoomed = true, -- defaults to false
        keybindings = {
            left = "<C-h>",
            down = "<C-j>",
            up = "<C-k>",
            right = "<C-l>",
            last_active = "<C-\\>",
            next = "<C-Space>",
        }

    }
end

return M
