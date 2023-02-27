return {
  "norcalli/nvim-colorizer.lua",
  opts = {
    "css",
    "javascript",
    html = {
      mode = "foreground",
    },
  },
  event = {
    "BufReadPost",
    "BufNewFile",
  },
}
