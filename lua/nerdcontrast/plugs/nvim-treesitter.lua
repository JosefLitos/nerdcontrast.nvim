return {
	["@field"] = "LightGreen",
	["@variable"] = "Variable",
	["@parameter"] = "Parameter",
	["@constructor"] = "Type",
	["@keyword.operator"] = "Keyword",
	["@environment"] = "Constant",
	["@attribute"] = "Parameter",
	["@storageclass"] = "Keyword",
	["@type.builtin"] = "Keyword",
	["@constant.builtin"] = "Keyword",
	["@function.builtin"] = "Keyword",
	-- TreeSitter language highlight changes
	["@text.reference.gitcommit"] = "Variable",
	["@text.uri.gitcommit"] = "String",
	-- C/CPP
	["@property"] = "@field",
	["@include.c"] = "PreProc",
	["@include.cpp"] = "PreProc",
	-- Java
	["@type.qualifier"] = "Keyword",
	["@variable.builtin.java"] = "Keyword",
	["@attribute.java"] = "PreProc",
	-- LaTeX
	["@text.environment.latex"] = "Keyword",
	["@text.environment.name.latex"] = "Constant",
	["@text.reference.latex"] = "Title",
	["@text.title"] = "Title",
	["@text.emphasis"] = {italic = true},
	["@text.strong"] = {bold = true},
	["@text.math"] = "Pink",
	["@function.latex"] = "Variable",
	["@error.latex"] = "String",
	["@namespace.latex"] = "Command",
	["@environment.latex"] = "Command",
	-- Markdown
	["@text.literal"] = "Cyan",
	["@text.uri"] = "Link",
	["@text.reference"] = "Url",
	["@none"] = "Fg1",
	-- HTML
	["@tag"] = "Statement",
	["@tag.delimiter"] = "Delimiter",
	-- Singles
	["@property.css"] = "Parameter",
	["@tag.attribute"] = "Parameter", -- XML
	["@string.special"] = "LightOrange", -- Vim regex
	["@constructor.lua"] = "Delimiter",
	["@field.yaml"] = "Variable",
	["@label.json"] = "Variable",
	["@type.query"] = "Keyword",
	["@none.bash"] = "String",
}
