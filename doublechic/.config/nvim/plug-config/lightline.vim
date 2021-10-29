let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'tabline': {
      \   'left': [ ['buffers'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ },
      \ 'separator': { 'left': "\ue0b4", 'right': "\ue0b6" },
      \ 'subseparator': { 'left': "\ue0b5", 'right': "\ue0b7" }
      \ }
