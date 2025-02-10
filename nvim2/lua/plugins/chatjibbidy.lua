return {
  "jackMort/ChatGPT.nvim",
    commit = "5b6d296eefc75331e2ff9f0adcffbd7d27862dd6",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup()
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim", -- optional
      "nvim-telescope/telescope.nvim"
    }
}
