" ---vim:fdm=marker

" Commands wrapper

" TODO: Find a way to avoid naming conflict between fzf and vim-eunuch
function! LocateWrapper()
    let buf = input("Locate: ")
    execute "Locate" buf
endfunction

function! RenameWrapper()
    let buf = input("Rename Current Buffer File: ")
    execute "Rename" buf
endfunction

function! SudoEditWrapper()
    let buf = input("Sudo Edit: ")
    execute "SudoEdit" buf
endfunction

" Leader guide

let g:leaderGuide_vertical = 1

" Define prefix dictionary
let g:lmap =  {}

call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>

let g:lmap['/'] = ['Ag', 'smart search']
let g:lmap.0 = ['1wincmd w', 'window 0']
let g:lmap.1 = ['2wincmd w', 'window 1']
let g:lmap.2 = ['3wincmd w', 'window 2']
let g:lmap.3 = ['4wincmd w', 'window 3']
let g:lmap.4 = ['5wincmd w', 'window 4']
let g:lmap.5 = ['6wincmd w', 'window 5']
let g:lmap.6 = ['7wincmd w', 'window 6']
let g:lmap.7 = ['8wincmd w', 'window 7']
let g:lmap.8 = ['9wincmd w', 'window 8']
let g:lmap.9 = ['10wincmd w', 'window 9']
let g:lmap[':'] = ['Commands', 'M-x'] " Keep behavior from Unite command
let g:lmap[';'] = ['''<,''>Commentary', 'vim-commentary-operator']


" applications {{{
let g:lmap.a = { 'name' : 'applications' }
" }}}

" buffers {{{
let g:lmap.b = { 'name' : 'buffers' }
" }}}

" comile/comments {{{
let g:lmap.c = { 'name' : 'compile/comments' }
" }}}

" capture/colors {{{
let g:lmap.C = { 'name' : 'capture/colors' }
" }}}

" errors {{{
let g:lmap.e = { 'name' : 'errors' }
" }}}

" files {{{
let g:lmap.f = { 'name' : 'files' }
let g:lmap.f.c = ['saveas', 'copy-file']

" files/convert {{{
let g:lmap.f.C = { 'name' : 'files/convert' }
" }}}

let g:lmap.f.D = ['Remove', 'delete-current-buffer-file']
let g:lmap.f.E = ['silent call SudoEditWrapper()', 'sudo-edit']
let g:lmap.f.f = ['Files', 'fzf-find-files']
let g:lmap.f.L = ['silent call LocateWrapper()', 'fzf-locate']
let g:lmap.f.R = ['silent call RenameWrapper()', 'rename-current-buffer-file']
let g:lmap.f.s = ['write', 'save-buffer']

" files/vim {{{
let g:lmap.f.e = { 'name' : 'vim' }
let g:lmap.f.e.d = ['edit $MYVIMRC', 'find-dotfile']
" }}}

" }}}

" git/versions-control {{{
let g:lmap.g = { 'name' : 'git/versions-control' }
" }}}

" help/highlight {{{
let g:lmap.h = { 'name' : 'help/highlight' }
" }}}

" insertion {{{
let g:lmap.i = { 'name' : 'insertion' }
" }}}

" join/split {{{
let g:lmap.j = { 'name' : 'join/split' }
" }}}

" lisp {{{
let g:lmap.k = { 'name' : 'lisp' }
" }}}

" narrow/numbers {{{
let g:lmap.n = { 'name' : 'narrow/numbers' }
" }}}

" projects {{{
let g:lmap.p = { 'name' : 'projects' }
let g:lmap.p.f = ['GitFiles', 'fzf-project-find-file']
" }}}

" quit {{{
let g:lmap.q = { 'name' : 'quit' }
" }}}

" registers/rings {{{
let g:lmap.r = { 'name' : 'registers/rings' }
" }}}

" search/symbol {{{
let g:lmap.s = { 'name' : 'search/symbol' }
" }}}

" toggles {{{
let g:lmap.t = { 'name' : 'toggles' }
" }}}

" UI toggles/themes {{{
let g:lmap.T = { 'name' : 'UI toggles/themes' }
" }}}

" windows {{{
let g:lmap.w = { 'name' : 'windows' }
let g:lmap.w['-'] = ['split', 'split-window-below']
let g:lmap.w['/'] = ['vsplit', 'split-window-right']
let g:lmap.w.h = ['wincmd h', 'window-left']
let g:lmap.w.j = ['wincmd j', 'window-down']
let g:lmap.w.k = ['wincmd k', 'window-up']
let g:lmap.w.l = ['wincmd l', 'window-right']
" }}}

" text {{{
let g:lmap.x = { 'name' : 'text' }
" }}}

" zoom {{{
let g:lmap.z = { 'name' : 'zoom' }
" }}}


