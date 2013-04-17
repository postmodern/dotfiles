set number
set autoindent
set smartindent
set scrolloff=4
set wildmode=longest,list,full
set wildignore+=.git,.bundle,.yard,*.o,*.rbc
set vb t_vb=
set shell=$SHELL\ -l
color ir_black
syntax on
filetype plugin indent on

" Thorfile, Rakefile and Gemfile are Ruby
autocmd BufRead,BufNewFile {Gemfile,Rakefile,Thorfile,config.ru} set ft=ruby
autocmd BufRead,BufNewFile *.txt set ft=txt

" md, markdown, and mk are markdown and define buffer-local preview
" au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()
