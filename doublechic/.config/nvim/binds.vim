"Custom commands
command -nargs=1 Run :sp | :wincmd j | :resize 10 | :terminal <args> 

""Custom binds
let mapleader = " "
set timeout timeoutlen=1000 ttimeoutlen=10
inoremap jk <Esc>
"inoremap <C-c> <Esc>
nnoremap <leader>o :Files<CR>
nnoremap <leader>O :Files $HOME<CR>
nnoremap <leader>u :UndotreeToggle<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>w :wincmd w<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>> :vertical resize >5<CR>
nnoremap <leader>< :vertical resize <5<CR>
nnoremap <leader>= :winc =<CR>

nnoremap <S-tab> :BufferPrevious<CR>
nnoremap <tab> :BufferNext<CR>
nnoremap <silent> <C-s> :BufferPick<CR>
nnoremap <leader>q :BufferClose<CR>
nnoremap <leader>n :enew<CR>
nnoremap <leader>r :silent !$TERMINAL -e ranger & <CR>

nnoremap Y y$

tnoremap <Esc> <C-\><C-N>
tnoremap jk <Esc>

nnoremap <F10> :call asyncrun#quickfix_toggle(6)<CR>

autocmd FileType tex nnoremap <buffer> <F4> :w<CR>:silent !pdflatex % -output-directory %:p:h<CR>
autocmd FileType rmd nnoremap <buffer> <F4> :w<CR>:silent !R -e "rmarkdown::render('%',output_dir='%:p:h')"<CR>
autocmd FileType {markdown,pandoc} nnoremap <buffer> <F4> :w<CR>:silent !pandoc -o '%:p:r.pdf' %<CR>
"autocmd BufWritePost *.md :AsyncRun -mode=term -pos=hide pandoc -o '%:p:r.pdf' %
autocmd FileType {cpp,ocaml} nnoremap <buffer> <F4> :Run make<CR>
autocmd FileType java nnoremap <buffer> <F4> :w<CR>:silent !javac %<CR>

autocmd FileType {rmd,tex,markdown,pandoc} nnoremap <buffer> <F5> :w<CR>:silent !setsid -f zathura '%:p:r.pdf'<CR>
autocmd FileType python nnoremap <buffer> <F5> :w<CR>:Run python3 %<CR>
autocmd FileType python nnoremap <buffer> <F6> :w<CR>:Run ipython -i %<CR>
autocmd FileType java nnoremap <buffer> <F5> :w<CR>:Run java %<CR>
autocmd FileType {cpp,ocaml} nnoremap <buffer> <F5> :w<CR>:Run make run<CR>
"autocmd FileType cpp nnoremap <buffer> <F5> :AsyncRun make run<CR>
