set number
set autoindent
set smartindent
set scrolloff=4
set wildmode=longest,list,full
set wildignore+=.git,.bundle,.yard,*.o,*.rbc
set vb t_vb=
color ir_black
syntax on
filetype plugin indent on

" make and python use real tabs
autocmd FileType make set noexpandtab
autocmd FileType python set noexpandtab

" Thorfile, Rakefile and Gemfile are Ruby
autocmd BufRead,BufNewFile {Gemfile,Rakefile,Thorfile,config.ru} set ft=ruby

" Enable spellchecking for *.md and *.txt files
autocmd BufNewFile,BufRead *.txt set spell
autocmd BufNewFile,BufRead *.md set spell

" md, markdown, and mk are markdown and define buffer-local preview
" au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()
