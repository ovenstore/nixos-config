require("full-border"):setup {
  type = ui.Border.PLAIN,
}
require("git"):setup()
require("mediainfo"):setup({
  skip_labels = {
    "Complete name",
    "CompleteName_Last",
    "Unique ID",
    "File size",
    "Format/Info",
    "Codec ID/Info",
    "MD5 of the unencoded content",
  },
  skip_section_labels = { "General", "Image", "Text" },
})
require("duckdb"):setup()
