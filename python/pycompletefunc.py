import os
import sys

jedi_path = os.path.join(os.path.dirname(__file__), 'jedi')
sys.path.insert(0, jedi_path)
parso_path = os.path.join(os.path.dirname(__file__), 'parso')
sys.path.insert(0, parso_path)

import jedi

source = '''
import json
json.lo
'''
script = jedi.Script(source, path='example.py')
completions = script.complete(3, len('json.lo'))

print(completions[0].complete)
print(completions[0].name)
