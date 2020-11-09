" Include the .vimrc source files below:


" be able to detect file type
   filetype on
   " To check filetype:
   "set filetype?


" import vim settings
augroup vimGroup
autocmd!
   "source .vimrc_all
   source ~/.vimrc_general
   source ~/.vimrc_highlights
   source ~/.vimrc_abbrev
   source ~/.vimrc_abbrev_vim
   source ~/.vimrc_func
	"
	source ~/.vimrc_kindle
augroup END


" source the tex commands for latex files
augroup texGroup
autocmd!
	":autocmd FileType tex      source ~/.vimrc_latex
	":autocmd FileType tex      source ~/.vimrc_abbrev_latex
	":autocmd FileType plaintex source ~/.vimrc_latex
	":autocmd FileType plaintex source ~/.vimrc_abbrev_latex
	:autocmd FileType tex,plaintex source ~/.vimrc_abbrev_latex
	:autocmd FileType tex,plaintex source ~/.vimrc_latex
	"
	" insert LATEX skeleton into empty file
	":autocmd FileType plaintex source! ~/science/LATEX/Blank.tex
	:autocmd BufNewFile  *.tex r ~/science/LATEX/Blank.tex
	"source .vimrc_latex
augroup END



" source the tex commands for latex files
augroup pythonGroup
autocmd!
	":autocmd FileType py,python source ~/.vimrc_abbrev_latex
	:autocmd FileType py,python source ~/.vimrc_python
	:autocmd FileType py,python source ~/.vimrc_ide
	"
	" insert python skeleton into empty file
	":autocmd BufNewFile  *.py execute "normal i# To run script" | execute "normal o# os.system(\"" | execute "normal o" | execute ":.!pwd" | execute "normal o/" | execute "normal \"%p2kJJA\")" | execute ":s_ __g"
	:autocmd BufNewFile  *.py execute "normal i# To run script" | execute "normal o# exec(open(\"" | execute "normal o" | execute ":.!pwd" | execute "normal o/" | execute "normal \"%p2kJJA\").read())" | execute ":s_ __g"
augroup END


" source commands for mathematica files
augroup mathematicaGroup
autocmd!
   ":autocmd FileType nb  source ~/.vimrc_mathematica
   :autocmd FileType mma source ~/.vimrc_mathematica
   "source .vimrc_mathematica
	"
	:autocmd BufNewFile  *.nb execute "normal i(**\nTo run script:" | execute "normal o Get[\"" | execute "normal o" | execute ":.!pwd" | execute "normal o/" | execute "normal \"%p2kJJA\")];" | execute ":s_ __g" | normal o**)
augroup END


" source commands for letter correspondance (email) files
augroup letterGroup
autocmd!
   :autocmd FileType text source ~/.vimrc_letters
augroup END


" source commands for utilities (if empty file)
augroup utilGroup
autocmd!
	if @% == ""
		source ~/.vimrc_util
		source ~/.vimrc_term
	endif
	":autocmd BufNewFile,BufRead source ~/.vimrc_util
	":autocmd FileReadPre source ~/.vimrc_util
	":autocmd FileReadPost source ~/.vimrc_util
	":autocmd FilterReadPre source ~/.vimrc_util
	":autocmd FilterReadPost source ~/.vimrc_util
augroup END


" For multiple windows
" Hide cursorline, cursorcolumn in inactive windows
augroup CursorHighlightActiveWindow
autocmd!
	autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
	autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorcolumn
	"autocmd WinLeave * setlocal nocursorline
	"autocmd WinLeave * setlocal nocursorcolumn
augroup END


