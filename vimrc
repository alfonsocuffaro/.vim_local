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

