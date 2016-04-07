"buffer switching functions
fun! PreviousBuffer()
	"echo bufname('%')
	if bufname('%') !~ 'NERD_tree_'
	   :bp
	   "echo 'Previous'
	endif
endfun

fun! NextBuffer()
	"echo bufname('%')
	if bufname('%') !~ 'NERD_tree_'
		:bn
		"echo 'Next'
	endif
endfun



