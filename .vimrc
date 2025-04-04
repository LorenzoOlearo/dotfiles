" Lorenzo Olearo ~/.vimrc "


" CUSTOM COMMANDS
"
" Refresh the screen when executing a silent command
:command! -nargs=1 Silent execute ':silent !'.<q-args> | execute ':redraw!'


" MAPPINGS

" Spell-check map
map<F7> :setlocal spell! spelllang=en_us<CR>
map<F8> :setlocal spell! spelllang=it<CR>

" Wrapping
map<F5> :set wrap<CR>
map<F6> :set nowrap<CR>

" pdflatex auto-compile
map<F4> :Silent xelatex %<CR>

" Clear seach highlight after pressing esc
" nnoremap <silent> <esc> :noh<cr><esc>


" GENERAL

" Sets how many lines of history VIM has to remember
" set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Numbered lines
set number

" Set to auto read when a file is changed form outside
" set autoread

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file
command W w !sudo tee % > /dev/null

" return to the last edit position when opening files
au BufReadPost * if line("'\'") > 1 && line("'\'") <= line("$") | exe "normal! g'\"" | endif


" VIM USER INTERFACE
" Set 7 lines to the cursor - when moving vertically using j/k
" set so=7

" Turn on the Wild menu
set wildmenu

" Always shows the current position
set ruler

" Set the height of the command bar
set cmdheight=2

" A baffer becomes hidden when it is abandoned
" set hid

" Ignore case when searching
set ignorecase

" If a pattern contains an uppercase letter, it's case sensitive, otherwise, it isn't case sensitive
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers, moves the cursor to the matched string
set incsearch

" Do not redraw while executing macros for better perfomance 
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


" COLORS AND FONTS

" Enable syntax highlights
syntax enable

" colorscheme molokai 
colorscheme desert 

" Enable 256 colors palette
set t_Co=256

set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard type
set ffs=unix,dos,mac


" TEXT, TAB AND INDENT RELATED

" Enable auto indent
set ai

" Enable smart indent
set si

" No Wrap lines default
set nowrap

" Diseble automatic comment insertion on new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


" STATUS LINE

" Shows the status line
set laststatus=2

" Format the status line
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


" LaTeX related
" Compile *.tex files when saving with :w
" autocmd BufWritePost *.tex silent! execute "!pdflatex % >/dev/null 2>&1" | redraw!
