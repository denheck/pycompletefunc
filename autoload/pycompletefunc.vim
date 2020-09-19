function! pycompletefunc#CompleteFunc(findstart, base)
  let s:plugin_root_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')

python3 <<EOF
import sys
from os.path import normpath, join
import vim

plugin_root_dir = vim.eval('s:plugin_root_dir')
jedi_path = join(plugin_root_dir, 'python', 'jedi')
parso_path = join(plugin_root_dir, 'python', 'parso')

sys.path.insert(0, jedi_path)
sys.path.insert(0, parso_path)

import jedi
EOF

  if a:findstart
    " locate the start of the word
    let line = getline('.')
    let start = col('.') - 1
    while start > 0 && line[start - 1] =~ '\a'
      let start -= 1
    endwhile
    return start
  else
    " find completions matching with "a:base"
    
python3 <<EOF
# get contents of entire current buffer
#curpos = vim.eval('getcurpos()')
#line = int(curpos[1])
#column = int(curpos[4])
res = []

base = vim.eval('a:base')
source = ''
row, column = vim.current.window.cursor
for i, line in enumerate(vim.current.buffer):
  # enter this path again, otherwise source would be incomplete
  if i == row - 1:
    source += line[:column] + base + line[column:]
  else:
    source += line

  source += '\n'

column += len(vim.eval('a:base'))
script = jedi.Script(code=source)
completions = []
completions = script.complete(line=row, column=column)

for completion in completions:
  res.append(completion.name)
EOF

      let res = py3eval('res')

      return res
    endif
  endfunction
