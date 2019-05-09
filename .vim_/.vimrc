syntax enable
set tabstop=2	" number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set relativenumber
set cursorline
set lazyredraw	" redraw only when we need to.


" CUSTOM BINDS

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
