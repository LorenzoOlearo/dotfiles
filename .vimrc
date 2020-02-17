"
" Lorenzo Olearo ~/.vimrc "
"

"GENERAL

" Sets how many lines of history VIM has to remember
" set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed form outside
" set autoread

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file
command W w !sudo tee % > /dev/null

" Spell-check set map
map<F6> :setlocal spell! spelllang=en_us<CR>
map<F7> :setlocal spell! spelllang=it<CR>

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

" If a pattern contains an uppercase letter, it is case sensitive, otherwise,
" it is not
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers, 
" moves the cursor to the matched string
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

" Enable 256 colors palette in gnome-terminal
if $COLORTERM == 'gnome=terminal'
	set t_Co=256
endif
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

" NO Wrap lines
set nowrap

" STATUS LINE

" Shows the status line
set laststatus=2

" Format the status line
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" LaTeX related
" Compile *.tex files when saving with :w
autocmd BufWritePost *.tex silent! execute "!pdflatex % >/dev/null 2>&1" | redraw!

