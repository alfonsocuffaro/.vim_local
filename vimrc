"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:          Alfonso Cuffaro
"
" File version:        0.1 - 15/Jan/2012
" Contributions from:
" Setting sections:    - GENERAL
"                      - USER INTERFACE: Syntax Highlight, Colors, Fonts
"                      - USER INTERFACE: application window
"                      - USER INTERFACE: tabbing
"                      - FILES: types, backup, etc
"                      - EDITING
"                      - SEARCHING
"                      - APPLICATION BEHAVIOUR
"                      - KEYBORD MAPPINGS

"                      - Syntax Highlight, Colors, Fonts...
"                      - File content settings
"                      - Files, backups and undo
"                      - Text, tab and indent related
"                      - Editing settings
"                      - Moving around, tabs and buffers
"                      - Command mode related
"                      - Statusline
"                      - General Abbrevs
"                      - Parenthesis/bracket expanding
"                      - Editing mappings
"                      - Cope
"                      - Omni complete functions
"                      - Spell checking
"                      - Vim grep
"                      - Python section
"                      - JavaScript section
"                      - Include other files
"                      - MISC
"                      - Visual mode related
"
" Plugins:
"
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" C:\Users\alfonso.cuffaro\vim_local - Copy (2)\vimrc



let g:LINUX   = 'LINUX'
let g:MAC     = 'MAC'
let g:WINDOWS = 'WINDOWS'

let g:MY_SYSTEM = LINUX



fun! MySys()
	return g:MY_SYSTEM 
endfun




if MySys() == LINUX
	set runtimepath=/home/alfonso/vim_local,$VIMRUNTIME
elseif MySys() == WINDOWS
	set runtimepath=/Users/alfonso.cuffaro/vim_local,$VIMRUNTIME
elseif MySys() == MAC
	" do mac stuff here...
else
	" unknown system, do nothing
	finish
endif


"===================================================================================================
" NOTE:
"	- on WIN 7:
"		- copy file .vimrc.windows.win7 to user's home folder (/users/alfonso)
"		- then rename to _vimrc
"	- on LINUX:
"		- copy file .vimrc.linux to user's home folder (/home/alfonso)
"		- then rename to .vimrc
"
"===================================================================================================






" this must be first, because it changes other options as a side effect.
" use vim settings, rather then vi settings (much better!)
set nocompatible


" manage all others plugins using pathogen plugin (from Tim Pope)
" (http://www.vim.org/scripts/script.php?script_id=2332)
filetype off                       " force reloading *after* pathogen loaded
set runtimepath+=$HOME/

call pathogen#infect()
call pathogen#helptags()
"call vundle#rc()



" required: let Vundle manage Vundle
"Bundle "gmarik/vundle"
"Bundle "lusty"
"Bundle 'Headlights




filetype on








"===================================================================================================
" GENERAL
"===================================================================================================

" restore filetype management ;-)
filetype plugin on
filetype indent on


" use a common path separator across all platforms.
" shellslash convert all backslashes to forward slashes on expanding filenames.
" it enables consistancy between Windows and Linux platforms.
" BE CAREFUL! Windows file operations require backslashes --
" any paths determined manually (not by Vim) need to be reversed.
set shellslash


set history=100     " how many history lines to remember


" with a map leader it's possible to do extra key combinations
"let mapleader = ","         " set leader in this file
"let g:mapleader = ","       " set leader globally


" try to set the system locale
try
    lang en_US
catch
endtry








"===================================================================================================
" USER INTERFACE: Syntax Highlight, Colors, Fonts
"===================================================================================================
" actual font depends on system
if MySys() == MAC
  set gfn=Menlo:h14
  "set shell=/bin/bash
elseif MySys() == WINDOWS
  set gfn=Consolas:h10:cDEFAULT
  "set shell=/bin/bash
elseif MySys() == LINUX
  set gfn=Monospace\ 10
  set shell=/bin/bash
endif


syntax enable       " enable syntax highlighting (keep your current color settings)
set cursorline      " make current cursor line visible


if has("gui_running")
	set background=dark
	"colorscheme peaksea
	colorscheme solarized

else
	set background=dark
	colorscheme zellner
endif


if has("gui_running")
	"set t_Co=256         " number of colors
endif




set showmatch       " show matching brackets when text indicator is over them
set matchtime=4     " matching parenthesis: how many tenths of a second to blink                                                          








"===================================================================================================
" USER INTERFACE: application window & interactions
"===================================================================================================

" include toolbar? no, remove it
if has("gui_running")
	set guioptions-=T
endif

"let g:LINUX   = 'LINUX'
"let g:MAC     = 'MAC'
"let g:WINDOWS = 'WINDOWS'
"
"let g:MY_SYSTEM = LINUX
"
"
"
"fun! MySys()
"	return g:MY_SYSTEM 
"endfun
"
"
"
"
"if MySys() == LINUX
"	set runtimepath=/home/alfonso/vim_local,$VIMRUNTIME
"	source /home/alfonso/vim_local/vimrc
"elseif MySys() == WINDOWS
"	set runtimepath=/Users/alfonso.cuffaro/vim_local,$VIMRUNTIME
"	source /Users/alfonso.cuffaro/vim_local/vimrc
"elseif MySys() == MAC
"	" do mac stuff here...
"else
"	" do nothing
"	finish
"endif

" set windows height and width, BUT only entering the application for the first time
" if user has yet redimensioned the window to fit his needs, don't reset it (do nothing)
autocmd guienter * : set lines=30 columns=145


set number   " I like having line numbers

" I don't like line numbers shown when file/buffer is new
"autocmd bufnewfile   * : set nonumber
"autocmd bufnew       * : set nonumber
"autocmd bufwritepost * : (line('$') == 1 && getline(1) == ''? set nonumber : set nonumber)
"autocmd guienter     * : set nonumber


set cmdheight=1     " the commandbar height
set ruler           " always show current position
set lazyredraw      " don't update the display while executing macros
set showmode        " show me the mode I'm in
set wildmenu        " enable enhanced command-line completion

set noerrorbells    " no sound on errors
set visualbell      " on errors blink the window

set foldmethod=indent
set foldlevel=99

"if has("gui_running")
"	" GUI is running or is about to start.
"	" Maximize gvim window.
"else
"	" This is console Vim.
"	if exists("+lines")
"		set lines=50
"	endif
"
"	if exists("+columns")
"		set columns=100
"	endif
"endif


"set linebreak
"set textwidth=500
"set wrap        " wrap lines
set so=7           " minimum nr. of lines above and below cursor (when moving vertical)

set mouse=a

"===================================================================================================
" USER INTERFACE: tabbing
"===================================================================================================
set hidden      " it’s OK to have an unwritten buffer


"===================================================================================================
" FILES: types, backup, etc...
"===================================================================================================
set encoding=utf8
set fileformats=unix,dos,mac        " default file types

set nobackup           " turn backup off
set noautoread         " ask me to reload a file if it has been modified from an external application
set writebackup        " make a backup before overwriting a file (backup is removed on successful writing)
"set noswapfile
"set directory=$TEMP    " List of directory names for the swap file, separated with commas
 
set browsedir=buffer   " file browser uses buffer dir to start

" persistent undo
try
    if MySys() == "windows"
      set undodir=/Temp
    else
      set undodir=~/.vim_runtime/undodir
    endif

    "set undofile
catch
endtry




"===================================================================================================
" EDITING
"===================================================================================================
set backspace=eol,start,indent " set how backspace (i.e. <BS>, <Del>,...) works in insert mode
set autoindent                 " auto indent (local to buffer)
set smartindent                " smart indent

" remap VIM 0
"map 0 ^ 	               " don't remap, I like the usual way of working

" use spaces instead of tabs: NO, I like tabs
set noexpandtab

" the width of TAB char (when met into file)
set tabstop=4

" number of spaces that a <Tab> counts for while performing editing operations
" (like inserting a <Tab> or using <BS>)
" when hitting <BS>, pretend like a tab is removed, even if spaces are used
set softtabstop=4

" number of spaces to use for each step of (auto)indent
set shiftwidth=4


set smarttab






"===================================================================================================
" SEARCHING
"===================================================================================================
set magic                      " set magic on, for regular expressions

set incsearch  " I like incremental search
set ignorecase " ignore case when searching
set smartcase  " search is case sensitive (override ignorecase option) if the search pattern contains an upper case char
set hlsearch   " highlight search things










"===================================================================================================
" APPLICATION BEHAVIOUR
"===================================================================================================

" auto change the directory to the current file I'm working on
autocmd BufEnter * lcd %:p:h



"===================================================================================================
" KEYBORD MAPPINGS
"===================================================================================================
map <leader>e :e! ~/vim_local/vimrc<cr>               " fast editing of the vim conf file
autocmd! bufwritepost vimrc source ~/vim_local/vimrc  " when vim conf file is edited, reload it

"map <leader>w :w!<cr>   " fast saving
map <leader>w :w<cr>     " fast saving

map <silent> <space> :nohlsearch<cr>



" --- command mode -----------------------------









"===================================================================================================
" PLUGIN: Command-T
"===================================================================================================
"let g:CommandTMaxHeight = 15
"set wildignore+=*.o,*.obj,.git,*.pyc
"noremap <leader>j :CommandT<cr>
"noremap <leader>y :CommandTFlush<cr>

