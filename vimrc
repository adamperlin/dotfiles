set nocompatible 
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim

call plug#begin('~/.vim/plugged')"

Plug 'VundleVim/Vundle.vim' 
Plug 'fatih/vim-go'
"Plug 'aereal/vim-colors-japanesque'
"Plug 'tyrannicaltoucan/vim-quantum'
Plug 'scrooloose/nerdtree' 
Plug 'rust-lang/rust.vim' 
Plug 'albertorestifo/github.vim'
Plug 'dikiaap/minimalist'
Plug 'morhetz/gruvbox'
Plug 'nsf/gocode', {'rtp':'vim/'}
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/goyo.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'mileszs/ack.vim'
Plug 'flazz/vim-colorschemes'
Plug 'jacoborus/tender.vim'
Plug 'vim-airline/vim-airline'
Plug 'hzchirs/vim-material'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'leafgarland/typescript-vim'
"colorscheme material-theme
"colorscheme spacemacs-theme 
"colorscheme material 
"colorscheme japanesque
"colorscheme quantum 

"call vundle#end()
 call plug#end() 

function! Basics_init() 
	filetype plugin indent on
	syntax on
	set number
	set tabstop=4
	"set tw=4
	set shiftwidth=4
endfunction 

call Basics_init()

syntax enable 
set background=dark 

"colorscheme vim-material
"colorscheme solarized

"highlight Normal ctermbg=darkblue 
"colorscheme quantum
"colorscheme japanesque 
"colorscheme minimalist
"colorscheme solarized 
"colorscheme gruvbox
"colorscheme github
colorscheme molokai
"colorscheme monokai

if (has("termguicolors"))
	set termguicolors
endif

function! Init_vim_go() 
	let g:go_highlight_functions = 1
	let g:go_highlight_methods = 1
	let g:go_highlight_fields = 1
	let g:go_highlight_types = 1
	let g:go_highlight_extra_types = 1
	let g:go_highlight_operators = 1
	let g:go_highlight_build_constraints = 1
	let g:go_fmt_command = "goimports"
	map <C-n> :cnext<CR> 
	map <C-m> :cprevious<CR> 
	noremap <leader>a :cclose<CR> 
	autocmd FileType go nmap <leader>b <Plug>(go-build) 
	autocmd FileType go nmap <leader>r <Plug>(go-run)
	autocmd FileType go nmap <leader>t <Plug>(go-coverage-toggle)
	nmap cov <Plug>(go-coverage-toggle>
	let g:go_metalineter_autosave_enabled = ['vet', 'golint', 'errcheck']
	let g:go_metalinter_deadline = "5s"
	let g:go_auto_type_info = 1 
	let g:go_auto_sameids = 1 


endfunction
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
"let g:gruvbox_contrast_dark = 1
set background=dark
set autowrite 
call Init_vim_go() 
"set clipboard=unnamedplus 
"set paste
inoremap { {<CR>}<Esc>ko
"autocmd vimenter * NERDTree 
vnoremap <C-c> "+yy
vnoremap <C-v> "+p 
