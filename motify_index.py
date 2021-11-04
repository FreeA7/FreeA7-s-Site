# -*- coding: utf-8 -*-
"""
Created on Mon Nov  1 21:04:31 2021

@author: FreeA7

增加备案号
"""


import os

htmls = set()
live2d_js = '''<script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome/css/font-awesome.min.css"/>
      <script src="https://cdn.jsdelivr.net/gh/stevenjoezhang/live2d-widget/autoload.js"></script>
      '''


for root, dirs, files in os.walk('./site'):
    for f in files:
        if f.endswith('html'):
            htmls.add(os.path.join(root, f))
            
for filename in htmls:
    with open(filename, 'r', encoding = 'utf-8') as f:
        content = f.read()
        start = content.find('Material for MkDocs') + 32
        content = content[:start] + '<a href="https://beian.miit.gov.cn/">&nbsp京ICP备20011564号-1</a>' + content[start:]
        start = content.find('<script')
        content = content[:start] + live2d_js + content[start:]
    with open(filename, 'w', encoding = 'utf-8') as f:
        f.write(content)
        