---@alias nerdcontrast.Color {[1]: string, [2]: integer|"NONE"}
---@alias nerdcontrast.Highlight {[string]: string|boolean, [1]: table<string,boolean>}
---@alias nerdcontrast.HiTbl table<string,nerdcontrast.Highlight>
---@alias nerdcontrast.Palette table<string,nerdcontrast.Color>
---@alias nerdcontrast.InitPalette table<"fg"|"bg",table<string,nerdcontrast.Color>|nil>
---@class nerdcontrast.Config
---@field bg boolean|nil fill background or leave it transparent
---@field export 0|1|2|nil set source terminal colors to the theme, 1=bg+fg, 2=all
---@field palette nerdcontrast.InitPalette|nil
---@field overlay boolean|nil set nvimtree+bufferline to distinct Bg
---@field reload boolean|nil reload on each theme change
---@field opacity string|nil set terminal background opacity (hex string)
---@class nerdcontrast
---@field config nerdcontrast.Config
---@field palette nerdcontrast.Palette
---@field setPalette function
---@field setTerm function
---@field themeDep nerdcontrast.HiTbl
---@field hiThemeDep function
---@field hi function
---@field setup function
---@field loaded boolean
