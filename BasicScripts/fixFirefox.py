#! /usr/bin/python3
# fix from askubuntu site
import mmap, sys

target = br'C:\nppdf32Log\debuglog.txt'
replacement = br'/dev/null'
replacement += b'\0' * (len(target) - len(replacement))

with open(sys.argv[1], 'r+') as f:
  m = mmap.mmap(f.fileno(), 0)
  offset = m.find(target)
  assert offset != -1
  m[offset:offset+len(target)] = replacement
