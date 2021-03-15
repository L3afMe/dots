local rpd = {
    text    = '#575279',
    subtle  = '#6e6a86',
    ignored = '#9893a5',
    base    = '#F5E9DA',
    surface = '#FAF4ED',
    overlay = '#EDD7BD',
    love    = '#B4637A',
    sun     = '#EA9D34',
    rose    = '#D7827E',
    pine    = '#286983',
    foam    = '#56949F',
    iris    = '#907AA9',
    none    = 'NONE'
}

function rpd.setup_term()
    -- vim.g.terminal_color_0 = rpd.base.cli
    -- vim.g.terminal_color_1 = rpd.highlightl.cli
    -- vim.g.terminal_color_2 = rpd.highlightd.cli
    -- vim.g.terminal_color_3 = rpd.textDark.cli
    -- vim.g.terminal_color_4 = rpd.textLight.cli
    -- vim.g.terminal_color_5 = rpd.iris.cli
    -- vim.g.terminal_color_6 = rpd.subtle.cli
    -- vim.g.terminal_color_7 = rpd.faded.cli
    -- vim.g.terminal_color_8 = rpd.foam.cli
    -- vim.g.terminal_color_9 = rpd.sun.cli
    -- vim.g.terminal_color_10 = rpd.rose.cli
    -- vim.g.terminal_color_11 = rpd.love.cli
end

function rpd.hi(group, style)
    vim.api.nvim_command('highlight ' .. group .. 
        ' ' .. (style.gui and 'gui=' .. style.gui or '') .. 
        ' guifg=' .. (style.guifg and style.guifg or 'NONE') .. 
        ' guibg=' .. (style.guibg and style.guibg or 'NONE') .. 
        ' ' .. (style.guisp and ' guisp=' .. style.guisp or ''))
end

local c = {
    normal = { guifg = rpd.text },


    func = { guifg = rpd.iris },
    funcBuiltin = { guifg = rpd.foam },
    builtin = { guifg = rpd.foam },

    var = { guifg = rpd.subtle },
    
    import = { guifg = rpd.iris },
    importSpecifier = { guifg = rpd.iris },

    clasifier = { guifg = rpd.iris },

    comment = { guifg = rpd.ignored },
    commentTODO = { guifg = rpd.text, guibg = rpd.sun },

    paren = { guifg = rpd.ignored },

    operator = { guifg = rpd.iris },
    decorator = { guifg = rpd.sun },

    primStr = { guifg = rpd.sun },
    strSpecial = { guifg = rpd.rose },
    primGeneric = { guifg = rpd.rose },
    primNumber = { guifg = rpd.rose },

    error = { guifg = rpd.love }
}

function rpd.setup_groups()
    -- (N)Vim
    vim.api.nvim_command("set guicursor=n-v-c:block-Cursor,i:ver100-iCursor,n-v-c:blinkon110,i:blinkwait10")
    rpd.hi("Cursor", { guifg = rpd.overlay, guibg = rpd.iris })
    rpd.hi("iCursor", { guifg = rpd.overlay, guibg = rpd.iris })
    rpd.hi("Normal", { guifg = rpd.text, guibg = rpd.base })
    rpd.hi("CursorLine", { guibg = rpd.overlay })
    rpd.hi("Folded", { guibg = rpd.overlay, guifg = rpd.iris })
    rpd.hi("Visual", { guibg = rpd.overlay })
    rpd.hi("Search", { guibg = rpd.overlay })
    rpd.hi("LineNr", { guifg = rpd.ignored })
    rpd.hi("NonText", { guifg = rpd.ignored })
    rpd.hi("CursorLineNr", { guibg = rpd.overlay, guifg = rpd.ignored })
    rpd.hi("DiffAdd", { guifg = rpd.ignored })
    rpd.hi("DiffChange", { guifg = rpd.ignored })
    rpd.hi("DiffDelete", { guifg = rpd.sun })
    rpd.hi("DiffText", { guifg = rpd.ignored })
    rpd.hi("SignColumn", { guifg = rpd.none })
    rpd.hi("VertSplit", {  guifg = rpd.base, guifg = rpd.base })
    rpd.hi("EndOfBuffer", {  guifg = rpd.base, guifg = rpd.base })
    rpd.hi("StatusLine", {  guifg = rpd.iris, guibg = rpd.overlay })
    rpd.hi("StatusLineNC", {  guifg = rpd.iris, guibg = rpd.overlay })
    rpd.hi("MatchParen", { guifg = rpd.text, guibg = rpd.overlay })
    rpd.hi("MatchParenCur", { guifg = rpd.text, guibg = rpd.overlay })
    rpd.hi("MatchWord", { guifg = rpd.text, guibg = rpd.overlay })
    rpd.hi("Question", { guifg = rpd.foam })
    rpd.hi("Error", c.error)
    rpd.hi("ErrorMsg", c.error)


    -- VimL
    rpd.hi("vimLineComment", c.comment)
    rpd.hi("vimCommentTitle", c.comment)
    rpd.hi("vimCommentTitleLeader", c.comment)
    rpd.hi("vimLineComment", c.comment)
    rpd.hi("vimTodo", c.commentTODO)
    rpd.hi("vimCommand", c.builtin)
    rpd.hi("vimMap", c.builtin)
    rpd.hi("vimMapMod", c.paren)
    rpd.hi("vimMapModKey", c.var)
    rpd.hi("vimBracket", c.paren)
    rpd.hi("vimNotation", c.var)
    rpd.hi("vimMapLhs", c.var)
    rpd.hi("vimMapRhs", c.var)
    rpd.hi("vimMapRhsExtend", c.var)
    rpd.hi("vimAugroupKey", c.builtin)
    rpd.hi("vimAugroup", c.var)
    rpd.hi("vimAutoCmd", c.builtin)
    rpd.hi("vimUserCmd", c.func)
    rpd.hi("vimUserCommand", c.func)
    rpd.hi("vimUserAttrb", c.var)
    rpd.hi("vimUserAttrbKey", c.var)
    rpd.hi("vimAutoEvent", c.var)
    rpd.hi("vimAutoEventList", c.operator)
    rpd.hi("vimAutoCmdSpace", c.var)
    rpd.hi("vimAutoCmdSfxList", c.var)
    rpd.hi("vimFilter", c.var)
    rpd.hi("vimSet", c.builtin)
    rpd.hi("vimSetSep", c.operator)
    rpd.hi("vimSetEqual", c.operator)
    rpd.hi("vimOption", c.var)
    rpd.hi("vimFunction", c.func)
    rpd.hi("vimFuncName", c.func)
    rpd.hi("vimCmdSep", c.operator)
    rpd.hi("vimSep", c.paren)
    rpd.hi("vimParenSep", c.paren)
    rpd.hi("vimOperParen", c.var)
    rpd.hi("vimOper", c.operator)
    rpd.hi("vimVar", c.var)
    rpd.hi("vimNotFunc", c.builtin)
    rpd.hi("vimFuncVar", c.var)
    rpd.hi("vimUserFunc", c.func)
    rpd.hi("vimFBVar", c.var)
    rpd.hi("vimFuncBody", c.normal)
    rpd.hi("vimEcho", c.normal)
    rpd.hi("vimIsCommand", c.var)
    rpd.hi("vimLet", c.builtin)
    rpd.hi("vimNumber", c.primNumber)
    rpd.hi("vimString", c.primStr)
    rpd.hi("vimStringEnd", c.primStr)
    rpd.hi("vimContinue", c.strSpecial)


    -- CSS
    rpd.hi("cssComment", c.comment)
    rpd.hi("cssAtKeyword", c.decorator)
    rpd.hi("cssAtRule", c.decorator)
    rpd.hi("cssFunction", c.funcBuiltin)
    rpd.hi("cssFunctionName", c.funcBuiltin)
    rpd.hi("cssStringQQ", c.primStr)
    rpd.hi("cssTagName", c.func)
    rpd.hi("cssIdentifier", c.func)
    rpd.hi("cssClassName", c.func)
    rpd.hi("cssClassNameDot", c.func)
    rpd.hi("cssBraces", c.paren)
    rpd.hi("cssCustomProp", c.var)
    rpd.hi("cssNoise", c.operator)
    rpd.hi("cssAttrRegion", c.primGeneric)
    rpd.hi("cssAttrComma", c.paren)
    rpd.hi("cssSelectorOp", c.paren)
    rpd.hi("cssSelectorOp2", c.operator)
    rpd.hi("cssAttributeSelector", c.builtin)
    rpd.hi("cssColor", c.primGeneric)
    rpd.hi("cssUnitDecorators", c.primGeneric)
    rpd.hi("cssImportant", c.decorator)
    rpd.hi("cssPseudoClassId", c.decorator)
    rpd.hi("cssVendor", c.decorator)
    rpd.hi("cssPseudoClass", c.decorator)
    rpd.hi("cssCommonAttr", c.primGeneric)
    rpd.hi("cssBraceError", c.error)
    rpd.hi("cssBorderProp", c.var)
    rpd.hi("cssBoxProp", c.var)
    rpd.hi("cssFlexibleBoxProp", c.var)
    rpd.hi("cssBackgroundProp", c.var)
    rpd.hi("cssPositioningProp", c.var)
    rpd.hi("cssTransitionProp", c.var)
    rpd.hi("cssTextProp", c.var)
    rpd.hi("cssMediaProp", c.var)
    rpd.hi("cssBorderAttr", c.primGeneric)
    rpd.hi("cssBoxAttr", c.primGeneric)
    rpd.hi("cssFlexibleBoxAttr", c.primGeneric)
    rpd.hi("cssPositioningAttr", c.primGeneric)
    rpd.hi("cssTransitionAttr", c.primGeneric)
    rpd.hi("cssUIAttr", c.primGeneric)
    rpd.hi("cssAnimationAttr", c.primGeneric)
    rpd.hi("cssMultiColumnAttr", c.primGeneric)
    rpd.hi("cssValueLength", c.primNumber)
    rpd.hi("cssValueNumber", c.primNumber)
    rpd.hi("cssValueTime", c.primNumber)


    -- Lua
    rpd.hi("luaSymbolOperator", c.operator)
    rpd.hi("luaOperator", c.operator)
    rpd.hi("luaBraces", c.paren)
    rpd.hi("luaParen", c.paren)
    rpd.hi("luaParens", c.paren)
    rpd.hi("luaComment", c.comment)
    rpd.hi("luaCommentTodo", c.commentTODO)
    rpd.hi("luaInnerComment", c.comment)
    rpd.hi("luaTodo", c.commentTODO)
    rpd.hi("luaString", c.primStr)
    rpd.hi("luaString2", c.primStr)
    rpd.hi("luaNumber", c.primNumber)
    rpd.hi("luaConstant", c.primGeneric)
    rpd.hi("luaTable", c.primGeneric)
    rpd.hi("luaFuncCall", c.func)
    rpd.hi("luaFuncName", c.func)
    rpd.hi("luaFuncTable", c.func)
    rpd.hi("luaFunc", c.func)
    rpd.hi("luaFuncId", c.func)
    rpd.hi("luaFunction", c.clasifier)
    rpd.hi("luaFuncKeyword", c.builtin)
    rpd.hi("luaFuncParens", c.paren)
    rpd.hi("luaLocal", c.clasifier)
    rpd.hi("luaLocal", c.clasifier)
    rpd.hi("luaFor", c.builtin)
    rpd.hi("luaIn", c.builtin)
    rpd.hi("luaIfThen", c.builtin)
    rpd.hi("luaElseifThen", c.builtin)
    rpd.hi("luaThenEnd", c.builtin)
    rpd.hi("luaRepeat", c.builtin)
    rpd.hi("luaLoopBlock", c.builtin)
    rpd.hi("luaElse", c.builtin)
    rpd.hi("luaStatement", c.builtin)
    rpd.hi("luaParenError", c.error)
    rpd.hi("luaBraceError", c.error)
    rpd.hi("luaError", c.error)
end

async_load_plugin = vim.loop.new_async(vim.schedule_wrap(function()
    -- TODO: TreeSitter support
    async_load_plugin:close()
end)) 

function rpd.start()
    -- -- Clear existing highlights
    -- vim.api.nvim_command('hi clear')

    -- -- Reset syntax
    -- if vim.fn.exists('syntax_on') then
    --     vim.api.nvim_command('syntax reset')
    -- end

    -- Set light background
    vim.o.background = 'dark'
    
    -- Enable 'gui{fg, bg}' colors rather than cterm
    vim.o.termguicolors = true

    -- Set colorscheme name
    vim.g.colors_name = 'rose-pine-dawn-v2'

    -- Setup the groups
    rpd.setup_groups()

    -- Load Tree Sitter syntax
    async_load_plugin:send()
end

rpd.start()

return rpd
