return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader>B",
        function()
          if Snacks.picker.get({ source = "explorer" })[1] == nil then
            Snacks.picker.explorer()
          elseif Snacks.picker.get({ source = "explorer" })[1]:is_focused() == true then
            Snacks.picker.explorer()
          elseif Snacks.picker.get({ source = "explorer" })[1]:is_focused() == false then
            Snacks.picker.get({ source = "explorer" })[1]:focus()
          end
        end,
      },
    },
  },
}
