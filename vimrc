set nocompatible 
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin() 
Plugin 'VundleVim/Vundle.vim' 
Plugin 'fatih/vim-go'
Plugin 'aereal/vim-colors-japanesque'
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'scrooloose/nerdtree' 
Plugin 'rust-lang/rust.vim' 
Plugin 'albertorestifo/github.vim'
Plugin 'dikiaap/minimalist'
Plugin 'morhetz/gruvbox' 
"colorscheme japanesque
"colorscheme quantum 

call vundle#end() 

function! Basics_init() 
	filetype plugin indent on
	syntax on
	set number
	set tabstop=4
	"set tw=4
	set shiftwidth=4
endfunction 

call Basics_init() 

"highlight Normal ctermbg=darkblue 
"vim-go specific stuff
"colorscheme quantum
"colorscheme japanesque 
"colorscheme minimalist
colorscheme gruvbox
"colorscheme github
if (has("termguicolors"))
	set termguicolors
endif

function! Init_vim_go() 
	let g:go_highlight_functions = 1
	let g:go_highlight_methods = 1
	let g:go_highlight_fields = 1
	let g:go_highlight_types = 1
	let g:go_highlight_operators = 1
	let g:go_highlight_build_constraints = 1
endfunction

"let g:gruvbox_contrast_dark = 1
set background=dark
call Init_vim_go() 

"autocmd vimenter * NERDTree 
