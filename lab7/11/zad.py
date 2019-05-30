import os
import sys
import numpy as np


if len(sys.argv) < 3:
    print("brak argumentow")
    exit()

files = os.listdir(sys.argv[2])
print("Pliki w folderze: " + str(files))

plik = open(sys.argv[1], "r")
plik_files = []


for f in plik:
	plik_files.append(str(f).rstrip())
    
print("Pliki w pliku: " + str(plik_files))

print("Brak w folderze: " + str(np.setdiff1d(plik_files,files)))

print("Dodatkowo w folderze: " + str(np.setdiff1d(files,plik_files)))
