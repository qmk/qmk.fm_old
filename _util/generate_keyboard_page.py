#!/usr/bin/env python3

import os

from jinja2 import Template

with open('.keyboards', 'r') as fd:
    keyboards = fd.readlines()

# loop through each language here
languages = [item for item in os.listdir('_util/_i18n')]

for language in languages:
  keyboard_entries = []
  for keyboard in keyboards:
      keyboard = keyboard.strip()
      keyboard_base = keyboard.split('/')[0]
      keyboard_name = keyboard.replace('/', '_')
      format = None
      readme = None

      if os.path.exists(f'compiled/{keyboard_name}_default.bin'):
          format = 'bin'
      elif os.path.exists(f'compiled/{keyboard_name}_default.hex'):
          format = 'hex'
      elif os.path.exists(f'compiled/{keyboard_name}_default.uf2'):
          format = 'uf2'

      if os.path.exists(f'_i18n/{language}/keyboards/{keyboard_base}.md'):
          readme = f'_i18n/{language}/keyboards/{keyboard_base}.md'

      if format:
          keyboard_entries.append({
              'pathname': keyboard,
              'name': keyboard_name,
              'filename': f'compiled/{keyboard_name}_default.{format}',
              'readme': readme,
          })

  # Write out the generated template
  if os.path.exists(f'_i18n/{language}/keyboards.md'):
      os.remove(f'_i18n/{language}/keyboards.md')

  with open(f'_util/_i18n/{language}/keyboards_template.md', 'r') as fd:
    pagetext = fd.read()

  with open(f'_i18n/{language}/keyboards.md', 'w') as fd:
      t = Template(pagetext)
      fd.write(t.render(keyboards=keyboard_entries))
#end loop
