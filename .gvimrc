"set gfn=Monaco:h12.00
set gfn=Menlo:h11.00


"set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.
set guioptions-=T                 " Hide toolbar.
"set background=dark               " Background.


if has("gui_macvim")

  " Command-/ to toggle comments
  map <D-/> <plug>NERDCommenterToggle<CR>

  " Create a vertical split
  map <D-d> :vsp<CR> 

  map <D-S-d> :sp<CR>   

  map <S-f>   :Rfind<CR>
 
  map :log :ConqueTermSplit tail -f log/development.log<CR>
  map :console :ConqueTermSplit bash<CR>

  "Map ; to : because I hate pressing shift.
  map ; :

  map <D-S-Right> <Esc>v$
  map <D-S-Left> <Esc>v0
  map <D-S-Down> <Esc>vj
  map <D-S-Up> <Esc>vk

  vmap <D-S-Right> $
  vmap <D-S-Left> 0
  vmap <D-S-Down> j
  vmap <D-S-Up> k

  " Indent Text
  vmap <D-}> >gv
  vmap <D-{> <gv

  " Map \ to cycle splits instead of tabs
  cmap <Leader>\ <C-w>w

 " Map Command-# to switch tabs
  map  <D-0> 0gt
  imap <D-0> <Esc>0gt
  map  <D-1> 1gt
  imap <D-1> <Esc>1gt
  map  <D-2> 2gt
  imap <D-2> <Esc>2gt
  map  <D-3> 3gt
  imap <D-3> <Esc>3gt
  map  <D-4> 4gt
  imap <D-4> <Esc>4gt
  map  <D-5> 5gt
  imap <D-5> <Esc>5gt
  map  <D-6> 6gt
  imap <D-6> <Esc>6gt
  map  <D-7> 7gt
  imap <D-7> <Esc>7gt
  map  <D-8> 8gt
  imap <D-8> <Esc>8gt
  map  <D-9> 9gt
  imap <D-9> <Esc>9gt

  " ConqueTerm wrapper
  function StartTerm()
    execute 'ConqueTerm ' . $SHELL . ' --login'
    setlocal listchars=tab:\ \ 
  endfunction
  
  set directory=$HOME/.vim/tmp/  " Keep swap files in one location

endif

