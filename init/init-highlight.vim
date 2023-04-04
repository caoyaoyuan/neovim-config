func! s:my_colors_setup() abort
	  hi Normal guibg=NONE ctermbg=None
      hi CursorLine guibg=#44505c guifg=fg
      hi LineNr guibg=None
      hi VertSplit guibg=bg guifg=fg
      hi CocTreeSelected guibg=#637080 guifg=fg
      hi CocInfoFloat ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black
      hi PMenu ctermfg=0 ctermbg=242 guifg=#44505c guibg=darkgrey
      hi PMenuSel ctermfg=242 ctermbg=8 guifg=darkgrey guibg=#44505c
      hi Cocmenu guibg= #d7e5dc gui=NONE
      hi CocmenuSel guibg= #b7b7b7  gui=NONE
      hi CocmenuSbar guibg=#bcbcbc
      hi CocSearch  guifg=#18A3FF
      hi CocMenuSel  guibg=#637080
      hi CocFloating  guibg=#44505c
      hi CocErrorSign guifg=#E06C75
      hi CocErrorFloat guifg=#E06C75
      hi FloatermBorder guibg=#282c34
      hi FloatermBorder guifg=#dcdfe4
endfunc
augroup colorscheme_coc_setup | au!
    au ColorScheme * call s:my_colors_setup()
augroup END

autocmd ColorScheme *
  \ hi CocExplorerNormalFloatBorder guifg=#dcdfe4 guibg=#313640
  \ | hi CocExplorerNormalFloat guibg=#313640
  \ | hi CocExplorerSelectUI guibg=#dcdfe4
" " #282c34


