"""
" Name: rose-pine-dawn.vim
" Author: L3afMe <L3afMeAlon3@gmail.com>
" Desc: All natural pine, faux fur and a bit of soho vibes for the classy minimalist
" Version: 0.1
"""

set background=light
hi clear

if exists('syntax on')
    syntax reset
endif

set t_Co=256
let g:colors_name='rose-pine-dawn'

"""""""""""""""
"  Functions  "
"""""""""""""""
function! s:hi(groups, fg, bg)
    for group in a:groups
        exec "hi " . group . " guifg=" . a:fg[0] . " guibg=" . a:bg[0] . " ctermfg=" . a:fg[1] . " ctermbg=" . a:bg[1]
    endfor
endfunction

function! s:hifg(groups, fg)
    for group in a:groups
        exec "hi " . group . " guifg=" . a:fg[0] . " ctermfg=" . a:fg[1]
    endfor
endfunction

function! s:hibg(groups, bg)
    for group in a:groups
        exec "hi " . group . " guibg=" . a:bg[0] . " ctermbg=" . a:bg[1]
    endfor
endfunction

""""""""""""
"  Arrays  "
""""""""""""
let s:highlight  = ['#F2E9DE',  '1']
let s:highlightd = ['#EDD7BD',  '2']
let s:textLight  = ['#575279',  '3']
let s:textDark   = ['#232136',  '4']
let s:base       = ['#F5E9DA',  '5']
let s:love       = ['#B4637A',  '6']
let s:sun        = ['#EA9D34',  '7']
let s:iris       = ['#907AA9',  '8']
let s:foam       = ['#56949F',  '9']
let s:rose       = ['#D7827E', '10']
let s:subtle     = ['#C4A7E7', '11']
let s:faded      = ['#CECAED', '12']
let s:cursor     = ['#286983', '13']
let s:none       = ['NONE',  'NONE']

let s:text         = []
let s:textEscape   = []
let s:comments     = []
let s:commentsTODO = []
let s:builtins     = []
let s:primitives   = []
let s:strings      = []
let s:variables    = []
let s:functions    = []
let s:constants    = []
let s:operators    = []
let s:folds        = []
let s:parens       = []
let s:types        = []
let s:regex        = []

"""""""""""""""
"  Languages  "
"""""""""""""""
"" JavaScript
""" Text
let s:text = [
            \ 
  \ ]

""" Comments
let s:comments = [
            \ "javaScriptLineComment",
            \ "javaScriptCommentSkip",
            \ "javaScriptComment" 
  \ ]

let s:commentsTODO = [
            \ "javaScriptCommentTodo"
  \ ]

""" Primitives
let s:primitives = [
            \ "javaScriptNull",
            \ "javaScriptBoolean",
            \ "javaScriptNumber"
  \ ]

""" Operators
let s:operators += [
            \ 
  \ ]

""" Strings
let s:strings += [
            \ "javaScriptStringD",
            \ "javaScriptStringS",
            \ "javaScriptStringT"
  \ ]

""" Builtins
let s:builtins = [
            \ "javaScriptConditional",
            \ "javaScriptRepeat",
            \ "javaScriptOperator",
            \ "javaScriptStatement",
            \ "javaScriptReserved"
  \ ]
""" Functions
let s:functions = [
            \ "javaScriptFunction",
  \ ]

""" Variables
let s:variables += [
            \ 
  \ ]

""" Folds
let s:folds = [
            \ "javaScriptFunctionFold"
  \ ]

""" Parens
let s:parens = [
            \ "javaScriptBraces",
            \ "javaScriptParens"
  \ ]

""" Types
let s:types = [
            \ "javaScriptType",
            \ "javaScriptIdentifier"
  \ ]

""" Critical
let s:critical = [
            \ "javaScriptError",
            \ "javaScrParenError"
  \ ]

""" Regex
let s:regex = [
            \ "javaScriptRegexpString",
  \ ]

""" Shit still need to do
hi javaScriptSpecial          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi javaScriptEmbed            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi javaScriptSpecialCharacter guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi javaScriptFunctionFold     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi javaScriptCharacter        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi javaScriptBranch           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi javaScriptLabel            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi javaScriptException        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi javaScriptMessage          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi javaScriptGlobal           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi javaScriptMember           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi javaScriptDeprecated       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi javaScriptDebug            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi javaScriptConstant         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE

"" TypeScript
""" Text
let s:text += [
            \ 
  \ ]

""" Comments
let s:comments += [
            \ 
  \ ]

let s:commentsTODO += [
            \ 
  \ ]

""" Primitives
let s:primitives += [
            \ 
  \ ]

""" Operators
let s:operators += [
            \ 
  \ ]

""" Strings
let s:strings += [
            \ 
  \ ]

""" Builtins
let s:builtins += [
            \ 
  \ ]

""" Variables
let s:variables += [
            \ 
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ 
  \ ]

""" Types
let s:types += [
            \ 
  \ ]

""" Critical
let s:critical += [
            \ 
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

""" Shit still need to do
hi typescriptTypeCast                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptLabel                     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptBlock                     guisp=NONE guifg=#232136 guibg=NONE    ctermfg=8    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptIdentifierName            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptProp                      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptIndexExpr                 guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptDotNotation               guisp=NONE guifg=#232136 guibg=NONE    ctermfg=8    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptDotStyleNotation          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptFuncCall                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptParenExp                  guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptFuncCallArg               guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptEventFuncCallArg          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptEventString               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptASCII                     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptTemplateSubstitution      guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptString                    guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi typescriptSpecial                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptRegexpString              guisp=NONE guifg=#EA9D34 guibg=NONE    ctermfg=3    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptTemplate                  guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi typescriptArray                     guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptNumber                    guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptExponent                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptObjectLiteral             guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptObjectLabel               guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptStringProperty            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptPropertyName              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptComputedPropertyName      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptRestOrSpread              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptObjectSpread              guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptObjectColon               guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptUnaryOp                   guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptTernary                   guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptAssign                    guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptBinaryOp                  guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptVariableDeclaration       guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptEnum                      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptLoopParen                 guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi typescriptConditionalParen          guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptEndColons                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shellbang                           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptLineComment               guisp=NONE guifg=#3E8FB0 guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi typescriptComment                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptRef                       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDocComment                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDocNotation               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDocName                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDocEventRef               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDocNamedParamType         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDocParamName              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDocParamType              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDocA                      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDocAs                     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDocB                      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDocParam                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDocNumParam               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDocRef                    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDocLinkTag                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptOptionalMark              guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptTypeParameters            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptTypeParameter             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptGenericDefault            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptTypeArguments             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptTypeBracket               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptStringLiteralType         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptParenthesizedType         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptTypeReference             guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptPredefinedType            guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptObjectType                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptTupleType                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptUnion                     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptGenericFunc               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptFuncType                  guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptFuncTypeArrow             guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi typescriptGenericCall               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptCall                      guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptTypeAnnotation            guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptFuncComma                 guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptDefaultParam              guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptIndexSignature            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptAliasDeclaration          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptGlobalNumberDot           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptGlobalStringDot           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptGlobalArrayDot            guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptGlobalObjectDot           guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptGlobalSymbolDot           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptGlobalMathDot             guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptGlobalDateDot             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptGlobalJSONDot             guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptGlobalRegExpDot           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptGlobalPromiseDot          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptGlobalURLDot              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDOMNodeMethod             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptMember                    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptMethodAccessor            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptMemberOptionality         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptStringMember              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptComputedMember            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptClassName                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptClassTypeParameter        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptClassHeritage             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptClassTypeArguments        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptMixinComma                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptClassBlock                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptInterfaceName             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptInterfaceTypeParameter    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptInterfaceHeritage         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptInterfaceTypeArguments    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptInterfaceComma            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptAsyncFunc                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptFuncName                  guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptArrowFuncDef              guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptArrowFunc                 guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptArrowFuncArg              guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptReturnAnnotation          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptFuncImpl                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptGenericImpl               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptParamImpl                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDecorator                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptGlobal                    guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptGlobalMethod              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptNumberStaticProp          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptNumberStaticMethod        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptNumberMethod              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptStringStaticMethod        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptStringMethod              guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptArrayStaticMethod         guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptArrayMethod               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptObjectStaticMethod        guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptObjectMethod              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptSymbolStaticProp          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptSymbolStaticMethod        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptFunctionMethod            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptMathStaticProp            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptMathStaticMethod          guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptDateStaticMethod          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDateMethod                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptJSONStaticMethod          guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptRegExpStaticProp          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptRegExpProp                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptRegExpMethod              guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptES6MapProp                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptES6MapMethod              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptES6SetProp                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptES6SetMethod              guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptProxyAPI                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptPromiseStaticMethod       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptPromiseMethod             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptReflectMethod             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptIntlMethod                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptNodeGlobal                guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptBOM                       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptBOMWindowProp             guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptBOMWindowMethod           guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptBOMWindowEvent            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptBOMWindowCons             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptBOMNavigatorProp          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptBOMNavigatorMethod        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptServiceWorkerMethod       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptBOMLocationProp           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptBOMLocationMethod         guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptBOMHistoryProp            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptBOMHistoryMethod          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptConsoleMethod             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptXHRGlobal                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptXHRProp                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptXHRMethod                 guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptFileMethod                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptFileReaderProp            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptFileReaderMethod          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptFileListMethod            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptBlobMethod                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptURLUtilsProp              guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptURLStaticMethod           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptCryptoGlobal              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptSubtleCryptoMethod        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptCryptoProp                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptCryptoMethod              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptHeadersMethod             guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptRequestProp               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptRequestMethod             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptResponseProp              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptResponseMethod            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptServiceWorkerProp         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptCacheMethod               guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptEncodingGlobal            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptEncodingProp              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptEncodingMethod            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptGeolocationMethod         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptBOMNetworkProp            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptPaymentMethod             guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptPaymentProp               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptPaymentEvent              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptPaymentResponseMethod     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptPaymentResponseProp       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptPaymentAddressProp        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptPaymentShippingOptionProp guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDOMNodeProp               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDOMNodeType               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDOMElemAttrs              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDOMElemFuncs              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDOMDocProp                guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptDOMDocMethod              guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptDOMEventTargetMethod      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDOMEventCons              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDOMEventProp              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDOMEventMethod            guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi typescriptDOMStorage                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDOMStorageProp            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDOMStorageMethod          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDOMFormProp               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDOMFormMethod             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDOMStyle                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptAnimationEvent            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptCSSEvent                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDatabaseEvent             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDocumentEvent             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDOMMutationEvent          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDragEvent                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptElementEvent              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptFocusEvent                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptFormEvent                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptFrameEvent                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptInputDeviceEvent          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptMediaEvent                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptMenuEvent                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptNetworkEvent              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptProgressEvent             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptResourceEvent             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptScriptEvent               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptSensorEvent               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptSessionHistoryEvent       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptStorageEvent              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptSVGEvent                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptTabEvent                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptTextEvent                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptTouchEvent                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptUpdateEvent               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptValueChangeEvent          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptViewEvent                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptWebsocketEvent            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptWindowEvent               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptUncategorizedEvent        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptServiceWorkerEvent        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptReserved                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptSymbols                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptBraces                    guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi typescriptParens                    guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi typescriptCommentTodo               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDocTags                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDocNGParam                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptTemplateSB                guisp=NONE guifg=#9CCFD8 guibg=NONE    ctermfg=14   ctermbg=NONE gui=NONE cterm=NONE
hi typescriptPrototype                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptConditional               guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptConditionalElse           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptCase                      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptDefault                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptBranch                    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptIdentifier                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptVariable                  guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptEnumKeyword               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptRepeat                    guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptForOperator               guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptStatementKeyword          guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptMessage                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptOperator                  guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptKeywordOp                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptCastKeyword               guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptType                      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptNull                      guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptBoolean                   guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptImport                    guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptAmbientDeclaration        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptExport                    guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptModule                    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptTry                       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptExceptions                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptAsyncFuncKeyword          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptAsyncFor                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptFuncKeyword               guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi typescriptFuncArg                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptClassKeyword              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptClassExtends              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptAbstract                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptClassStatic               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptReadonlyModifier          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptInterfaceKeyword          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptInterfaceExtends          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptConstraint                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptReadonlyArrayKeyword      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptConstructorType           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptTypeQuery                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptAccessibilityModifier     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptMappedIn                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptConstructSignature        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptAliasKeyword              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptUserDefinedType           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi typescriptConstructor               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE

"" HTML
""" Text
let s:text += [
            \ 
  \ ]

""" Comments
let s:comments += [
            \ 
  \ ]

let s:commentsTODO += [
            \ 
  \ ]

""" Primitives
let s:primitives += [
            \ 
  \ ]

""" Operators
let s:operators += [
            \ 
  \ ]

""" Strings
let s:strings += [
            \ 
  \ ]

""" Builtins
let s:builtins += [
            \ 
  \ ]

""" Variables
let s:variables += [
            \ 
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ 
  \ ]

""" Types
let s:types += [
            \ 
  \ ]

""" Critical
let s:critical += [
            \ 
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

""" Shit still need to do
hi htmlError               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlString              guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi htmlValue               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlEndTag              guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi htmlTag                 guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi htmlTagN                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlTagError            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlTagName             guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi htmlArg                 guisp=NONE guifg=#EB6F92 guibg=NONE    ctermfg=204  ctermbg=NONE gui=NONE cterm=NONE
hi htmlSpecialChar         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlComment             guisp=NONE guifg=#3E8FB0 guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi htmlCommentError        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlCommentPart         guisp=NONE guifg=#3E8FB0 guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi htmlPreProc             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlPreStmt             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlPreError            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlPreAttr             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlPreProcAttrError    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlPreProcAttrName     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlStrike              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlBold                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlBoldUnderline       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlBoldItalic          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlBoldUnderlineItalic guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlBoldItalicUnderline guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlUnderline           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlUnderlineBold       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlUnderlineItalic     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlUnderlineItalicBold guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlUnderlineBoldItalic guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlItalic              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlItalicBold          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlItalicBoldUnderline guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlItalicUnderline     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlItalicUnderlineBold guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlLeadingSpace        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlLink                guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH1                  guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH2                  guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH3                  guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH4                  guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH5                  guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH6                  guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlHead                guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTitle               guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScript              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlScriptTag           guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi htmlEvent               guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6    ctermbg=NONE gui=NONE cterm=NONE
hi htmlEventSQ             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlEventDQ             guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptExpression    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssStyle                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlCssStyleComment     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlCssDefinition       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlStyleArg            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlSpecialTagName      guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi htmlSpecial             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi htmlStatement           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE

"" CSS
""" Text
let s:text += [
            \ 
  \ ]

""" Comments
let s:comments += [
            \ 
  \ ]

let s:commentsTODO += [
            \ 
  \ ]

""" Primitives
let s:primitives += [
            \ 
  \ ]

""" Operators
let s:operators += [
            \ 
  \ ]

""" Strings
let s:strings += [
            \ 
  \ ]

""" Builtins
let s:builtins += [
            \ 
  \ ]

""" Variables
let s:variables += [
            \ 
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ 
  \ ]

""" Types
let s:types += [
            \ 
  \ ]

""" Critical
let s:critical += [
            \ 
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

""" Shit still need to do
hi cssTagName                  guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi cssSelectorOp               guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi cssSelectorOp2              guisp=NONE guifg=#286983 guibg=NONE    ctermfg=4    ctermbg=NONE gui=NONE cterm=NONE
hi cssAttributeSelector        guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi cssClassName                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssClassNameDot             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssIdentifier               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssValueInteger             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssValueNumber              guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi cssValueLength              guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi cssValueAngle               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssValueTime                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssValueFrequency           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssColor                    guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi cssImportant                guisp=NONE guifg=#EA9D34 guibg=NONE    ctermfg=3    ctermbg=NONE gui=NONE cterm=NONE
hi cssURL                      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssFunction                 guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssFunctionComma            guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssAnimationProp            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssAnimationAttr            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssBackgroundProp           guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssBackgroundAttr           guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi cssBorderProp               guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssBoxProp                  guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssBoxAttr                  guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi cssColorProp                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssDimensionProp            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssFlexibleBoxProp          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssFlexibleBoxAttr          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssFontProp                 guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssFontAttr                 guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi cssMultiColumnProp          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssMultiColumnAttr          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssInteractProp             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssInteractAttr             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssGeneratedContentProp     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssGeneratedContentAttr     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssGridProp                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssHyerlinkProp             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssListProp                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssListAttr                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssPositioningProp          guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssPositioningAttr          guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi cssTableProp                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssTextProp                 guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssTextAttr                 guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi cssTransformProp            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssTransitionProp           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssTransitionAttr           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssUIProp                   guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssUIAttr                   guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi cssIEUIAttr                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssIEUIProp                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssAuralProp                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssAuralAttr                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssMobileTextProp           guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssMediaProp                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssKeyFrameProp             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssPageMarginProp           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssFontDescriptorProp       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssFontDescriptorAttr       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssBraces                   guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi cssError                    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssDefinition               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssBraceError               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssAttrComma                guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssPseudoClass              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssPseudoClassId            guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi cssPseudoClassFn            guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi cssUnitDecorators           guisp=NONE guifg=#286983 guibg=NONE    ctermfg=4    ctermbg=NONE gui=NONE cterm=NONE
hi cssNoise                    guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi cssComment                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssUnicodeEscape            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssSpecialCharQQ            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssSpecialCharQ             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssStringQQ                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssStringQ                  guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi cssVendor                   guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi cssHacks                    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssAttrRegion               guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi cssAtKeyword                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssAtRule                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssPagePseudo               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssDeprecated               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssContentForPagedMediaProp guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssLineboxProp              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssMarqueeProp              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssPagedMediaProp           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssPrintProp                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssRubyProp                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssSpeechProp               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssRenderProp               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssBorderAttr               guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi cssContentForPagedMediaAttr guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssDimensionAttr            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssGridAttr                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssHyerlinkAttr             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssLineboxAttr              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssMarginAttr               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssMarqueeAttr              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssPaddingAttr              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssPagedMediaAttr           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssGradientAttr             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssPrintAttr                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssRubyAttr                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssSpeechAttr               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssTableAttr                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssTransformAttr            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssRenderAttr               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssCommonAttr               guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi cssPseudoClassLang          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssFunctionName             guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi cssMediaType                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssMediaComma               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssAtRuleLogical            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssMediaAttr                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssPageProp                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssFontDescriptor           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssUnicodeRange             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssProp                     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cssAttr                     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE

"" Markdown
""" Text
let s:text += [
            \ 
  \ ]

""" Comments
let s:comments += [
            \ 
  \ ]

let s:commentsTODO += [
            \ 
  \ ]

""" Primitives
let s:primitives += [
            \ 
  \ ]

""" Operators
let s:operators += [
            \ 
  \ ]

""" Strings
let s:strings += [
            \ 
  \ ]

""" Builtins
let s:builtins += [
            \ 
  \ ]

""" Variables
let s:variables += [
            \ 
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ 
  \ ]

""" Types
let s:types += [
            \ 
  \ ]

""" Critical
let s:critical += [
            \ 
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

""" Shit still need to do
hi markdownValid               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownLineStart           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownH1                  guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH2                  guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownHeadingRule         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownH3                  guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH4                  guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH5                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownH6                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownBlockquote          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownCodeBlock           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownListMarker          guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi markdownOrderedListMarker   guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi markdownRule                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownLineBreak           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownIdDeclaration       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownUrl                 guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrlTitle            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownLinkText            guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi markdownLink                guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi markdownId                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownAutomaticLink       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownItalic              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownBold                guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownBoldItalic          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownCode                guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi markdownFootnote            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownFootnoteDefinition  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownHighlight           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownEscape              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownError               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownHeadingDelimiter    guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi markdownIdDelimiter         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownUrlDelimiter        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownUrlTitleDelimiter   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownItalicDelimiter     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownBoldDelimiter       guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi markdownBoldItalicDelimiter guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi markdownCodeDelimiter       guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE

"" Bash
""" Text
let s:text += [
            \ 
  \ ]

""" Comments
let s:comments += [
            \ 
  \ ]

let s:commentsTODO += [
            \ 
  \ ]

""" Primitives
let s:primitives += [
            \ 
  \ ]

""" Operators
let s:operators += [
            \ 
  \ ]

""" Strings
let s:strings += [
            \ 
  \ ]

""" Builtins
let s:builtins += [
            \ 
  \ ]

""" Variables
let s:variables += [
            \ 
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ 
  \ ]

""" Types
let s:types += [
            \ 
  \ ]

""" Critical
let s:critical += [
            \ 
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

""" Shit still need to do
hi shEcho                  guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi shEchoQuote             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shEmbeddedEcho          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shStatement             guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi shAlias                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shTouch                 guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shTouchCmd              guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shDoError               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shIfError               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shInError               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCaseError             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shEsacError             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCurlyError            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shParenError            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shOK                    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDTestError            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shTestError             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shOption                guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi shRedir                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shOperator              guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shPattern               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shExpr                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSubSh                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shTest                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shNoQuote               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shAstQuote              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shTestOpr               guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shTestPattern           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shTestDoubleQuote       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shTestSingleQuote       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDblBrace              guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shDblParen              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCharClass             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDo                    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shIf                    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shFor                   guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shForPP                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shRepeat                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCaseEsac              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCurlyIn               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shComma                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCaseBar               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCaseStart             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCaseLabel             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCase                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCaseExSingleQuote     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCaseSingleQuote       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCaseDoubleQuote       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCaseCommandSub        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCaseRange             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shWrapLineOperator      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCommandSubBQ          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shEscape                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCommandSub            guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi shArithmetic            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSkipInitWS            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCmdParenRegion        guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shSource                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shColon                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shNumber                guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi shCtrlSeq               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSpecial               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shExSingleQuote         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shExDoubleQuote         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSingleQuote           guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi shDoubleQuote           guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi shStringSpecial         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSpecialSQ             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSpecialDQ             guisp=NONE guifg=#9CCFD8 guibg=NONE    ctermfg=14   ctermbg=NONE gui=NONE cterm=NONE
hi shSpecialStart          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSpecialNoZS           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSpecialNxt            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shBkslshSnglQuote       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shBkslshDblQuote        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shTodo                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shComment               guisp=NONE guifg=#EA9D34 guibg=NONE    ctermfg=3    ctermbg=NONE gui=NONE cterm=NONE
hi shQuickComment          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shBQComment             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc               guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shHereString            guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shSetOption             guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi shVariable              guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shVarAssign             guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shVar                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shAtExpr                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSet                   guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi shSetList               guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi shFunctionOne           guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shFunctionTwo           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shFunctionThree         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shFunctionFour          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefWordError        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDegroupKeywordsimple  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDeref                 guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi shDerefVar              guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shDegroupKeywordspecial guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefVarArray         guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi shDerefOpError          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefOp               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefPattern          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefEscape           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDegroupKeywordstring  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefOff              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefLen              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefPPS              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefPPSleft          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefPPSright         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefPSR              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefPSRleft          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefPSRright         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shParen                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shArithRegion           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shBeginHere             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCaseIn                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shQuote                 guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi shCmdSubRegion          guisp=NONE guifg=#9CCFD8 guibg=NONE    ctermfg=14   ctermbg=NONE gui=NONE cterm=NONE
hi shDerefPOL              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shDerefDelim            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shEchoDelim             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shFunction              guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi shHerePayload           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shLoop                  guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi shPosnParm              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shRange                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSetListDelim          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSubShRegion           guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi bashAdminStatement      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi bashSpecialVariables    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi bashStatement           guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi kshSpecialVariables     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi kshStatement            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shCondError             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shSnglCase              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shConditional           guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi shExprRegion            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shFunctionKey           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shFunctionName          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shShellVariables        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shString                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc01             guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi shHereDoc02             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc03             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc04             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc05             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc06             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc07             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc08             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc09             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc10             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc11             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc12             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc13             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc14             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi shHereDoc15             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE

"" C
""" Text
let s:text += [
            \ 
  \ ]

""" Comments
let s:comments += [
            \ 
  \ ]

let s:commentsTODO += [
            \ 
  \ ]

""" Primitives
let s:primitives += [
            \ 
  \ ]

""" Operators
let s:operators += [
            \ 
  \ ]

""" Strings
let s:strings += [
            \ 
  \ ]

""" Builtins
let s:builtins += [
            \ 
  \ ]

""" Variables
let s:variables += [
            \ 
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ 
  \ ]

""" Types
let s:types += [
            \ 
  \ ]

""" Critical
let s:critical += [
            \ 
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

""" Shit still need to do
hi cBadContinuation   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cSpecial           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cFormat            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cString            guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi cCppString         guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi cCppSkip           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cCharacter         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cSpecialError      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cSpecialCharacter  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cSpaceError        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cCurlyError        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cBlock             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cParen             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cCppParen          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cParenError        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cErrInParen        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cBracket           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cCppBracket        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cErrInBracket      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cBadBlock          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cNumbers           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cNumbersCom        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cNumber            guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi cOctal             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cOctalZero         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cFloat             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cOctalError        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cCommentSkip       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cCommentString     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cComment2String    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cCommentL          guisp=NONE guifg=#3E8FB0 guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi cComment           guisp=NONE guifg=#3E8FB0 guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi cCommentError      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cCommentStartError guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cWrongComTail      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cPreCondit         guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi cPreConditMatch    guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi cCppOutWrapper     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cCppOutIf          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cCppOutIf2         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cCppOutElse        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cCppInWrapper      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cCppInIf           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cCppInElse         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cCppInElse2        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cCppOutSkip        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cCppInSkip         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cIncluded          guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi cInclude           guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi cLineSkip          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cDefine            guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi cPreProc           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cAutodocReal       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cMulti             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cUserCont          guisp=NONE guifg=#F6C177 guibg=NONE    ctermfg=11   ctermbg=NONE gui=NONE cterm=NONE
hi cUserLabel         guisp=NONE guifg=#EA9D34 guibg=NONE    ctermfg=3    ctermbg=NONE gui=NONE cterm=NONE
hi cBitField          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cCommentStart      guisp=NONE guifg=#3E8FB0 guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi cLabel             guisp=NONE guifg=#EA9D34 guibg=NONE    ctermfg=3    ctermbg=NONE gui=NONE cterm=NONE
hi cConditional       guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi cRepeat            guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi cOperator          guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cStructure         guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi cStorageClass      guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi cError             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi cStatement         guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi cType              guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6    ctermbg=NONE gui=NONE cterm=NONE
hi cConstant          guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi cTodo              guisp=NONE guifg=#286983 guibg=NONE    ctermfg=4    ctermbg=NONE gui=NONE cterm=NONE
hi cCppOut            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE

"" C++
""" Text
let s:text += [
            \ 
  \ ]

""" Comments
let s:comments += [
            \ 
  \ ]

let s:commentsTODO += [
            \ 
  \ ]

""" Primitives
let s:primitives += [
            \ 
  \ ]

""" Operators
let s:operators += [
            \ 
  \ ]

""" Strings
let s:strings += [
            \ 
  \ ]

""" Builtins
let s:builtins += [
            \ 
  \ ]

""" Variables
let s:variables += [
            \ 
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ 
  \ ]

""" Types
let s:types += [
            \ 
  \ ]

""" Critical
let s:critical += [
            \ 
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

""" Shit still need to do
hi cppCast               guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5   ctermbg=NONE gui=NONE cterm=NONE
hi cppRawString          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi cppNumber             guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1   ctermbg=NONE gui=NONE cterm=NONE
hi cppMinMax             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi cppAccess             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi cppExceptions         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi cppOperator           guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5   ctermbg=NONE gui=NONE cterm=NONE
hi cppStatement          guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6   ctermbg=NONE gui=NONE cterm=NONE
hi cppModifier           guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13  ctermbg=NONE gui=NONE cterm=NONE
hi cppType               guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1   ctermbg=NONE gui=NONE cterm=NONE
hi cppStorageClass       guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5   ctermbg=NONE gui=NONE cterm=NONE
hi cppStructure          guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5   ctermbg=NONE gui=NONE cterm=NONE
hi cppBoolean            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi cppConstant           guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1   ctermbg=NONE gui=NONE cterm=NONE
hi cppRawStringDelimiter guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE

"" Golang
""" Text
let s:text += [
            \ 
  \ ]

""" Comments
let s:comments += [
            \ 
  \ ]

let s:commentsTODO += [
            \ 
  \ ]

""" Primitives
let s:primitives += [
            \ 
  \ ]

""" Operators
let s:operators += [
            \ 
  \ ]

""" Strings
let s:strings += [
            \ 
  \ ]

""" Builtins
let s:builtins += [
            \ 
  \ ]

""" Variables
let s:variables += [
            \ 
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ 
  \ ]

""" Types
let s:types += [
            \ 
  \ ]

""" Critical
let s:critical += [
            \ 
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

""" Shit still need to do
hi goType           guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6   ctermbg=NONE gui=NONE cterm=NONE
hi goDeclaration    guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5   ctermbg=NONE gui=NONE cterm=NONE
hi goComment        guisp=NONE guifg=#3E8FB0 guibg=NONE    ctermfg=12  ctermbg=NONE gui=NONE cterm=NONE
hi goEscapeOctal    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi goEscapeC        guisp=NONE guifg=#9CCFD8 guibg=NONE    ctermfg=14  ctermbg=NONE gui=NONE cterm=NONE
hi goEscapeX        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi goEscapeU        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi goEscapeBigU     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi goEscapeError    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi goString         guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12  ctermbg=NONE gui=NONE cterm=NONE
hi goRawString      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi goCharacter      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi goBlock          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi goParen          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi goDecimalInt     guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1   ctermbg=NONE gui=NONE cterm=NONE
hi goHexadecimalInt guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi goOctalInt       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi goOctalError     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi goFloat          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi goImaginary      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi goSpaceError     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi goExtraType      guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6   ctermbg=NONE gui=NONE cterm=NONE
hi goDirective      guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5   ctermbg=NONE gui=NONE cterm=NONE
hi goDeclType       guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6   ctermbg=NONE gui=NONE cterm=NONE
hi goStatement      guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1   ctermbg=NONE gui=NONE cterm=NONE
hi goConditional    guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1   ctermbg=NONE gui=NONE cterm=NONE
hi goLabel          guisp=NONE guifg=#EB6F92 guibg=NONE    ctermfg=204 ctermbg=NONE gui=NONE cterm=NONE
hi goRepeat         guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1   ctermbg=NONE gui=NONE cterm=NONE
hi goSignedInts     guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6   ctermbg=NONE gui=NONE cterm=NONE
hi goUnsignedInts   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi goFloats         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi goComplexes      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi goBuiltins       guisp=NONE guifg=#191724 guibg=NONE    ctermfg=234 ctermbg=NONE gui=NONE cterm=NONE
hi goConstants      guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1   ctermbg=NONE gui=NONE cterm=NONE
hi goTodo           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi goSpecialString  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi Integer          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE

"" Lisp
""" Text
let s:text += [
            \ 
  \ ]

""" Comments
let s:comments += [
            \ 
  \ ]

let s:commentsTODO += [
            \ 
  \ ]

""" Primitives
let s:primitives += [
            \ 
  \ ]

""" Operators
let s:operators += [
            \ 
  \ ]

"""" Strings
let s:strings += [
            \ 
  \ ]

""" Strings
let s:strings += [
            \ 
  \ ]

""" Builtins
let s:builtins += [
            \ 
  \ ]

""" Variables
let s:variables += [
            \ 
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ 
  \ ]

""" Types
let s:types += [
            \ 
  \ ]

""" Critical
let s:critical += [
            \ 
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

""" Shit still need to do
hi lispSymbol         guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi lispBarSymbol      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi lispParen0         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi lispParen1         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi lispParen2         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi lispParen3         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi lispParen4         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi lispParen5         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi lispParen6         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi lispParen7         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi lispParen8         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi lispParen9         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi lispList           guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi lispBQList         guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi lispAtomMark       guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi lispAtom           guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6    ctermbg=255  gui=NONE cterm=NONE
hi lispAtomBarSymbol  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi lispAtomList       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi lispAtomNmbr       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi lispLeadWhite      guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi lispFunc           guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi lispString         guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi lispInString       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi lispInStringString guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi lispDecl           guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi lispNumber         guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi lispEscapeSpecial  guisp=NONE guifg=#9CCFD8 guibg=NONE    ctermfg=14   ctermbg=NONE gui=NONE cterm=NONE
hi lispConcat         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi lispParenError     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi lispComment        guisp=NONE guifg=#3E8FB0 guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi lispCommentRegion  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi lispKey            guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6    ctermbg=NONE gui=NONE cterm=NONE
hi lispMark           guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi lispTodo           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi lispVar            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi lispParen          guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE

"" Lua
""" Text
let s:text += [
            \ 
  \ ]

""" Comments
let s:comments += [
            \ 
  \ ]

let s:commentsTODO += [
            \ 
  \ ]

""" Primitives
let s:primitives += [
            \ 
  \ ]

""" Operators
let s:operators += [
            \ 
  \ ]

""" Strings
let s:strings += [
            \ 
  \ ]

""" Builtins
let s:builtins += [
            \ 
  \ ]

""" Variables
let s:variables += [
            \ 
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ 
  \ ]

""" Types
let s:types += [
            \ 
  \ ]

""" Critical
let s:critical += [
            \ 
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

""" Shit still need to do
hi luaComment       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi luaInnerComment  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi luaParen         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi luaTableBlock    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi luaParenError    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi luaBraceError    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi luaError         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi luaFunctionBlock guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi luaIfThen        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi luaThenEnd       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi luaElseifThen    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi luaBlock         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi luaLoopBlock     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi luaLabel         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi luaSpecial       guisp=NONE guifg=#9CCFD8 guibg=NONE    ctermfg=14   ctermbg=NONE gui=NONE cterm=NONE
hi luaString2       guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi luaString        guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi luaNumber        guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi luaFunc          guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi luaStatement     guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi luaRepeat        guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi luaFor           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi luaOperator      guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi luaIn            guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi luaConstant      guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi luaCond          guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi luaElse          guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi luaFunction      guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi luaTodo          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi luaTable         guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE

"" Rust
""" Text
let s:text += [
            \ "rustFuncName"
  \ ]

""" Comments
let s:comments += [
            \ 
  \ ]

let s:commentsTODO += [
            \ 
  \ ]

""" Primitives
let s:primitives += [
            \ "rustDecNumber",
            \ "rustHexNumber",
            \ "rustBinNumber",
            \ "rustOctNumber",
            \ "rustNumber",
            \ "rustBoolean"
  \ ]

""" Operators
let s:operators += [
            \ "rustQuestionMark",
            \ "rustStringContinuation",
            \ "rustEscape",
            \ "rustModPathSep"
  \ ]

""" Strings
let s:strings += [
            \ "rustString",
            \ "rustStringDelimiter"
  \ ]

""" Builtins
let s:builtins += [
            \ "rustMacro",
            \ "rustAssert",
            \ "rustPanic",
            \ "rustKeyword",
            \ "rustStructure",
            \ "rustAttribute",
            \ "rustDerive",
            \ "rustRepeat",
            \ "rustSuper",
            \ "rustModPath"
  \ ]

""" Variables
let s:variables += [
            \ "rustDeriveTrait",
            \ "rustSelf"
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ "rustFoldBraces"
  \ ]

""" Types
let s:types += [
            \ "rustType"
  \ ]

""" Critical
let s:critical += [
            \ "rustEscapeError"
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

""" Shit still need to do
hi rustUnionContextual          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustDefault                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustPubScopeDelim            guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi rustPubScope                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustExternCrateString        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustIdentifier               guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6    ctermbg=255  gui=NONE cterm=NONE
hi rustBoxPlacement             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustBoxPlacementBalance      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustMacroRepeat              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustMacroRepeatCount         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustMacroVariable            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustFuncCall                 guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rustCapsIdent                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustOperator                 guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rustSigil                    guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi rustArrowCharacter           guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi rustEscapeUnicode            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustFloat                    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustLifetimeCandidate        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustGenericRegion            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustGenericLifetimeCandidate guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustLifetime                 guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi rustLabel                    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustCharacterInvalid         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustCharacterInvalidUnicode  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustCharacter                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustShebang                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustCommentLine              guisp=NONE guifg=#3E8FB0 guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi rustCommentLineDoc           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustCommentLineDocError      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustCommentBlock             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustCommentBlockDoc          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustCommentBlockDocError     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustCommentBlockNest         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustCommentBlockDocNest      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustCommentBlockDocNestError guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustIdentifierPrime          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustTrait                    guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rustMacroRepeatDelimiters    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustBoolean                  guisp=NONE guifg=#EB6F92 guibg=NONE    ctermfg=204  ctermbg=NONE gui=NONE cterm=NONE
hi rustEnum                     guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rustEnumVariant              guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi rustConstant                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustTypedef                  guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6    ctermbg=NONE gui=NONE cterm=NONE
hi rustUnion                    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustPubScopeCrate            guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi rustReservedKeyword          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustConditional              guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi rustFunction                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustType                     guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi rustTodo                     guisp=NONE guifg=#286983 guibg=NONE    ctermfg=4    ctermbg=NONE gui=NONE cterm=NONE
hi rustStorage                  guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi rustObsoleteStorage          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustInvalidBareKeyword       guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi rustExternCrate              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustObsoleteExternMod        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rustBoxPlacementParens       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE

"" Ruby
""" Text
let s:text += [
            \ 
  \ ]

""" Comments
let s:comments += [
            \ 
  \ ]

let s:commentsTODO += [
            \ 
  \ ]

""" Primitives
let s:primitives += [
            \ 
  \ ]

""" Operators
let s:operators += [
            \ 
  \ ]

""" Strings
let s:strings += [
            \ 
  \ ]

""" Builtins
let s:builtins += [
            \ 
  \ ]

""" Variables
let s:variables += [
            \ 
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ 
  \ ]

""" Types
let s:types += [
            \ 
  \ ]

""" Critical
let s:critical += [
            \ 
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

""" Shit still need to do
hi rubySpaceError             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyOperator               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyBracketOperator        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyStringEscape           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyQuoteEscape            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyInterpolation          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyInterpolationDelimiter guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyNoInterpolation        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyDelimiterEscape        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyNestedParentheses      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyNestedCurlyBraces      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyNestedAngleBrackets    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyNestedSquareBrackets   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyRegexpComment          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyRegexpParens           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyRegexpBrackets         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyRegexpCharClass        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyRegexpEscape           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyRegexpQuantifier       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyRegexpAnchor           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyRegexpDot              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyRegexpSpecial          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyASCIICode              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyInteger                guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi rubyFloat                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyLocalVariableOrMethod  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyBlockArgument          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyClassName              guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyModuleName             guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyConstant               guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6    ctermbg=NONE gui=NONE cterm=NONE
hi rubyClassVariable          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyInstanceVariable       guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyGlobalVariable         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubySymbolDelimiter        guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubySymbol                 guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi rubyCapitalizedMethod      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyBlockParameter         guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyBlockParameterList     guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyInvalidVariable        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyPredefinedVariable     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyPredefinedConstant     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyRegexp                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyString                 guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi rubyHeredocStart           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyAliasDeclaration       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyAliasDeclaration2      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyMethodDeclaration      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyClassDeclaration       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyModuleDeclaration      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyMethodName             guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyControl                guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi rubyKeyword                guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyBoolean                guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi rubyPseudoVariable         guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyBeginEnd               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyDefine                 guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi rubyClass                  guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi rubyModule                 guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi rubyMethodBlock            guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyBlock                  guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyLineContinuation       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyConditionalModifier    guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyRepeatModifier         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyDoBlock                guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyCurlyBlock             guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyArrayLiteral           guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyBlockExpression        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyCaseExpression         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyConditionalExpression  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyConditional            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyExceptional            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyMethodExceptional      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyOptionalDoLine         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyRepeatExpression       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyAttribute              guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi rubyMacro                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubySharpBang              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyComment                guisp=NONE guifg=#3E8FB0 guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi rubyMultilineComment       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyDocumentation          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyKeywordAsMethod        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyData                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyAccess                 guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi rubyFunction               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyRepeat                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyOptionalDo             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyInclude                guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi rubyException              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyIdentifier             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyPredefinedIdentifier   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyEval                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyDataDirective          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyTodo                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyRegexpDelimiter        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyStringDelimiter        guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi rubyHeredoc                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi rubyError                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE

"" Perl
""" Text
let s:text += [
            \ 
  \ ]

""" Comments
let s:comments += [
            \ 
  \ ]

let s:commentsTODO += [
            \ 
  \ ]

""" Primitives
let s:primitives += [
            \ 
  \ ]

""" Operators
let s:operators += [
            \ 
  \ ]

""" Strings
let s:strings += [
            \ 
  \ ]

""" Builtins
let s:builtins += [
            \ 
  \ ]

""" Variables
let s:variables += [
            \ 
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ 
  \ ]

""" Types
let s:types += [
            \ 
  \ ]

""" Critical
let s:critical += [
            \ 
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

""" Shit still need to do
hi perlPOD                      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlBraces                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlConditional              guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi perlRepeat                   guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi perlOperator                 guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi perlFakeGroup                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlControl                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlStatementStorage         guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi perlStatementControl         guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi perlStatementScalar          guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlStatementRegexp          guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlStatementNumeric         guisp=NONE guifg=#191724 guibg=NONE    ctermfg=234  ctermbg=NONE gui=NONE cterm=NONE
hi perlStatementList            guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlStatementHash            guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlStatementIOfunc          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlStatementFiledesc        guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlStatementVector          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlStatementFiles           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlStatementFlow            guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlStatementInclude         guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi perlStatementProc            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlStatementSocket          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlStatementIPC             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlStatementNetwork         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlStatementPword           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlStatementTime            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlStatementMisc            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlStatementIndirObjWrap    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlLabel                    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlVarPlain                 guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlVarNotInMatches          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlVarSlash                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlPackageRef               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlVarPlain2                guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlFunctionName             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlArrow                    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlVarBlock                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlVarBlock2                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlVarMember                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlVarSimpleMember          guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlVarSimpleMemberName      guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlPackageConst             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlMethod                   guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlPostDeref                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlFiledescRead             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlFiledescStatementComma   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlFiledescStatementNocomma guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlFiledescStatement        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlSpecialString            guisp=NONE guifg=#9CCFD8 guibg=NONE    ctermfg=14   ctermbg=NONE gui=NONE cterm=NONE
hi perlSpecialStringU2          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlSpecialStringU           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlSpecialMatch             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlNotEmptyLine             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlElseIfError              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlShellCommand             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlNumber                   guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi perlFloat                    guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi perlString                   guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi perlVStringV                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlParensSQ                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlBracketsSQ               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlBracesSQ                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlAnglesSQ                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlParensDQ                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlBracketsDQ               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlBracesDQ                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlAnglesDQ                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlMatch                    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlSubstitutionGQQ          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlSubstitutionSQ           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlTranslationGQ            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlStringUnexpanded         guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi perlQQ                       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlHereDocStart             guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi perlHereDoc                  guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi perlAutoload                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlPackageDecl              guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlSubError                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlSubAttributesCont        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlSubAttributes            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlSignature                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlSubPrototypeError        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlSubPrototype             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlSubName                  guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi perlFunction                 guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi perlComment                  guisp=NONE guifg=#3E8FB0 guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi perlSharpBang                guisp=NONE guifg=#EA9D34 guibg=NONE    ctermfg=3    ctermbg=NONE gui=NONE cterm=NONE
hi perlFormat                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlFormatName               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlFormatField              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlDATA                     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlPackageFold              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlSubFold                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlBlockFold                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlInclude                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlSpecial                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlCharacter                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlType                     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlIdentifier               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlStatement                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlTodo                     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlStringStartEnd           guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi perlList                     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlMisc                     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlMatchStartEnd            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlStorageClass             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlStatementPackage         guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi perlStatementIndirObj        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlFunctionPRef             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlSpecialAscii             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi perlSpecialDollar            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE

"" Haskell
""" Text
let s:text += [
            \ 
  \ ]

""" Comments
let s:comments += [
            \ "hsComment",
            \ "hsLineComment",
            \ "hsBlockComment",
            \ "hsLiterateComment",
  \ ]

let s:commentsTODO += [
            \ 
  \ ]

""" Primitives
let s:primitives += [
            \ "hsCharacter",
            \ "hsBoolean",
            \ "hsFloat",
            \ "hsNumber",
  \ ]

""" Operators
let s:operators += [
            \ "hsOperator" 
  \ ]

""" Strings
let s:strings += [
            \ "hsString"
  \ ]

""" Builtins
let s:builtins += [
            \ "hsImport",
            \ "hsImportMod",
            \ "hsModule",
            \ "hsStatement"
  \ ]

""" Variables
let s:variables += [
            \ 
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ 
  \ ]

""" Types
let s:types += [
            \ 
  \ ]

""" Critical
let s:critical += [
            \ 
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

""" Shit still need to do
hi ConId              guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6    ctermbg=NONE gui=NONE cterm=NONE
hi VarId              guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi hsVarSym           guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi hsConSym           guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi hsDelimiter        guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi hsSpecialChar      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi hsSpecialCharError guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi hsInfix            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi hsStructure        guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi hsTypedef          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi hsConditional      guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi hsType             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi hsMaybe            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi hsExitCode         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi hsOrdering         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi hsDebug            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi hsPragma           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi hsEnumConst        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE

"" Erlang
""" Text
let s:text += [
            \ 
  \ ]

""" Comments
let s:comments += [
            \ 
  \ ]

let s:commentsTODO += [
            \ 
  \ ]

""" Primitives
let s:primitives += [
            \ 
  \ ]

""" Operators
let s:operators += [
            \ 
  \ ]

""" Strings
let s:strings += [
            \ 
  \ ]

""" Builtins
let s:builtins += [
            \ 
  \ ]

""" Variables
let s:variables += [
            \ 
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ 
  \ ]

""" Types
let s:types += [
            \ 
  \ ]

""" Critical
let s:critical += [
            \ 
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

""" Shit still need to do
hi erlangComment            guisp=NONE guifg=#3E8FB0 guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi erlangCommentAnnotation  guisp=NONE guifg=#286983 guibg=NONE    ctermfg=4    ctermbg=NONE gui=NONE cterm=NONE
hi erlangNumberInteger      guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi erlangNumberFloat        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi erlangString             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi erlangQuotedAtom         guisp=NONE guifg=#3E8FB0 guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi erlangStringModifier     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi erlangQuotedAtomModifier guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi erlangModifier           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi erlangOperator           guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi erlangBracket            guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi erlangPipe               guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi erlangRightArrow         guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi erlangAtom               guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi erlangLocalFuncCall      guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi erlangLocalFuncRef       guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi erlangGlobalFuncCall     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi erlangGlobalFuncRef      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi erlangVariable           guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi erlangMacro              guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi erlangMap                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi erlangRecord             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi erlangQuotedRecord       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi erlangShebang            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi erlangBitType            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi erlangUnknownAttribute   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi erlangAttribute          guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi erlangInclude            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi erlangRecordDef          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi erlangDefine             guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi erlangPreCondit          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi erlangType               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi erlangTodo               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi erlangMacroDef           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi erlangKeyword            guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi erlangBIF                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi erlangBoolean            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi erlangExtra              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi erlangSignal             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE

"" Python
""" Text
let s:text += [
            \ 
  \ ]

""" Comments
let s:comments += [
            \ 
  \ ]

let s:commentsTODO += [
            \ 
  \ ]

""" Primitives
let s:primitives += [
            \ 
  \ ]

""" Operators
let s:operators += [
            \ 
  \ ]

""" Strings
let s:strings += [
            \ 
  \ ]

""" Builtins
let s:builtins += [
            \ 
  \ ]

""" Variables
let s:variables += [
            \ 
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ 
  \ ]

""" Types
let s:types += [
            \ 
  \ ]

""" Critical
let s:critical += [
            \ 
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

""" Shit still need to do
hi pythonDecorator      guisp=NONE guifg=#F6C177 guibg=NONE    ctermfg=11   ctermbg=NONE gui=NONE cterm=NONE
hi pythonDecoratorName  guisp=NONE guifg=#EA9D34 guibg=NONE    ctermfg=3    ctermbg=NONE gui=NONE cterm=NONE
hi pythonMatrixMultiply guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi pythonFunction       guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pythonComment        guisp=NONE guifg=#3E8FB0 guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi pythonString         guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi pythonRawString      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi pythonEscape         guisp=NONE guifg=#9CCFD8 guibg=NONE    ctermfg=14   ctermbg=NONE gui=NONE cterm=NONE
hi pythonNumber         guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi pythonAttribute      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi pythonSpaceError     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi pythonDoctest        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi pythonDoctestValue   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi pythonStatement      guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi pythonConditional    guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi pythonRepeat         guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi pythonOperator       guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi pythonException      guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi pythonInclude        guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi pythonAsync          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi pythonTodo           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi pythonQuotes         guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi pythonTripleQuotes   guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi pythonBuiltin        guisp=NONE guifg=#191724 guibg=NONE    ctermfg=234  ctermbg=NONE gui=NONE cterm=NONE
hi pythonExceptions     guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE

"" PHP
""" Text
let s:text += [
            \ 
  \ ]

""" Comments
let s:comments += [
            \ 
  \ ]

let s:commentsTODO += [
            \ 
  \ ]

""" Primitives
let s:primitives += [
            \ 
  \ ]

""" Operators
let s:operators += [
            \ 
  \ ]

""" Strings
let s:strings += [
            \ 
  \ ]

""" Builtins
let s:builtins += [
            \ 
  \ ]

""" Variables
let s:variables += [
            \ 
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ 
  \ ]

""" Types
let s:types += [
            \ 
  \ ]

""" Critical
let s:critical += [
            \ 
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

""" Shit still need to do
hi phpOperator                  guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpRelation                  guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpMemberSelector            guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi phpVarSelector               guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpIdentifier                guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpIdentifierSimply          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpIdentifierComplex         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpIdentifierComplexP        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpBrackets                  guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi phpInterpSimpleError         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpInterpBogusDollarCurley   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpinterpSimpleBracketsInner guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpInterpSimpleBrackets      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpInterpSimple              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpInterpVarname             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpInterpMethodName          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpInterpSimpleCurly         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpInterpDollarCurley1Helper guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpInterpDollarCurly1        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpInterpDollarCurley2Helper guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpInterpDollarCurly2        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpInterpComplex             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpMethodsVar                guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpNumber                    guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi phpFloat                     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpBackslashSequences        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpBackslashDoubleQuote      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpBackslashSingleQuote      guisp=NONE guifg=#9CCFD8 guibg=NONE    ctermfg=14   ctermbg=NONE gui=NONE cterm=NONE
hi phpOctalError                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpParentError               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpComment                   guisp=NONE guifg=#3E8FB0 guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi phpStringDouble              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpBacktick                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpStringSingle              guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi phpHereDoc                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpNowDoc                    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpParent                    guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi phpRegion                    guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpRegionSc                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpRegionAsp                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpDefine                    guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi phpStructure                 guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi phpException                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpFoldHtmlInside            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpFoldFunction              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpFoldClass                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpFoldInterface             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpFoldCatch                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpFoldTry                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpAssignByRef               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpComparison                guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi phpDocCustomTags             guisp=NONE guifg=#286983 guibg=NONE    ctermfg=4    ctermbg=NONE gui=NONE cterm=NONE
hi phpDocTags                   guisp=NONE guifg=#286983 guibg=NONE    ctermfg=4    ctermbg=NONE gui=NONE cterm=NONE
hi phpDocTodo                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpSpecialFunction           guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpClasses                   guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpInterfaces                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpConstant                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpCoreConstant              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpBoolean                   guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi phpStorageClass              guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi phpSCKeyword                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpFCKeyword                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpMethods                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpFunctions                 guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi phpBaselib                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpRepeat                    guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi phpConditional               guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi phpLabel                     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpStatement                 guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi phpKeyword                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpType                      guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi phpInclude                   guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi phpIdentifierConst           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpInterpSimpleBracketsInner guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpTodo                      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpIntVar                    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi phpEnvVar                    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE

"" LaTeX
""" Text
let s:text += [
            \ "texGroup"
  \ ]

""" Comments
let s:comments += [
            \ "texComment"
  \ ]

let s:commentsTODO += [
            \ "texCommentTodo"
  \ ]

""" Primitives
let s:primitives += [
            \ "texNewcmdOpt"
  \ ]

""" Operators
let s:operators += [
            \ "texTabularChar"
  \ ]

""" Strings
let s:strings += [
            \ 
  \ ]

""" Builtins
let s:builtins += [
            \ "texCmd"
  \ ]

""" Variables
let s:variables += [
            \ "texArg",
            \ "texTabularArg",
            \ "texTabularCol",
            \ "texHrefArgLink",
            \ "texEnvArgName",
            \ "texNewcmdArgBody"
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ "texDelim"
  \ ]

""" Types
let s:types += [
            \ 
  \ ]

""" Critical
let s:critical += [
            \ 
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

"" JSON
""" Text
let s:text += [
            \ 
  \ ]

""" Comments
let s:comments += [
            \ 
  \ ]

let s:commentsTODO += [
            \ 
  \ ]

""" Primitives
let s:primitives += [
            \ 
  \ ]

""" Operators
let s:operators += [
            \ 
  \ ]

""" Strings
let s:strings += [
            \ 
  \ ]

""" Builtins
let s:builtins += [
            \ 
  \ ]

""" Variables
let s:variables += [
            \ 
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ 
  \ ]

""" Types
let s:types += [
            \ 
  \ ]

""" Critical
let s:critical += [
            \ 
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

""" Shit still need to do
hi jsonNoise              guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13  ctermbg=NONE gui=NONE cterm=NONE
hi jsonKeywordMatch       guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13  ctermbg=NONE gui=NONE cterm=NONE
hi jsonKeyword            guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5   ctermbg=NONE gui=NONE cterm=NONE
hi jsonStringMatch        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi jsonString             guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12  ctermbg=NONE gui=NONE cterm=NONE
hi jsonStringSQError      guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1   ctermbg=NONE gui=NONE cterm=NONE
hi jsonEscape             guisp=NONE guifg=#9CCFD8 guibg=NONE    ctermfg=14  ctermbg=NONE gui=NONE cterm=NONE
hi jsonNumber             guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1   ctermbg=NONE gui=NONE cterm=NONE
hi jsonNoQuotesError      guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1   ctermbg=NONE gui=NONE cterm=NONE
hi jsonTripleQuotesError  guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1   ctermbg=NONE gui=NONE cterm=NONE
hi jsonNumError           guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1   ctermbg=NONE gui=NONE cterm=NONE
hi jsonCommentError       guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1   ctermbg=NONE gui=NONE cterm=NONE
hi jsonSemicolonError     guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1   ctermbg=NONE gui=NONE cterm=NONE
hi jsonTrailingCommaError guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1   ctermbg=NONE gui=NONE cterm=NONE
hi jsonMissingCommaError  guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1   ctermbg=NONE gui=NONE cterm=NONE
hi jsonPadding            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi jsonBoolean            guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1   ctermbg=NONE gui=NONE cterm=NONE
hi jsonFold               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi jsonTest               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi jsonBraces             guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13  ctermbg=NONE gui=NONE cterm=NONE
hi jsonNull               guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1   ctermbg=NONE gui=NONE cterm=NONE
hi jsonQuote              guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12  ctermbg=NONE gui=NONE cterm=NONE

"" YAML
""" Text
let s:text += [
            \ 
  \ ]

""" Comments
let s:comments += [
            \ 
  \ ]

let s:commentsTODO += [
            \ 
  \ ]

""" Primitives
let s:primitives += [
            \ 
  \ ]

""" Operators
let s:operators += [
            \ 
  \ ]

""" Strings
let s:strings += [
            \ 
  \ ]

""" Builtins
let s:builtins += [
            \ 
  \ ]

""" Variables
let s:variables += [
            \ 
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ 
  \ ]

""" Types
let s:types += [
            \ 
  \ ]

""" Critical
let s:critical += [
            \ 
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

""" Shit still need to do
hi yamlComment                  guisp=NONE guifg=#3E8FB0 guibg=NONE    ctermfg=12  ctermbg=NONE gui=NONE cterm=NONE
hi yamlDirective                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlTAGDirective             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlTagHandle                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlTagPrefix                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlYAMLDirective            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlYAMLVersion              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlReservedDirective        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlFlowString               guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12  ctermbg=NONE gui=NONE cterm=NONE
hi yamlEscape                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlSingleEscape             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlBlockScalarHeader        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlFlowMapping              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlFlowCollection           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlPlainScalar              guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12  ctermbg=NONE gui=NONE cterm=NONE
hi yamlMappingKeyStart          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlFlowMappingKey           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlFlowMappingMerge         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlBlockCollectionItemStart guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13  ctermbg=NONE gui=NONE cterm=NONE
hi yamlBlockMappingKey          guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5   ctermbg=NONE gui=NONE cterm=NONE
hi yamlBlockMappingMerge        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlKeyValueDelimiter        guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13  ctermbg=NONE gui=NONE cterm=NONE
hi yamlInteger                  guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1   ctermbg=NONE gui=NONE cterm=NONE
hi yamlFloat                    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlNull                     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlTimestamp                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlNodeTag                  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlAnchor                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlAlias                    guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlDocumentStart            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlDocumentEnd              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlTodo                     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlDirectiveName            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlString                   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlFlowStringDelimiter      guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12  ctermbg=NONE gui=NONE cterm=NONE
hi yamlFlowIndicator            guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13  ctermbg=NONE gui=NONE cterm=NONE
hi yamlConstant                 guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE
hi yamlBool                     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231 ctermbg=234  gui=NONE cterm=NONE

"" TOML
""" Text
let s:text += [
            \ 
  \ ]

""" Comments
let s:comments += [
            \ 
  \ ]

let s:commentsTODO += [
            \ 
  \ ]

""" Primitives
let s:primitives += [
            \ 
  \ ]

""" Operators
let s:operators += [
            \ 
  \ ]

""" Strings
let s:strings += [
            \ 
  \ ]

""" Builtins
let s:builtins += [
            \ 
  \ ]

""" Variables
let s:variables += [
            \ 
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ 
  \ ]

""" Types
let s:types += [
            \ 
  \ ]

""" Critical
let s:critical += [
            \ 
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

""" Shit still need to do
hi tomlEscape        guisp=NONE guifg=#9CCFD8 guibg=NONE ctermfg=14   ctermbg=NONE gui=NONE cterm=NONE
hi tomlLineEscape    guisp=NONE guifg=#9CCFD8 guibg=NONE ctermfg=14   ctermbg=NONE gui=NONE cterm=NONE
hi tomlString        guisp=NONE guifg=#56959F guibg=NONE ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi tomlInteger       guisp=NONE guifg=#B4637A guibg=NONE ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi tomlFloat         guisp=NONE guifg=#B4637A guibg=NONE ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi tomlBoolean       guisp=NONE guifg=#B4637A guibg=NONE ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi tomlDate          guisp=NONE guifg=#569F84 guibg=NONE ctermfg=6    ctermbg=NONE gui=NONE cterm=NONE
hi tomlKey           guisp=NONE guifg=#907AA9 guibg=NONE ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi tomlKeyDq         guisp=NONE guifg=#907AA9 guibg=NONE ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi tomlKeySq         guisp=NONE guifg=#907AA9 guibg=NONE ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi tomlTable         guisp=NONE guifg=NONE    guibg=NONE ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi tomlTableArray    guisp=NONE guifg=NONE    guibg=NONE ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi tomlKeyValueArray guisp=NONE guifg=NONE    guibg=NONE ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi tomlArray         guisp=NONE guifg=NONE    guibg=NONE ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi tomlComment       guisp=NONE guifg=#3E8FB0 guibg=NONE ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi tomlTodo          guisp=NONE guifg=#286983 guibg=NONE ctermfg=4    ctermbg=NONE gui=NONE cterm=NONE

"" Netrw
""" Text
let s:text += [
            \ "netrwList",
            \ "netrwHelpCmd",
            \ "netrwCmdNote"
  \ ]

""" Comments
let s:comments += [
            \ "netrwComment"
  \ ]

let s:commentsTODO += [
            \ 
  \ ]

""" Primitives
let s:primitives += [
            \ "netrwSymLink",
  \ ]

""" Operators
let s:operators += [
            \ "netrwClassify"
  \ ]

""" Strings
let s:strings += [
            \ 
  \ ]

""" Builtins
let s:builtins += [
            \ "netrwLink",
  \ ]

""" Variables
let s:variables += [
            \ "netrwDir",
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ 
  \ ]

""" Types
let s:types += [
            \ "netrwPlain"
  \ ]

""" Critical
let s:critical += [
            \ 
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

"" Make
""" Text
let s:text += [
            \ 
  \ ]

""" Comments
let s:comments += [
            \ 
  \ ]

let s:commentsTODO += [
            \ 
  \ ]

""" Primitives
let s:primitives += [
            \ 
  \ ]

""" Operators
let s:operators += [
            \ 
  \ ]

""" Strings
let s:strings += [
            \ 
  \ ]

""" Builtins
let s:builtins += [
            \ 
  \ ]

""" Variables
let s:variables += [
            \ 
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ 
  \ ]

""" Types
let s:types += [
            \ 
  \ ]

""" Critical
let s:critical += [
            \ 
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

""" Shit still need to do
hi makeSpecial      guisp=NONE guifg=#EA9D34 guibg=NONE    ctermfg=3    ctermbg=NONE gui=NONE cterm=NONE
hi makeNextLine     guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi makePreCondit    guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi makeInclude      guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi makeStatement    guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi makeExport       guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi makeOverride     guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi makeDefine       guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi makeIdent        guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi makeConfig       guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi makeSpecTarget   guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=255  gui=NONE cterm=NONE
hi makeImplicit     guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi makeTarget       guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi makeCommandError guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi makeCommands     guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi makeCmdNextLine  guisp=NONE guifg=#9CCFD8 guibg=NONE    ctermfg=14   ctermbg=NONE gui=NONE cterm=NONE
hi makeComment      guisp=NONE guifg=#3E8FB0 guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi makeEscapedChar  guisp=NONE guifg=#9CCFD8 guibg=NONE    ctermfg=14   ctermbg=NONE gui=NONE cterm=NONE
hi makeDString      guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi makeSString      guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi makeBString      guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=255  gui=NONE cterm=NONE
hi makeError        guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi makeTodo         guisp=NONE guifg=#286983 guibg=NONE    ctermfg=4    ctermbg=NONE gui=NONE cterm=NONE

"" VimScript
""" Text
let s:text += [
            \ "vimGroup",
            \ "vimHiGroup",
            \ "vimHiClear",
            \ "vimSynType",
            \ "vimEcho"
  \ ]

""" Comments
let s:comments += [
            \ "vimComment",
            \ "vimCommentString",
            \ "vimCommentTitleLeader",
            \ "vimLineComment"
  \ ]

let s:commentsTODO += [
            \ "vimCommentTitle",
            \ "vimTodo" 
  \ ]

""" Primitives
let s:primitives += [
            \ "vimNumber",
            \ "vimFgBgAttrib",
            \ "vimHiNmbr",
            \ "vimHiAttrib",
            \ "vimHiAttribList"
  \ ]

""" Operators
let s:operators += [
            \ 
  \ ]

""" Strings
let s:strings += [
            \ "vimString",
            \ "vimStringEnd",
            \ "vimStringCont"
  \ ]

""" Builtins
let s:builtins += [
            \ "vimCommand",
            \ "vimHighlight",
            \ "vimLet",
            \ "vimNotFunc",
            \ "vimAutoCmd"
  \ ]

""" Variables
let s:variables += [
            \ "vimVar",
            \ "vimFBVar",
            \ "vimFuncVar",
            \ "vimHiGui",
            \ "vimHiGuiFgBg",
            \ "vimHiCterm",
            \ "vimHiCtermFgBg"
  \ ]

""" Contants
let s:constants += [
            \ "vimAutoEvent",
            \ "vimAutoCmdSfxList"
  \ ]

""" Folds
let s:folds += [
            \ 
  \ ]

""" Parens
let s:parens += [
            \ "vimContinue" 
  \ ]

""" Types
let s:types += [
            \ 
  \ ]

""" Critical
let s:critical += [
            \ "vimError",
            \ "vimFTError",
            \ "vimBehaveError",
            \ "vimAugroupError",
            \ "vimOperError",
            \ "vimUserAttrbError",
            \ "vimFunctionError",
            \ "vimUserCmdError",
            \ "vimSynError",
            \ "vimSyncError",
            \ "vimHiKeyError",
            \ "vimEmbedError",
            \ "vimSynCaseError",
            \ "vimHiCtermError",
            \ "vimKeyCodeError",
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

""" Shit still need to do
hi vimOption             guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimHLGroup            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimCmdSep             guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimIsCommand          guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimInsert             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimBehave             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimFiletype           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimAugroup            guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimOper               guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimOperParen          guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi vimFunction           guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimFuncBody           guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi vimFuncSID            guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6    ctermbg=NONE gui=NONE cterm=NONE
hi vimFuncBlank          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSpecFile           guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimSpecFileMod        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimUserCmd            guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimUserAttrb          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimUserAttrbCmpltFunc guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimUserAttrbCmplt     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimEnvvar             guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6    ctermbg=NONE gui=NONE cterm=NONE
hi vimEscapeBrace        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimPatSepErr          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimPatSep             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimPatSepZone         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimPatRegion          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimNotPatSep          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimStringCont         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSubst              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSubst1             guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimSubst2             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSubstPat           guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimSubstRep4          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimCollection         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimCollClassErr       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimCollClass          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSubstSubstr        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSubstTwoBS         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSubstFlagErr       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSubstFlags         guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi vimMark               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimMarkNumber         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimPlainMark          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimRange              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimRegister           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimPlainRegister      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimAddress            guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi vimFilter             guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimCmplxRepeat        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSet                guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimSetEqual           guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimSetString          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSetSep             guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimSetMod             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimAutoEventList      guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimAutoCmdSpace       guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimExecute            guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimEchoHL             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimMap                guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi vimMapLhs             guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6    ctermbg=NONE gui=NONE cterm=NONE
hi vimMapBang            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimMapMod             guisp=NONE guifg=#F6C177 guibg=NONE    ctermfg=11   ctermbg=NONE gui=NONE cterm=NONE
hi vimMapRhs             guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimMapRhsExtend       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimMenuName           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimMenuPriority       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimMenuNameMore       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimMenuMod            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimMenuMap            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimMenuRhs            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimMenuBang           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimNotation           guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6    ctermbg=NONE gui=NONE cterm=NONE
hi vimBracket            guisp=NONE guifg=#9CD8C3 guibg=NONE    ctermfg=14   ctermbg=NONE gui=NONE cterm=NONE
hi vimFunc               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimUserFunc           guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimElseIfErr          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimBufnrWarn          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimNotFunc            guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi vimNorm               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimNormCmds           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimGroupList          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSynContains        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSynKeyContainedin  guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSynNextgroup       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSyntax             guisp=NONE guifg=#907AA9 guibg=NONE    ctermfg=5    ctermbg=NONE gui=NONE cterm=NONE
hi vimAuSyntax           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimClusterName        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimGroupAdd           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimGroupRem           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimIskList            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimIskSep             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSynKeyRegion       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSynKeyOpt          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSynMatchRegion     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSynMtchOpt         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSynMtchCchar       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSynRegion          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSynRegOpt          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSynReg             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSynMtchGrp         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSynRegPat          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSynPatMod          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSynPatRange        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSynNotPatRange     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimMtchComment        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSyncLinebreak      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSyncLines          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSyncGroupName      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSyncKey            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSyncGroup          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimHiBang             guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimHiCtermColor       guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimHiFontname         guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimHiGuiFontname      guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimHiKeyList          guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimHiTerm             guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimHiStartStop        guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimHiGuiFont          guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimHiTermcap          guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimHiLink             guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimCtrlChar           guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimSearch             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSearchDelim        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimGlobal             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimLuaRegion          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimPerlRegion         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimRubyRegion         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimPythonRegion       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimTclRegion          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimMzSchemeRegion     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimErrSetting         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimMapModErr          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimAbb                guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimAugroupKey         guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi vimAuHighlight        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimAutoCmdOpt         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimAutoSet            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimBehaveModel        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimCondHL             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimEchoHLNone         guisp=NONE guifg=NONE    guibg=NONE    ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimElseif             guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimFold               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimFTCmd              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimFTOption           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimFuncKey            guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi vimFuncName           guisp=NONE guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimGroupName          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimGroupSpecial       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimHLMod              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimKeyCode            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimKeyword            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimMapModKey          guisp=NONE guifg=#EA9D34 guibg=NONE    ctermfg=3    ctermbg=NONE gui=NONE cterm=NONE
hi vimParenSep           guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi vimPatSepR            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimPatSepZ            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimPattern            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimScriptDelim        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSep                guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi vimSpecial            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimStatement          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimStringEnd          guisp=NONE guifg=#56959F guibg=NONE    ctermfg=12   ctermbg=NONE gui=NONE cterm=NONE
hi vimSubstDelim         guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi vimSynCase            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSyncC              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSyncNone           guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimSynOption          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimUnmap              guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimUserAttrbKey       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi vimUserCommand        guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi vimWarn               guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE

""""""""""""""
"  Vim Shit  "
""""""""""""""
"" Generic
""" Text
let s:text += [
            \ "Normal",
            \ "PreProc",
            \ "SpecialChar",
            \ "MoreMsg",
            \ "ModeMsg",
            \ "Title"
  \ ]

""" Comments
let s:comments += [
            \ "Comment"
  \ ]

let s:commentsTODO += [
            \ "Todo"
  \ ]

""" Primitives
let s:primitives += [
            \ "String",
            \ "Character",
            \ "Number",
            \ "Boolean",
            \ "Float",
  \ ]

""" Operators
let s:operators += [
            \ "Operator",
  \ ]

""" Strings
let s:strings += [
            \ 
  \ ]

""" Builtins
let s:builtins += [
            \ "Function",
            \ "Include",
  \ ]

""" Variables
let s:variables += [
            \ 
  \ ]

""" Folds
let s:folds += [
            \ "Folded",
            \ "FoldColumn",
            \ "MatchParen",
  \ ]

""" Parens
let s:parens += [
            \ 
  \ ]

""" Types
let s:types += [
            \ "Type"
  \ ]

""" Critical
let s:critical += [
            \ "ErrorMsg",
            \ "Error"
  \ ]

""" Regex
let s:regex += [
            \ 
  \ ]

"" Specific Vim Shit
let s:nvimDir = [
            \ "Directory"
  \ ]
call s:hifg(s:nvimDir, s:iris)

let s:nvimBackground = [
            \ "VertSplit",
            \ "EndOfBuffer"
  \ ]
call s:hi(s:nvimBackground, s:base, s:base)

let s:nvimHighlight = [
            \ "CursorLine",
            \ "CursorLineNr",
            \ "Search",
            \ "Visual",
  \ ]
call s:hibg(s:nvimHighlight, s:highlight)
" TODO: Make this to detect Visual mode rather than Insert
autocmd! InsertEnter * call s:hibg(["CursorLineNr"], s:none)
autocmd! InsertLeave * call s:hibg(["CursorLineNr"], s:highlight)

let s:nvimStatusLine = [
            \ "StatusLine",
            \ "StatusLineNC"
  \ ]
call s:hi(s:nvimStatusLine, s:highlight, s:iris)
call s:hi(["Question"], s:foam, s:none)

let s:nvimLineNr = [
            \ "Folded",
            \ "LineNr",
            \ "LineNrAbove",
            \ "LineNrBelow",
            \ "CursorLineNr",
            \ "NonText"
  \ ]
call s:hifg(s:nvimLineNr, s:subtle)

set guicursor=n-v-c:block
            \,i-ci-ve:ver25
            \,r-cr:hor10
            \,o:hor50
            \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
            \,sm:block-blinkwait175-blinkoff150-blinkon175

" Diffs
call s:hi(  ["DiffAdd"   ], s:subtle, s:none)
call s:hi(  ["DiffChange"], s:foam,   s:none)
call s:hi(  ["DiffDelete"], s:love,   s:none)
call s:hi(  ["DiffText"  ], s:foam,   s:none)
call s:hibg(["SignColumn"], s:none)

" Popup menu
call s:hi(  ["PmenuSel"  ], s:iris, s:highlightd)
call s:hibg(["PmenuThumb"], s:highlightd)
call s:hi(  ["PmenuSbar", "Pmenu"], s:subtle, s:highlight)

"" Shit I still need to do
hi ColorColumn      guisp=NONE guifg=#ffffff guibg=#1C1C1C ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi Conceal          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi IncSearch        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi QuickFixLine     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi SpecialKey       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi SpellBad         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi SpellCap         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi SpellLocal       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi SpellRare        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi StatusLineTerm   guisp=NONE guifg=#0000FF guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi StatusLineTermNC guisp=NONE guifg=#FF00FF guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi TabLine          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi TabLineFill      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi TabLineSel       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi Terminal         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi WarningMsg       guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi WildMenu         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE

"" Major
hi Constant   guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6    ctermbg=NONE gui=NONE cterm=NONE
hi Identifier guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6    ctermbg=NONE gui=NONE cterm=NONE
hi Statement  guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi Special    guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=NONE gui=NONE cterm=NONE
hi Underlined guisp=NONE guifg=#232136 guibg=NONE    ctermfg=8    ctermbg=NONE gui=NONE cterm=NONE
hi Ignore     guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE

"" Minor
hi Conditional    guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6    ctermbg=255  gui=NONE cterm=NONE
hi Repeat         guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6    ctermbg=255  gui=NONE cterm=NONE
hi Label          guisp=NONE guifg=#232136 guibg=NONE    ctermfg=8    ctermbg=255  gui=NONE cterm=NONE
hi Keyword        guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=255  gui=NONE cterm=NONE
hi Exception      guisp=NONE guifg=#B4637A guibg=NONE    ctermfg=1    ctermbg=255  gui=NONE cterm=NONE
hi Define         guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi Macro          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi PreCondit      guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi StorageClass   guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi Structure      guisp=NONE guifg=#569F84 guibg=NONE    ctermfg=6    ctermbg=255  gui=NONE cterm=NONE
hi Typedef        guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi Tag            guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi Delimiter      guisp=NONE guifg=#C4A7E7 guibg=NONE    ctermfg=13   ctermbg=NONE gui=NONE cterm=NONE
hi SpecialComment guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE
hi Debug          guisp=NONE guifg=#ffffff guibg=#1c1c1c ctermfg=231  ctermbg=234  gui=NONE cterm=NONE

"""""""""""""""""""""""""
"  Highlight everything  "
""""""""""""""""""""""""""
call s:hifg(s:text,         s:textLight)
call s:hifg(s:variables,    s:textLight)
call s:hifg(s:constants,    s:foam     )
call s:hifg(s:primitives,   s:rose     )
call s:hifg(s:strings,      s:sun      )
call s:hifg(s:regex,        s:love     )
call s:hifg(s:builtins,     s:iris     )
call s:hifg(s:types,        s:iris     )
call s:hifg(s:parens,       s:faded    )
call s:hifg(s:comments,     s:subtle   )
call s:hi  (s:commentsTODO, s:rose,      s:none)
call s:hi  (s:critical,     s:love,      s:none)
call s:hi  (s:folds,        s:textLight, s:highlight)
