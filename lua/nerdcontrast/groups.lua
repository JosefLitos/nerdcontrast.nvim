return {
	-- UI
	CursorColumn = 'CursorLine',
	CursorLineNr = { fg = 'Fg1', bg = 'CursorLine' },
	LineNr = { fg = 'Fg4', bg = 'Bg0' },
	SignColumn = 'LineNr',
	ColorColumn = 'LineNr',
	FoldColumn = 'LineNr',
	StatusLineNC = 'WinBarNC',
	WinSeparator = 'NonText',
	VertSplit = 'Fg4',
	TabLineFill = '',
	TabLineSel = 'Fg1',
	PmenuSbar = 'Bg2',
	PmenuSel = 'Visual',
	PmenuThumb = 'Bg3',
	NormalFloat = 'WinBar',
	FloatTitle = { fg = 'Ac2', bold = true },
	FloatBorder = 'Ac1',
	-- In edited file
	Normal = { fg = 'Fg1', bg = 'Bg0' },
	Substitute = { fg = 'Ac1b', bold = true, reverse = true },
	Search = { fg = 'Ac1b', bold = true },
	IncSearch = { fg = 'Ac1b', bold = true, reverse = true },
	MatchParen = { fg = 'Ac1b', italic = true, bold = true },
	Folded = { bg = 'Pmenu', italic = true },
	Title = { fg = 'Ac2b', bold = true },
	Todo = { fg = 'Bg2', bg = 'Ac1', bold = true },
	Conceal = { fg = 'SpecialKey', bg = 'Bg4' },
	NonText = { fg = 'Bg4' }, -- used for listchars (indent)
	-- Messages
	ErrorMsg = { fg = 'LightRed', bold = true },
	WarningMsg = { fg = 'LightOrange', bold = true },
	Question = { fg = 'LightYellow', bold = true },
	Error = { sp = 'LightRed', undercurl = true },
	-- Code
	Underlined = { fg = 'SpecialComment', underline = true },
	Comment = { fg = 'Comment', italic = true },
	Include = 'Keyword',
	Boolean = { fg = 'Boolean', italic = true },
	Constant = { fg = 'Constant', italic = true },
	TypeDef = 'Bold',
}
