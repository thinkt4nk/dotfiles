:filetype on
:syntax on
:set background=dark
:colorscheme wombat 
:set nowrap
:set nu
:set smartindent
:set cursorline
:set ts=4
:set sw=4
:set sts=4
:set expandtab
if has("gui_macvim")
	:set lines=160
	:set columns=350
endif
:set nofoldenable
:set list
:setl autoread
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.tmpl set filetype=php
au BufRead,BufNewFile *.coffee set filetype=coffee
au BufRead,BufNewFile *.changelog set filetype=changelog
au BufRead,BufNewFile *.jinja set filetype=html
syntax enable "Enable syntax hl
" Set font according to system

"set gfn=Menlo:h10
set gfn=Monaco:h12
set shell=/bin/bash
set encoding=utf8
try
	lang en_US
catch
endtry

set ffs=unix,dos,mac "Default file types


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart mappings on the command line
cno $j e ./
cno $h e ~/
cno $d e ~/Desktop/
cno $dev e ~/dev
cno $sax cd /data/web/vhosts/saxophone.org/protected
cno $vhost cd /Applications/MAMP/htdocs
cno $front cd /Applications/MAMP/htdocs/kofront
cno $admin cd /Applications/MAMP/htdocs/koadmin
cno $n NERDTree

map <C-Tab> :tabnext<CR>
map <C-Y> :CommandT<CR>
map <C-N> <C-W>t<C-W>H
map <C-M> <C-W>t<C-W>K

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
"source ~/.vim/plugin/plugin/php-doc.vim
"inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
"nnoremap <C-P> :call PhpDocSingle()<CR>
"vnoremap <C-P> :call PhpDocRange()<CR>
autocmd FileType html,xml,xsl,php source ~/.vim/plugin/closetag.vim
if has("gui_macvim")
	:colorscheme symfony
  macmenu &File.New\ Tab key=<nop>
  map <D-y> :CommandT<CR>
  map <D-u> :tabnext<CR>
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Autocommands 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:cd /var/www/html
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
"autocmd VimEnter * ConqueTermSplit bash
"autocmd VimEnter * 5 wincmd +
"autocmd VimEnter * wincmd p


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custom Functions 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! Twospace()
:set ts=2
:set sw=2
:set sts=2
endfunction
function! Fourspace()
:set ts=4
:set sw=4
:set sts=4
endfunction
