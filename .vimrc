set rtp+=~/.vim/bundle/Vundle.vim/

call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/' }
Plugin 'tpope/vim-rails.git'
Plugin 'vim-scripts/dbext.vim'
Plugin 'Shougo/unite.vim'
nnoremap ,uf :Unite file
nnoremap ,ub :Unite buffer
" ファイル名補完
Plugin 'L9'
Plugin 'FuzzyFinder'
nmap mf :FufFile <C-r>=expand(g:memolist_path."/")<CR><CR>
Plugin 'glidenote/memolist.vim'
Plugin 'thoughtbot/vim-rspec'
nnoremap <Leader>rt :call RunCurrentSpecFile()<CR>
let g:rspec_command = 'Dispatch bundle exec rspec {spec}'
Plugin 'tpope/vim-dispatch'

" コメントアウト
" \mn
nnoremap <Leader>mn :MemoNew<CR>   
" \ml
nnoremap <Leader>ml :MemoList<CR>  
" \mg
nnoremap <Leader>mg :MemoGrep<CR>

" gcc : comment out a line
" gcap : paragraph
Plugin 'tpope/vim-commentary.git'

" Vim/Ruby Configuration Files
Plugin 'vim-ruby/vim-ruby'
if !exists( "*EndToken" )
  function EndToken()
    let current_line = getline( '.' )
    let braces_at_end = '{\s*\(|\(,\|\s\|\w\)*|\s*\)\?$'
    if match( current_line, braces_at_end ) >= 0
      return '}'
    else
      return 'end'
    endif
  endfunction
endif
nnoremap ,rm :!bundle exec rspec %<CR>

imap <S-CR> <ESC>:execute 'normal o' . EndToken()<CR>O

Plugin 'tpope/vim-bundler'
"Plugin 'tpope/gem-browse'

Plugin 'kchmck/vim-coffee-script'
call vundle#end()

set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartindent
set autoindent
set expandtab

filetype on
filetype indent on
filetype plugin on
syntax on

set laststatus=2
set statusline=%<%f\ %m%r%h%w
set statusline+=%{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'}
set statusline+=%=%l/%L,%c%V%8P

colorscheme torte
