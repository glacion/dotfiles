return {
  "norcalli/nvim-colorizer.lua",
  opts = {
    "css",
    "javascript",
    "typescript",
    html = {
      mode = "foreground",
    },
  },
  event = {
    "BufReadPost",
    "BufNewFile",
  },
}
