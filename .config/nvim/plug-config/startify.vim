"autocmd BufEnter * if line2byte('.') == -1 && len(tabpagebuflist()) == 1 | Startify | endif
