import os
import sys
from stat import *
import time

if len(sys.argv) < 2:
    print("brak argumentu")
    exit()

files = os.listdir(sys.argv[1])
print(files)

for f in files:
    st = os.stat(f)
    atime = st[ST_ATIME] #access time
    mtime = st[ST_MTIME] #modification time
    
    #print(mtime)
    
    new_mtime = time.time()
    
    #modify the file timestamp
    os.utime(f,(atime,new_mtime))
