"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:          Alfonso Cuffaro
"
" File version:        0.1 - 15/Jan/2012
" Contributions from:
" Setting sections:    - General
"                      - Syntax Highlight, Colors, Fonts...
"                      - VIM user interface
"                      - File content settings
"                      - Files, backups and undo
"                      - Text, tab and indent related
"                      - Editing settings
"                      - KEYBORD MAPPINGS
"                      - Moving around, tabs and buffers
"                      - Command mode related
"                      - Statusline
"                      - General Abbrevs
"                      - Parenthesis/bracket expanding
"                      - Editing mappings
"                      - Searching
"                      - Cope
"                      - Omni complete functions
"                      - Spell checking
"                      - Vim grep
"                      - Python section
"                      - JavaScript section
"                      - Include other files
"                      - MISC
"
" Plugins:
"
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""





"===================================================================================================
" NOTE: on WINDOWS systems
" 1. create a file named '_vimrc' under the user home directory
"    (example: on my Windows 7 system is under C:\Users\alfonso.cuffaro)
"    the created file will be C:\Users\alfonso.cuffaro\_vimrc 
" 2. copy the following rows in the above mentioned file
"
"         fun! MySys()
"            return "windows"
"         endfun
Visual mode related
"
"         set runtimepath=/Users/alfonso.cuffaro/vim_local,$VIMRUNTIME
"         source /Users/alfonso.cuffaro/vim_local/vimrc
"
"===================================================================================================






" this must be first, because it changes other options as a side effect.
" use vim settings, rather then vi settings (much better!)
set nocompatible




"===================================================================================================
" GENERAL
"===================================================================================================

" use a common path separator across all platforms.
" shellslash convert all backslashes to forward slashes on expanding filenames.
" it enables consistancy between Windows and Linux platforms.
" BE CAREFUL! Windows file operations require backslashes -- 
" any paths determined manually (not by Vim) need to be reversed.
set shellslash


set history=100     " how many history lines to remember


" with a map leader it's possible to do extra key combinations
let mapleader = ","         " set leader in this file
let g:mapleader = ","       " set leader globally


" try to set the system locale 
try
    lang en_US
catch
endtry








"===================================================================================================
" USER INTERFACE: Syntax Highlight, Colors, Fonts
"===================================================================================================

" actual font depends on system

if MySys() == "mac"
  set gfn=Menlo:h14
  set shell=/bin/bash
elseif MySys() == "windows"
  set gfn=Consolas:h10:cDEFAULT
  "set shell=/bin/bash
elseif MySys() == "linux"
  set gfn=Monospace\ 10
  set shell=/bin/bash
endif


syntax enable       " enable syntax highlighting
set cursorline      " make current cursor line visible


if has("gui_running")
	set background=dark
	colorscheme peaksea
else
	set background=dark
	colorscheme zellner
endif


if has("gui_running")
	set t_Co=256         " number of colors
endif








"===================================================================================================
" USER INTERFACE: application window
"===================================================================================================


" include toolbar? no, remove
if has("gui_running")
	set guioptions-=T
endif

" set windows height and width, BUT only entering the application for the first time
" if user has yet redimensioned the window to fit his needs, don't reset it (do nothing)
autocmd guienter * : set lines=30 columns=145


set number   " I like having line numbers

" I don't like line numbers shown when file/buffer is new
"autocmd bufnewfile   * : set nonumber
"autocmd bufnew       * : set nonumber
"autocmd bufwritepost * : (line('$') == 1 && getline(1) == ''? set nonumber : set nonumber)
"autocmd guienter     * : set nonumber

	
set cmdheight=1                " the commandbar height
set ruler                      " always show current position

set showmode                    " always show what mode we're currently editing in





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






"===================================================================================================
" FILES: types, backup, etc...
"===================================================================================================
set encoding=utf8






set fileformats=unix,dos,mac        " default file types




