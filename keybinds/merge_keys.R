library(jsonlite)
library(purrr)

# pkg = read_json("package.json")
fs = dir("json", "*.json", full.name = TRUE)
lst = map(fs, read_json)
keybindings = do.call(c, lst)
# pkg$contributes$keybindings = keybindings

write_json(keybindings, "../keybindings.json", pretty = TRUE, auto_unbox = TRUE)
