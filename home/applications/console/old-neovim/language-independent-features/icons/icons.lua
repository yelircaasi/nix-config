local devicons = require("nvim-web-devicons")

devicons.setup {
    default = true;
   override = {
       json = {
           icon = "",
           name = "json"
       },
       html = {
           icon = "",
           color = "<| color.nvim.icon.html |>",
           name = "html"
       },
       css = {
           icon = "",
           color = "<| color.nvim.icon.css |>",
           name = "css"
       },
       js = {
           icon = "",
           name = "js"
       },
       ts = {
           icon = "",
           color = "<| color.nvim.icon.ts |>",
           name = "ts"
       },
       kt = {
           icon = "󱈙",
           color = "<| color.nvim.icon.kt |>",
           name = "kt"
       },
       png = {
           icon = " ",
           color = "<| color.nvim.icon.png |>",
           name = "png"
       },
       jpg = {
           icon = " ",
           color = "<| color.nvim.icon.jpg |>",
           name = "jpg"
       },
       jpeg = {
           icon = " ",
           color = "<| color.nvim.icon.jpg |>",
           name = "jpeg"
       },
       mp3 = {
           icon = "",
           color = "<| color.nvim.icon.mp3 |>",
           name = "mp3"
       },
       mp4 = {
           icon = "",
           color = "<| color.nvim.icon.mp4 |>",
           name = "mp4"
       },
       out = {
           icon = "",
           color = "<| color.nvim.icon.out |>",
           name = "out"
       },
       Dockerfile = {
           icon = "",
           color = "<| color.nvim.icon.dockerfile |>",
           name = "Dockerfile"
       },
       rb = {
           icon = "",
           color = "<| color.nvim.icon.rb |>",
           name = "rb"
       },
       vue = {
           icon = "﵂",
           color = "<| color.nvim.icon.vue |>",
           name = "vue"
       },
       py = {
           icon = "",
           color = "<| color.nvim.icon.py |>",
           name = "py"
       },
       toml = {
           icon = "",
           color = "<| color.nvim.icon.toml |>",
           name = "toml"
       },
       lock = {
           icon = "",
           color = "<| color.nvim.icon.lock |>",
           name = "lock"
       },
       zip = {
           icon = "",
           color = "<| color.nvim.icon.zip |>",
           name = "zip"
       },
       xz = {
           icon = "",
           color = "<| color.nvim.icon.xz |>",
           name = "xz"
       },
       deb = {
           icon = "",
           color = "<| color.nvim.icon.deb |>",
           name = "deb"
       },
       rpm = {
           icon = "",
           color = "<| color.nvim.icon.rpm |>",
           name = "rpm"
       }
   }
}

return devicons

