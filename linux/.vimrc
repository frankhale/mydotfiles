
" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible                " Use Vim defaults instead of 100% vi compatibility
set backspace=indent,eol,start  " more powerful backspacing

" Now we set some defaults for the editor
set history=50                  " keep 50 lines of command line history
set ruler                       " show the cursor position all the time
set showcmd			" display incomplete commands
set incsearch			" do incremental searching
set number
set smartindent
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
set showmatch
set nofoldenable

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

if has('gui_running')
  " Make shift-insert work like in Xterm
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>

  syntax on
  set background=dark
  set hlsearch
  set guifont=Fixed
  set guioptions-=m " No menu
  set guioptions-=T " No toolbar
  "set guioptions+=c " Use console dialogs where possible
  set textwidth=80 "  2 for the command line
  set lines=52 " add columns for the Project plugin
  set columns=110
  colorscheme candycode

endif
