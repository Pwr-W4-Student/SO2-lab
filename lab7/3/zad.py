import os
import sys
from stat import *
import time
import commands

if len(sys.argv) < 2:
    print("brak argumentu")
    exit()

files = os.listdir(sys.argv[1])
print(files)

for f in files:
    	st = os.stat(f)
    	mode = st[ST_MODE] #access time
    
	if not os.access(f, os.X_OK):
		os.remove(f)
    

