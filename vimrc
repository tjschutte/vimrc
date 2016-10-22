" The best color scheme
colorscheme desert
" Syntax highligting
syntax on
" Use 2 spaces for indents
set shiftwidth=2
" tabs should be 2 spaces
set tabstop=2
" Use spaces instead of tabs
set expandtab
" Tab to previous set lines
set smarttab
" show line numbers (can be turned on and off with ctrl + n)
set number
" vim command history, can use up arrows just like the bash shell
set history=700
" Highlight items found by search
set hlsearch
" Mapping control + n to show / hide line numbers
nmap <C-N> :set invnumber<CR>
" Auto indent stuff, tab / control + i will enable / disable. ]
" nice for copy / pasting
set autoindent
nmap <C-I> :set invautoindent<CR>

" vim file history, will open a file to where you left off from
if has("autocmd")
   " When editing a file, always jump to the last cursor position
   autocmd BufReadPost * if line("'\"") | exe "normal '\"" | endif

   "In makefiles, don't expand tabs to spaces, since actual tabs are needed,
   "and set indentation at 8 chars to be sure that all indents are tabs:
   autocmd FileType make     set noexpandtab shiftwidth=8
   autocmd FileType automake set noexpandtab shiftwidth=8
   autocmd BufReadPost *.py  setlocal tabstop=4 shiftwidth=4
   autocmd BufNewFile,BufRead *.jlex set syntax=java
   autocmd BufNewFile,BufRead *.cup set syntax=java
endif

" this highligghts when you go over 80 characters in a not so subtle red
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
