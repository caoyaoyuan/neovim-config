func! s:my_colors_setup() abort
	  hi Normal guibg=NONE ctermbg=NONE
      hi CursorLine guibg=#44505c guifg=NONE
      hi LineNr guibg=None
      hi VertSplit guibg=bg guifg=fg
      hi CocTreeSelected guibg=#637080 guifg=fg
      " hi CocInfoFloat ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black
      " hi PMenu ctermfg=0 ctermbg=242 guifg=#44505c guibg=darkgrey
      hi PMenu guifg=#b7b7b7 guibg=#44505c
      " hi PMenuSel ctermfg=242 ctermbg=8 guifg=#44505c guibg=#61AFEF
      hi Cocmenu guibg= #d7e5dc
      hi CocmenuSel guibg= #b7b7b7
      hi CocmenuSbar guibg=#bcbcbc
      " hi CocSearch  guifg=#18A3FF
      hi CocmenuSel ctermbg=237 guibg=#13354A
      hi CocMenuSel  guibg=#637080
      " hi CocFloating  guibg=#44505c
      hi CocFloatDividingLine guifg=#d7e5dc
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


