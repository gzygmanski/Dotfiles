execute pathogen#infect()
syntax on
filetype plugin indent on
set number
set backspace=indent,eol,start

" colorscheme harlequin  
colorscheme badwolf
let g:badwolf_darkgutter = 1

if has("autocmd")
	augroup templates
	autocmd BufNewFile *.tex 0r ~/.vim/latex_temp/temp.tex
	autocmd BufRead,BufNewFile *.tex setlocal spell spelllang=pl
	augroup END
endif

let tex_preview_always_autosave = 1
autocmd Filetype tex setl updatetime=500
let g:livepreview_previewer = 'zathura'

nmap <F12> :LLPStartPreview<cr>

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'flazz/vim-colorschemes'

" Plugin 'ying17zi/vim-live-latex-preview'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'lervag/vimtex'

call vundle#end()            " required
filetype plugin indent on    " required 
