func! s:my_colors_setup() abort
	  hi Normal guibg=NONE ctermbg=NONE
      hi CursorLine guibg=NONE guifg=NONE "#536872
      hi Cursorcolumn guibg=NONE guifg=#9bcbac
      hi LineNr guibg=None
      hi VertSplit guibg=bg guifg=fg
      hi CocTreeSelected guibg=NONE guifg=fg
      " hi CocInfoFloat ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black
      " hi PMenu ctermfg=0 ctermbg=242 guifg=#44505c guibg=darkgrey
      hi PMenu guifg=#e9eaed guibg=NONE
      " hi PMenuSel ctermfg=242 ctermbg=8 guifg=#44505c guibg=#61AFEF
      " hi Cocmenu guibg=NONE
      hi CocmenuSel guibg= #666666 "#6B859E " #b7b7b7
      " hi CocmenuSbar guibg=#bcbcbc
      " hi CocSearch  guifg=#18A3FF
      " hi CocmenuSel ctermbg=237 guibg=#637080
      " hi CocMenuSel  guibg=#637080
      " hi CocFloating  guibg=#637080
      hi CocFloating  guibg=NONE guifg=#9ebdd0
      hi CocFloatDividingLine guifg=#d0e4e0
      hi CocErrorSign guifg=#E06C75
      hi CocErrorFloat guifg=#E06C75
      hi FloatermBorder guibg=NONE guifg=#9ebdd0"guifg=#dcdfe4
endfunc
augroup colorscheme_coc_setup | au!
    au ColorScheme * call s:my_colors_setup()
augroup END

autocmd ColorScheme *
  \ hi CocExplorerNormalFloatBorder guifg=#dcdfe4 guibg=#313640
  \ | hi CocExplorerNormalFloat guibg=#313640
  \ | hi CocExplorerSelectUI guibg=#dcdfe4
" " #282c34


