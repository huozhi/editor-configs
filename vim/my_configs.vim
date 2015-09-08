set nu
set foldmethod=manual
set foldlevelstart=99

map <F10> :call Run()<CR>
func! Run()
    exec "w"
    if &filetype == 'c'
        exec "! ./%<"
    elseif &filetype == 'cpp'
        exec "! ./%<"
    elseif &filetype == 'py'
        exec "!python %"
    elseif &filetype == 'sh'
        exec "! ./%"    
    endif
endfunc


map <S-F9> :call Compile()<CR>
func! Compile()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -o %<"
    elseif &filetype == 'cpp'
        exec "!g++ -std=c++11 % -o %<"
    elseif &filetype == 'py'
        exec "!python %"
    elseif &filetype == 'sh'
        exec "!chmod a+x %"
    endif 
endfunc 

map <F9> :call CompileRun()<CR>
func! CompileRun()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -o %< && ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ -std=c++11 % -o %< && ./%<"
    elseif &filetype == 'py'
        exec "!python %"
    elseif &filetype == 'sh'
        exec "!chmod a+x % && ./%"
    endif
endfunc
 

