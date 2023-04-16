if exists("g:neovide")
    " Put anything you want to happen only in Neovide here
    set guifont=Hack\ Nerd\ Font\ Mono:h15
    set clipboard+=unnamed 
    set linespace=0
    let g:neovide_scale_factor=1.0
    function! ChangeScaleFactor(delta)
      let g:neovide_scale_factor = g:neovide_scale_factor * a:delta
    endfunction
    nnoremap <expr><C-=> ChangeScaleFactor(1.25)
    nnoremap <expr><C--> ChangeScaleFactor(1/1.25)
    let g:neovide_transparency = 0.8
    let g:neovide_confirm_quit = v:true
    let g:neovide_remember_window_size = v:true
    let g:neovide_cursor_antialiasing = v:true
    let g:neovide_scale_factor=1.0
    function! ChangeScaleFactor(delta)
      let g:neovide_scale_factor = g:neovide_scale_factor * a:delta
    endfunction
    nnoremap <expr><C-=> ChangeScaleFactor(1.25)
    nnoremap <expr><C--> ChangeScaleFactor(1/1.25)
    "let g:neovide_fullscreen = v:true

    " g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
"    let g:neovide_transparency = 0.0
"    let g:transparency = 0.8
"    let g:neovide_background_color = '#0f1117'.printf('%x', float2nr(255 * g:transparency))

endif

