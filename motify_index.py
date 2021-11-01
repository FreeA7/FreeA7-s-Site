# -*- coding: utf-8 -*-
"""
Created on Mon Nov  1 21:04:31 2021

@author: FreeA7

增加备案号
"""


import os

htmls = set()

for root, dirs, files in os.walk('./site'):
    for f in files:
        if f.endswith('html'):
            htmls.add(os.path.join(root, f))
            
for filename in htmls:
    with open(filename, 'r', encoding = 'utf-8') as f:
        content = f.read()
        start = content.find('Material for MkDocs') + 32
        content = content[:start] + '京ICP备20011564号-1' + content[start:]
    with open(filename, 'w', encoding = 'utf-8') as f:
        f.write(content)
        
        