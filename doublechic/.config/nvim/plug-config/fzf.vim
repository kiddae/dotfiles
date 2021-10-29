
"fzf
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
autocmd! FileType fzf set laststatus=0 noshowmode noruler nonu nornu
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler nu rnu
