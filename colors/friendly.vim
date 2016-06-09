set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

let g:colors_name="friendly"

hi Normal                   guifg=#d6d6d6   guibg=#1f2227   guisp=#1f2227   gui=NONE        ctermfg=253     ctermbg=NONE    cterm=NONE
hi SignColumn               guifg=#a0a8b0   guibg=#384048   guisp=#384048   gui=NONE        ctermfg=103     ctermbg=238     cterm=NONE
hi SpecialComment           guifg=#799d6a   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=65      ctermbg=NONE    cterm=NONE
hi Typedef                  guifg=#e0cca2   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=223     ctermbg=NONE    cterm=NONE
hi Title                    guifg=#84b2c9   guibg=NONE      guisp=NONE      gui=bold        ctermfg=110     ctermbg=NONE    cterm=bold
hi Folded                   guifg=#a0a8b0   guibg=#384048   guisp=#384048   gui=italic      ctermfg=103     ctermbg=238     cterm=NONE
hi PreCondit                guifg=#84b2c9   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=110     ctermbg=NONE    cterm=NONE
hi Include                  guifg=#84b2c9   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=110     ctermbg=NONE    cterm=NONE
hi NonText                  guifg=#383839   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=8       ctermbg=NONE    cterm=NONE
hi DiffText                 guifg=NONE      guibg=#000940   guisp=#000940   gui=NONE        ctermfg=NONE    ctermbg=17      cterm=NONE
hi Error                    guifg=#d16e6d   guibg=NONE      guisp=#d16e6d   gui=NONE        ctermfg=174     ctermbg=NONE     cterm=NONE
hi ErrorMsg                 guifg=#d16e6d   guibg=NONE      guisp=#d16e6d   gui=NONE        ctermfg=174     ctermbg=NONE    cterm=NONE
hi Debug                    guifg=#799d6a   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=65      ctermbg=NONE    cterm=NONE
hi Identifier               guifg=#8184d3   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=104     ctermbg=NONE    cterm=NONE
hi SpecialChar              guifg=#799d6a   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=65      ctermbg=NONE    cterm=NONE
hi Conditional              guifg=#84b2c9   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=110     ctermbg=NONE    cterm=NONE
hi StorageClass             guifg=#e0cca2   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=223     ctermbg=NONE    cterm=NONE
hi Todo                     guifg=#808080   guibg=NONE      guisp=NONE      gui=bold        ctermfg=8       ctermbg=NONE    cterm=bold
hi Special                  guifg=#799d6a   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=65      ctermbg=NONE    cterm=NONE
hi LineNr                   guifg=#605958   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=240     ctermbg=NONE    cterm=NONE
hi CursorLineNr             guifg=#aaaaaa   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=248     ctermbg=NONE    cterm=NONE
hi StatusLineNC             guifg=#7a7a7a   guibg=#191c21   guisp=#191c21   gui=italic      ctermfg=240     ctermbg=234     cterm=NONE
hi StatusLine               guifg=#f0f0f0   guibg=#191c21   guisp=#191c21   gui=italic      ctermfg=255     ctermbg=234     cterm=NONE
hi Label                    guifg=#e0cca2   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=223     ctermbg=NONE    cterm=NONE
hi Search                   guifg=#f0f0f0   guibg=#3f3e47   guisp=#3f3e47   gui=underline   ctermfg=255     ctermbg=237     cterm=underline
hi Delimiter                guifg=#668799   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=66      ctermbg=NONE    cterm=NONE
hi Statement                guifg=#8197bf   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=103     ctermbg=NONE    cterm=NONE
hi Comment                  guifg=#888888   guibg=NONE      guisp=NONE      gui=italic      ctermfg=102     ctermbg=NONE    cterm=NONE
hi Character                guifg=#d16e6d   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=174     ctermbg=NONE    cterm=NONE
hi Number                   guifg=#d16e6d   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=174     ctermbg=NONE    cterm=NONE
hi Boolean                  guifg=#8197bf   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=103     ctermbg=NONE    cterm=NONE
hi Operator                 guifg=#d6d6d6   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=253     ctermbg=NONE    cterm=NONE
hi CursorLine               guifg=NONE      guibg=#20262b   guisp=#222831   gui=NONE        ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi TabLine                  guifg=#7a7a7a   guibg=#191c21   guisp=#191c21   gui=italic      ctermfg=240     ctermbg=234     cterm=NONE
hi TabLineFill              guifg=#9098a0   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=247     ctermbg=NONE    cterm=NONE
hi TabLineSel               guifg=#f0f0f0   guibg=#3f3e47   guisp=#3f3e47   gui=italic      ctermfg=255     ctermbg=237     cterm=NONE
hi DiffDelete               guifg=#3b0606   guibg=#240404   guisp=#240404   gui=NONE        ctermfg=52      ctermbg=52      cterm=NONE
hi CursorColumn             guifg=NONE      guibg=#202021   guisp=#202021   gui=NONE        ctermfg=NONE    ctermbg=235     cterm=NONE
hi Define                   guifg=#84b2c9   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=110     ctermbg=NONE    cterm=NONE
hi Function                 guifg=#e0cca2   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=223     ctermbg=NONE    cterm=NONE
hi FoldColumn               guifg=#a0a8b0   guibg=#384048   guisp=#384048   gui=NONE        ctermfg=103     ctermbg=238     cterm=NONE
hi PreProc                  guifg=#84b2c9   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=110     ctermbg=NONE    cterm=NONE
hi Visual                   guifg=NONE      guibg=#404040   guisp=#404040   gui=NONE        ctermfg=NONE    ctermbg=238     cterm=NONE
hi VertSplit                guifg=#181818   guibg=#181818   guisp=#181818   gui=italic      ctermfg=234     ctermbg=234     cterm=NONE
hi Exception                guifg=#e0cca2   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=223     ctermbg=NONE    cterm=NONE
hi Keyword                  guifg=#e0cca2   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=223     ctermbg=NONE    cterm=NONE
hi Type                     guifg=#8197bf   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=103     ctermbg=NONE    cterm=NONE
hi DiffChange               guifg=NONE      guibg=#100920   guisp=#100920   gui=NONE        ctermfg=NONE    ctermbg=234     cterm=NONE
hi Cursor                   guifg=#e8eaeb   guibg=#4d545c   guisp=#7e868f   gui=NONE        ctermfg=255     ctermbg=239     cterm=NONE
hi SpecialKey               guifg=#808080   guibg=#343434   guisp=#343434   gui=NONE        ctermfg=8       ctermbg=236     cterm=NONE
hi Constant                 guifg=#d16e6d   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=174     ctermbg=NONE    cterm=NONE
hi Tag                      guifg=#799d6a   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=65      ctermbg=NONE    cterm=NONE
hi String                   guifg=#72a78d   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=72      ctermbg=NONE    cterm=NONE
hi PMenu                    guifg=#d6d6d6   guibg=#2c3038   guisp=#2c3038   gui=NONE        ctermfg=253     ctermbg=236     cterm=NONE
hi PMenuSbar                guifg=NONE      guibg=#1e2021   guisp=#1e2021   gui=NONE        ctermfg=NONE    ctermbg=235     cterm=NONE
hi PMenuSel                 guifg=#f0f0f0   guibg=#45464d   guisp=#45464d   gui=NONE        ctermfg=255     ctermbg=239     cterm=NONE
hi PMenuThumb               guifg=NONE      guibg=#45464d   guisp=#45464d   gui=NONE        ctermfg=NONE    ctermbg=239     cterm=NONE
hi MatchParen               guifg=#f0f0f0   guibg=#2e2e2e   guisp=#2e2e2e   gui=bold        ctermfg=255     ctermbg=236     cterm=bold
hi Repeat                   guifg=#84b2c9   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=110     ctermbg=NONE    cterm=NONE
hi Structure                guifg=#84b2c9   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=110     ctermbg=NONE    cterm=NONE
hi Directory                guifg=#72a78d   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=72      ctermbg=NONE    cterm=NONE
hi Macro                    guifg=#84b2c9   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=110     ctermbg=NONE    cterm=NONE
hi DiffAdd                  guifg=NONE      guibg=#032218   guisp=#032218   gui=NONE        ctermfg=NONE    ctermbg=23      cterm=NONE
hi cursorim                 guifg=#19241e   guibg=#539171   guisp=#539171   gui=NONE        ctermfg=235     ctermbg=65      cterm=NONE
hi stringdelimiter          guifg=#556633   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=101     ctermbg=NONE    cterm=NONE
hi WarningMsg               guifg=#e0cca2   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=223     ctermbg=NONE    cterm=NONE
hi WildMenu                 guifg=#d6d6d6   guibg=#4d545c   guisp=NONE      gui=NONE        ctermfg=15      ctermbg=239     cterm=NONE
hi rubyregexp               guifg=#dd0093   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=162     ctermbg=NONE    cterm=NONE
hi rubyinstancevariable     guifg=#c6b6fe   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=147     ctermbg=NONE    cterm=NONE
hi rubyclass                guifg=#447799   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=67      ctermbg=NONE    cterm=NONE
hi rubyregexpdelimiter      guifg=#540063   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=53      ctermbg=NONE    cterm=NONE
hi rubyregexpspecial        guifg=#a40073   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=126     ctermbg=NONE    cterm=NONE
hi rubypredefinedidentifier guifg=#de5577   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=168     ctermbg=NONE    cterm=NONE
hi rubyidentifier           guifg=#c6b6fe   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=147     ctermbg=NONE    cterm=NONE
hi rubysymbol               guifg=#7697d6   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=110     ctermbg=NONE    cterm=NONE
hi rubycontrol              guifg=#7597c6   guibg=NONE      guisp=NONE      gui=NONE        ctermfg=110     ctermbg=NONE    cterm=NONE

"hi IncSearch -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi Float -- no settings --
"hi Union -- no settings --
"hi Question -- no settings --
"hi VisualNOS -- no settings --
"hi ModeMsg -- no settings --
"hi EnumerationName -- no settings --
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --
"hi SpellLocal -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi Underlined -- no settings --
"hi clear -- no settings --
