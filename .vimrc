execute pathogen#infect()


" golang stuff
" let g:syntastic_go_checkers = []
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1
let g:go_template_autocreate = 0
let g:go_def_mapping_enabled = 0
let g:go_gocode_autobuild = 0
let go_gocode_autobuild = 0
let g:go_highlight_build_constraints = 0
let g:go_test_compile = 0

" python stuff
let g:black_linelength = 120
" let g:syntastic_check_on_open = 1

" let g:syntastic_python_checkers = ['flake8', 'mypy']
" gd mypy is slooow
" let g:syntastic_python_checkers = ['flake8']

" let g:syntastic_python_flake8_args = "--ignore=E501"
" let g:autopep8_disable_show_diff=1
" let g:autopep8_max_line_length=120

" c++ stuff
" let g:syntastic_cpp_compiler = 'clang++'
" let g:syntastic_cpp_compiler_options = ' -std=c++11'
let g:syntastic_cpp_compiler = ''

command To SyntasticToggleMode

syntax on
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set ru
set colorcolumn=120
set background=light

hi Comment ctermfg=Yellow
hi Constant ctermfg=Yellow
hi Type ctermfg=White
hi PreProc ctermfg=Yellow
hi Statement ctermfg=LightGrey
hi Identifier ctermfg=White
hi Special ctermfg=White

au FileType python set expandtab
au FileType cpp set expandtab
au FileType javascript set expandtab
au FileType go set noexpandtab
au FileType yaml set expandtab shiftwidth=2 tabstop=2
au BufNewFile,BufRead *.thrift set filetype=javascript
autocmd BufWritePre *.py execute ':Black'

set tags=./tags,tags;
