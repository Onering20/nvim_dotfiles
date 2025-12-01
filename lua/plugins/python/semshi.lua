return {
    
-- Variable Highlighting
  {
    "wookayin/semshi",
    enabled = false,
    ft = "python",
    build = ":UpdateRemotePlugins",
    config = function()
      -- Example: configure Semshi highlights or keymaps
      vim.g["semshi#always_update_all_highlights"] = 1
      vim.g["semshi#simplify_markup"] = 0
      vim.g["semshi#update_delay_factor"] = 0.5
      vim.g["semshi#error_sign"] = true
    end,
    },

}

