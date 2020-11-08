set noautoindent
set nu
syntax on
set t_Co=256
colorscheme test
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

nnoremap ; :
inoremap jj <C-o>
nnoremap <silent> wh :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" hilight function name
autocmd BufNewFile,BufRead * :syntax match cfunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
autocmd BufNewFile,BufRead * :syntax match cfunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi CFunctions ctermfg=44

set cursorline
hi CursorLine cterm=none
hi CursorLineNr ctermfg=191 cterm=NONE

hi VimSet ctermfg=208
hi VimSetEqual ctermfg=208
