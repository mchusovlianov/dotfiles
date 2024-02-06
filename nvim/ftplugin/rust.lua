-- Rust specific keybindings
local keymap = vim.keymap.set
local key_opts = { silent = true }

keymap("n", "<leader>rh", "<cmd>RustSetInlayHints<Cr>", key_opts)
keymap("n", "<leader>rhd", "<cmd>RustDisableInlayHints<Cr>", key_opts)
keymap("n", "<leader>th", "<cmd>RustToggleInlayHints<Cr>", key_opts)
keymap("n", "<leader>rr", "<cmd>RustRunnables<Cr>", key_opts)
keymap("n", "<leader>rem", "<cmd>RustExpandMacro<Cr>", key_opts)
keymap("n", "<leader>roc", "<cmd>RustOpenCargo<Cr>", key_opts)
keymap("n", "<leader>rpm", "<cmd>RustParentModule<Cr>", key_opts)
keymap("n", "<leader>rjl", "<cmd>RustJoinLines<Cr>", key_opts)
keymap("n", "<leader>rha", "<cmd>RustHoverActions<Cr>", key_opts)
keymap("n", "<leader>rhr", "<cmd>RustHoverRange<Cr>", key_opts)
keymap("n", "<leader>rmd", "<cmd>RustMoveItemDown<Cr>", key_opts)
keymap("n", "<leader>rmu", "<cmd>RustMoveItemUp<Cr>", key_opts)
keymap("n", "<leader>rsb", "<cmd>RustStartStandaloneServerForBuffer<Cr>", key_opts)
keymap("n", "<leader>rd", "<cmd>RustDebuggables<Cr>", key_opts)
keymap("n", "<leader>rv", "<cmd>RustViewCrateGraph<Cr>", key_opts)
keymap("n", "<leader>rw", "<cmd>RustReloadWorkspace<Cr>", key_opts)
keymap("n", "<leader>rss", "<cmd>RustSSR<Cr>", key_opts)
keymap("n", "<leader>rxd", "<cmd>RustOpenExternalDocs<Cr>", key_opts)

local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set(
  "n", 
  "<leader>a", 
  function()
    vim.cmd.RustLsp('codeAction') -- supports rust-analyzer's grouping
    -- or vim.lsp.buf.codeAction() if you don't want grouping.
  end,
  { silent = true, buffer = bufnr }
)


local keymap = vim.api.nvim_buf_set_keymap
local opts = { noremap = true, silent = true }

keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
keymap(bufnr, "n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
keymap(bufnr, "n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
keymap(bufnr, "n", "<leader>li", "<cmd>LspInfo<cr>", opts)
keymap(bufnr, "n", "<leader>lI", "<cmd>Mason<cr>", opts)
keymap(bufnr, "n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
keymap(bufnr, "n", "<leader>lj", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>", opts)
keymap(bufnr, "n", "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>", opts)
keymap(bufnr, "n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
keymap(bufnr, "n", "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
keymap(bufnr, "n", "<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
