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
  set t_Co=256         " number of colors
  set background=dark
  colorscheme peaksea
else
  set background=dark
  colorscheme zellner
endif

