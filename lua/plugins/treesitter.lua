return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    -- Treesitter configuration
    local config  = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "lua", "javascript" },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
    })
  end
}
