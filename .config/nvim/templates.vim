
""Templates
if has("autocmd")
    augroup templates
        autocmd BufNewFile *.tex 0r ~/.config/nvim/templates/skeleton.tex
        autocmd BufNewFile main.cpp 0r ~/.config/nvim/templates/main.cpp
        autocmd BufNewFile *.h 0r ~/.config/nvim/templates/skeleton.h
    augroup END
endif
