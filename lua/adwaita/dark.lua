local u = require 'adwaita.utils'
local link_other_highlights = require 'adwaita.utils'.link_other_highlights

local highlight = u.highlight

local colors = u.gen_colors()

local M = {}

local set_terminal_color = function()
    vim.g.terminal_color_0          = colors.libadwaita_dark
    vim.g.terminal_color_1          = colors.red_2
    vim.g.terminal_color_2          = colors.green_2
    vim.g.terminal_color_3          = colors.orange_3
    vim.g.terminal_color_4          = colors.blue_2
    vim.g.terminal_color_5          = colors.purple_3
    vim.g.terminal_color_6          = colors.teal_2
    vim.g.terminal_color_7          = colors.light_4
    vim.g.terminal_color_8          = colors.light_7
    vim.g.terminal_color_9          = colors.red_1
    vim.g.terminal_color_10         = colors.green_1
    vim.g.terminal_color_11         = colors.orange_2
    vim.g.terminal_color_12         = colors.blue_1
    vim.g.terminal_color_13         = colors.purple_1
    vim.g.terminal_color_14         = colors.teal_1
    vim.g.terminal_color_15         = colors.light_3
    vim.g.terminal_color_background = colors.libadwaita_dark
    vim.g.terminal_color_foreground = colors.light_4
end

M.set = function()
    set_terminal_color()
    highlight('Normal', colors.light_4, colors.libadwaita_dark, 'none', 'none')
    highlight('NormalFloat', colors.light_4, colors.libadwaita_dark_alt, 'none', 'none')
    highlight('FloatBorder', colors.split_and_borders, colors.libadwaita_dark_alt, 'none', 'none')
    highlight('ColorColumn', 'none', colors.libadwaita_dark_alt, 'none', 'none')
    highlight('Cursor', colors.libadwaita_dark, colors.light_5, 'none', 'none')
    highlight('CursorLine', 'none', vim.g.adwaita_disable_cursorline and 'none' or colors.libadwaita_dark_alt, 'none', 'none')
    highlight('CursorColumn', 'none', colors.libadwaita_dark_alt, 'none', 'none')
    highlight('Directory', colors.light_1, colors.libadwaita_dark, 'bold', 'none')
    highlight('DiffAdd', colors.teal_3, colors.libadwaita_dark, 'none', 'none')
    highlight('DiffChange', colors.orange_3, colors.libadwaita_dark, 'none', 'none')
    highlight('DiffDelete', colors.red_1, colors.libadwaita_dark, 'none', 'none')
    highlight('DiffText', colors.violet_2, colors.libadwaita_dark, 'none', 'none')
    highlight('EndOfBuffer', colors.libadwaita_dark, colors.libadwaita_dark, 'none', 'none')
    highlight('ErrorMsg', colors.red_3, colors.libadwaita_dark, 'underline', 'none')
    highlight('VertSplit', colors.split_and_borders, colors.libadwaita_dark, 'none', 'none')
    highlight('Folded', colors.dark_1, colors.libadwaita_dark, 'none', 'none')
    highlight('FoldedColumn', colors.dark_1, colors.libadwaita_dark, 'none', 'none')
    highlight('SignColumn', colors.dark_2, colors.libadwaita_dark, 'none', 'none')
    highlight('IncSearch', colors.dark_4, colors.yellow_4, 'none', 'none')
    highlight('LineNr', colors.dark_2, colors.libadwaita_dark, 'none', 'none')
    highlight('CursorLineNr', colors.light_7, vim.g.adwaita_disable_cursorline and 'none' or colors.libadwaita_dark_alt, 'bold', 'none')
    highlight('MatchParen', colors.light_4, 'none', 'bold', 'none')
    highlight('ModeMsg', colors.light_4, colors.libadwaita_dark_alt, 'none', 'none')
    highlight('MoreMsg', colors.light_4, colors.libadwaita_dark_alt, 'none', 'none')
    highlight('NonText', colors.dark_1, 'none', 'none', 'none')
    highlight('Pmenu', colors.light_4, colors.libadwaita_dark_alt, 'none', 'none')
    highlight('PmenuSel', colors.light_4, colors.blue_5, 'none', 'none')
    highlight('PmenuSbar', 'none', colors.dark_1, 'none', 'none')
    highlight('PmenuThumb', 'none', colors.light_5, 'none', 'none')
    highlight('Question', colors.blue_1, colors.libadwaita_dark, 'none', 'none')
    highlight('Search', colors.dark_4, colors.yellow_4, 'none', 'none')
    highlight('SpecialKey', colors.dark_2, colors.libadwaita_dark, 'none', 'none')
    highlight('StatusLine', colors.light_4, colors.libadwaita_dark_alt, 'none', 'none')
    highlight('StatusLineNC', colors.light_4, colors.libadwaita_dark_alt, 'none', 'none')
    highlight('Tabline', colors.light_4, colors.libadwaita_dark_alt, 'none', 'none')
    highlight('TablineFill', colors.light_4, colors.libadwaita_dark_alt, 'none', 'none')
    highlight('TablineSel', colors.light_4, colors.libadwaita_dark, 'none', 'none')
    highlight('Title', 'none', 'none', 'bold', 'none')
    highlight('Visual', 'none', colors.blue_7, 'none', 'none')
    highlight('VisualNOS', 'none', colors.blue_7, 'none', 'none')
    highlight('WarningMsg', colors.yellow_4, 'none', 'bold', 'none')
    highlight('WildMenu', colors.light_4, colors.blue_5, 'none', 'none')
    highlight('Comment', colors.dark_1, 'none', 'none', 'none')
    highlight('Constant', colors.violet_2, 'none', 'none', 'none')
    highlight('String', colors.teal_2, 'none', 'none', 'none')
    highlight('Character', colors.teal_2, 'none', 'none', 'none')
    highlight('Number', colors.violet_2, 'none', 'none', 'none')
    highlight('Boolean', colors.violet_2, 'none', 'none', 'none')
    highlight('Float', colors.violet_2, 'none', 'none', 'none')
    highlight('Identifier', colors.orange_2, 'none', 'none', 'none')
    highlight('Function', colors.blue_2, 'none', 'none', 'none')
    highlight('Statement', colors.purple_2, 'none', 'none', 'none')
    highlight('Conditional', colors.orange_2, 'none', 'bold', 'none')
    highlight('Repeat', colors.purple_1, 'none', 'none', 'none')
    highlight('Label', colors.purple_2, 'none', 'none', 'none')
    highlight('Operator', colors.purple_2, 'none', 'none', 'none')
    highlight('Keyword', colors.orange_2, 'none', 'bold', 'none')
    highlight('Exception', colors.orange_4, 'none', 'none', 'none')
    highlight('PreProc', colors.violet_2, 'none', 'none', 'none')
    highlight('Include', colors.orange_2, 'none', 'none', 'none')
    highlight('Define', colors.yellow_6, 'none', 'none', 'none')
    highlight('Macro', colors.yellow_6, 'none', 'none', 'none')
    highlight('Type', colors.teal_2, 'none', 'none', 'none')
    highlight('StorageClass', colors.teal_2, 'none', 'bold', 'none')
    highlight('Typedef', colors.teal_2, 'none', 'none', 'none')
    highlight('Structure', colors.teal_2, 'none', 'none', 'none')
    highlight('Special', colors.red_3, 'none', 'none', 'none')
    highlight('SpecialChar', colors.red_3, 'none', 'none', 'none')
    highlight('Tag', colors.teal_2, 'none', 'none', 'none')
    highlight('Delimiter', colors.light_4, 'none', 'none', 'none')
    highlight('SpecialComment', colors.dark_1, 'none', 'none', 'none')
    highlight('Debug', colors.light_4, 'none', 'none', 'none')
    highlight('Underline', colors.light_4, 'none', 'underline', 'none')
    highlight('Conceal', colors.light_4, 'none', 'none', 'none')
    highlight('Ignore', colors.light_4, 'none', 'none', 'none')
    highlight('Error', colors.red_1, 'none', 'undercurl', 'none')
    highlight('Todo', colors.light_4, 'none', 'none', 'none')
    highlight('SpellBad', colors.red_3, 'none', 'undercurl', 'none')
    highlight('SpellCap', colors.red_3, 'none', 'undercurl', 'none')
    highlight('SpellRare', colors.red_3, 'none', 'undercurl', 'none')
    highlight('SpellLocal', colors.red_3, 'none', 'undercurl', 'none')
    highlight('Whitespace', colors.libadwaita_dark_alt, 'none', 'none', 'none')

    highlight('@punctuation', colors.light_4, 'none', 'none', 'none')
    highlight('@punctuation.bracket', colors.light_4, 'none', 'none', 'none')
    highlight('@punctuation.delimiter', colors.light_4, 'none', 'none', 'none')
    highlight('@punctuation.special', colors.red_3, 'none', 'none', 'none')
    highlight('@comment', colors.dark_2, 'none', 'none', 'none')
    highlight('@constant', colors.violet_2, 'none', 'none', 'none')
    highlight('@constant.builtin', colors.violet_2, 'none', 'bold', 'none')
    highlight('@constant.macro', colors.teal_3, 'none', 'bold', 'none')
    highlight('@constant.numeric', colors.teal_3, 'none', 'bold', 'none')
    highlight('@constant.character', colors.teal_3, 'none', 'bold', 'none')
    highlight('@constant.character.escape', colors.violet_2, 'none', 'bold', 'none')
    highlight('@string.regex', colors.purple_2, 'none', 'none', 'none')
    highlight('@string.special', colors.blue_2, 'none', 'none', 'none')
    highlight('@string', colors.teal_2, 'none', 'none', 'none')
    highlight('@character', colors.teal_2, 'none', 'none', 'none')
    highlight('@number', colors.violet_2, 'none', 'none', 'none')
    highlight('@boolean', colors.violet_2, 'none', 'none', 'none')
    highlight('@float', colors.violet_2, 'none', 'none', 'none')
    highlight('@annotation', colors.yellow_4, 'none', 'none', 'none')
    highlight('@attribute', colors.orange_4, 'none', 'none', 'none')
    highlight('@namespace', colors.orange_2, 'none', 'none', 'none')
    highlight('@function.builtin', colors.blue_2, 'none', 'none', 'none')
    highlight('@function.macro', colors.blue_2, 'none', 'bold', 'none')
    highlight('@function.special', colors.blue_2, 'none', 'bold', 'none')
    highlight('@function', colors.blue_2, 'none', 'none', 'none')
    highlight('@parameter', colors.orange_2, 'none', 'none', 'none')
    highlight('@parameter.reference', colors.orange_2, 'none', 'none', 'none')
    highlight('@method', colors.blue_2, 'none', 'none', 'none')
    highlight('@field', colors.teal_2, 'none', 'none', 'none')
    highlight('@property', colors.teal_2, 'none', 'none', 'none')
    highlight('@constructor', colors.blue_2, 'none', 'none', 'none')
    highlight('@conditional', colors.orange_2, 'none', 'bold', 'none')
    highlight('@repeat', colors.purple_1, 'none', 'none', 'none')
    highlight('@label', colors.purple_2, 'none', 'none', 'none')
    highlight('@operator', colors.purple_2, 'none', 'none', 'none')
    highlight('@keyword', colors.orange_2, 'none', 'bold', 'none')
    highlight('@keyword.function', colors.orange_2, 'none', 'bold', 'none')
    highlight('@keyword.operator', colors.purple_2, 'none', 'bold', 'none')
    highlight('@exception', colors.orange_4, 'none', 'none', 'none')
    highlight('@type', colors.teal_2, 'none', 'bold', 'none')
    highlight('@type.builtin', colors.teal_2, 'none', 'bold', 'none')
    highlight('@type.qualifier', colors.teal_2, 'none', 'bold', 'none')
    highlight('@storageClass', colors.teal_2, 'none', 'bold', 'none')
    highlight('@structure', colors.teal_2, 'none', 'bold', 'none')
    highlight('@include', colors.orange_2, 'none', 'bold', 'none')
    highlight('@variable', colors.light_4, 'none', 'none', 'none')
    highlight('@variable.builtin', colors.orange_2, 'none', 'none', 'none')
    highlight('@variable.other', colors.teal_2, 'none', 'none', 'none')
    highlight('@variable.other.number', colors.teal_2, 'none', 'none', 'none')

    highlight('@text', colors.teal_2, 'none', 'none', 'none')
    highlight('@text.underline', colors.light_4, 'none', 'underline', 'none')
    highlight('@tag', colors.teal_2, 'none', 'none', 'none')
    highlight('@tag.delimiter', colors.teal_2, 'none', 'none', 'none')
    highlight('@tag.attribute', colors.teal_4, 'none', 'none', 'none')

    highlight('@text.title', colors.teal_2, 'none', 'bold', 'none')
    highlight('@text.literal', 'none', 'none', 'none', 'none')
    highlight('markdown@text.literal', colors.orange_3, 'none', 'none', 'none')
    highlight('markdown_inline@text.literal', colors.orange_3, 'none', 'none', 'none')
    highlight('@text.emphasis', 'none', 'none', 'italic', 'none')
    highlight('@text.strong', 'none', 'none', 'bold', 'none')
    highlight('@text.uri', colors.blue_2, 'none', 'none', 'none')
    highlight('@textReference', colors.red_3, 'none', 'none', 'none')
    highlight('@punctuation.delimiter', colors.light_4, 'none', 'none', 'none')
    highlight('@stringEscape', colors.teal_2, 'none', 'none', 'none')
    highlight('@text.note', colors.blue_2, 'none', 'none', 'none')
    highlight('@text.warning', colors.yellow_2, 'none', 'none', 'none')
    highlight('@text.danger', colors.red_3, 'none', 'none', 'none')
    highlight('@error', colors.red_4, 'none', 'none', 'none')

    highlight('htmlTag', colors.teal_2, 'none', 'none', 'none')
    highlight('htmlEndTag', colors.teal_2, 'none', 'none', 'none')
    highlight('htmlTagName', colors.teal_2, 'none', 'none', 'none')
    highlight('htmlSpecialTagName', colors.teal_2, 'none', 'none', 'none')
    highlight('htmlArg', colors.orange_2, 'none', 'none', 'none')

    highlight('NvimTreeRootFolder', colors.light_4, 'none', 'none', 'none')
    highlight('NvimTreeFolderIcon', colors.light_4, 'none', 'none', 'none')
    highlight('NvimTreeFolderName', colors.light_4, 'none', 'bold', 'none')
    highlight('NvimTreeEmptyFolderName', colors.light_4, 'none', 'bold', 'none')
    highlight('NvimTreeOpenedFolderName', colors.light_4, 'none', 'bold', 'none')
    highlight('NvimTreeVertSplit', colors.libadwaita_dark, colors.libadwaita_dark, 'none', 'none')
    highlight('NvimTreeNormal', 'none', colors.libadwaita_tree, 'none', 'none')
    highlight('NvimTreeEndOfBuffer', colors.libadwaita_tree, colors.libadwaita_tree, 'none', 'none')

    highlight('BufferLineIndicatorSelected', 'none', colors.libadwaita_dark, 'none', 'none')
    highlight('BufferLineFill', 'none', colors.libadwaita_dark_alt, 'none', 'none')

    highlight('LspFloatWinNormal', colors.light_4, 'none', 'none', 'none')
    highlight('LspFloatWinBorder', colors.split_and_borders, 'none', 'none', 'none')
    highlight('LspSagaHoverBorder', colors.split_and_borders, 'none', 'none', 'none')
    highlight('LspSagaSignatureHelpBorder', colors.split_and_borders, 'none', 'none', 'none')
    highlight('LspSagaCodeActionBorder', colors.split_and_borders, 'none', 'none', 'none')
    highlight('LspSagaDefPreviewBorder', colors.split_and_borders, 'none', 'none', 'none')
    highlight('LspLinesDiagBorder', colors.split_and_borders, 'none', 'none', 'none')
    highlight('LspSagaRenameBorder', colors.split_and_borders, 'none', 'none', 'none')
    highlight('LspSagaBorderTitle', colors.split_and_borders, 'none', 'none', 'none')
    highlight('LSPSagaDiagnosticTruncateLine', colors.split_and_borders, 'none', 'none', 'none')
    highlight('LspSagaDiagnosticBorder', colors.split_and_borders, 'none', 'none', 'none')
    highlight('LspSagaShTruncateLine', colors.split_and_borders, 'none', 'none', 'none')
    highlight('LspSagaDocTruncateLine', colors.split_and_borders, 'none', 'none', 'none')
    highlight('LspSagaLspFinderBorder', colors.split_and_borders, 'none', 'none', 'none')

    highlight('TelescopePromptBorder', colors.split_and_borders, 'none', 'none', 'none')
    highlight('TelescopeResultsBorder', colors.split_and_borders, 'none', 'none', 'none')
    highlight('TelescopePreviewBorder', colors.split_and_borders, 'none', 'none', 'none')
    highlight('TelescopeNormal', colors.light_4, 'none', 'none', 'none')
    highlight('TelescopeSelection', colors.light_4, colors.blue_5, 'none', 'none')
    highlight('TelescopeMultiSelection', colors.light_4, colors.blue_5, 'none', 'none')
    highlight('TelescopeMatching', colors.light_4, 'none', 'bold', 'none')
    highlight('TelescopePromptPrefix', colors.light_4, 'none', 'bold', 'none')

    highlight('LspReferenceText', 'none', colors.blue_7, 'none', 'none')
    highlight('LspReferenceRead', 'none', colors.blue_7, 'none', 'none')
    highlight('LspReferenceWrite', 'none', colors.blue_7, 'none', 'none')
    highlight('DiagnosticError ', colors.red_2, 'none', 'none', 'none')
    highlight('DiagnosticWarn ', colors.yellow_6, 'none', 'none', 'none')
    highlight('DiagnosticHint ', colors.blue_4, 'none', 'none', 'none')
    highlight('DiagnosticInfo ', colors.teal_5, 'none', 'none', 'none')

    highlight('CocHighlightText', 'none', colors.blue_7, 'none', 'none')
    highlight('CocHighlightRead', 'none', colors.blue_7, 'none', 'none')
    highlight('CocHighlightWrite', 'none', colors.blue_7, 'none', 'none')

    highlight('CmpItemKind', colors.light_4, 'none', 'none', 'none')

    highlight('GitSignsAddLn', colors.green_2, colors.green_6, 'none', 'none')
    highlight('GitSignsChangeLn', colors.orange_1, colors.orange_5, 'none', 'none')
    link_other_highlights()
end


return M
