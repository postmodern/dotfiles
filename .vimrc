set number
set scrolloff=4
set wildmode=longest,list,full
set wildignore+=.git,.bundle,.yard,*.o,*.rbc
set vb t_vb=
color ir_black
syntax on
filetype plugin indent on

" make and python use real tabs
au FileType make set noexpandtab
au FileType python set noexpandtab

" Thorfile, Rakefile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Thorfile,config.ru} set ft=ruby

" md, markdown, and mk are markdown and define buffer-local preview
" au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()
