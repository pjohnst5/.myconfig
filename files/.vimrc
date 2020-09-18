colorscheme koehler

" stop ding sound
set visualbell

" show line nums 
set number

" two space indents (no tabs)
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" strip trailing whitespace on write
autocmd BufWritePre * :%s/\s+$//e

" bash-like completion
" (https://stackoverflow.com/questions/526858/how-do-i-make-vim-do-normal-bash-like-tab-completion-for-file-names)
set wildmode=longest,list
set wildmenu


