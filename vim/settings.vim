" ==== NERDTree

nmap <leader>n :NERDTreeToggle<cr>
let NERDTreeShowHidden=0

" Make nerdtree look nice
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

" Open the project tree and expose current file in the nerdtree with Ctrl-\
" calls NERDTreeFind iff NERDTree is active, current window contains a modifiable file, and we're not in vimdiff
function! OpenNerdTree()
    if &modifiable && strlen(expand('%')) > 0 && !&diff
        NERDTreeFind
    else
        NERDTreeToggle
    endif
endfunction
nnoremap <silent> <C-\> :call OpenNerdTree()<CR>


" ==== TComment

" Command-/ to toggle comments
map <D-/> :TComment<CR>
imap <D-/> <Esc>:TComment<CR>i

" ==== LightLine

source ~/dotfiles/vim/settings/lightline.vim

" ==== Ag

source ~/dotfiles/vim/settings/ag.vim

" ==== CtrlP

source ~/dotfiles/vim/settings/ctrlp.vim

" ==== YankRing

source ~/dotfiles/vim/settings/yankring.vim

" ==== Syntastic

source ~/dotfiles/vim/settings/syntastic.vim

" ==== Colorizer

source ~/dotfiles/vim/settings/colorizer.vim

" ==== Tsuquyomi

autocmd FileType typescript nmap <buffer> <Leader>h : <C-u>echo tsuquyomi#hint()<CR>

" ==== YouCompleteMe
"
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif

let g:ycm_semantic_triggers['typescript'] = ['.']

