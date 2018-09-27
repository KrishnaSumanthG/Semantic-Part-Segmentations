#!/usr/bin/env python

#Step2:Running meshlabserver from commandline
from subprocess import call
import os

path1="/home/badri/Documents/project/test/ply"
spath="/home/badri/Documents/project/test/ply/scripts/s"
s=[]
for i in range(len(os.listdir(spath))):
    s.append(os.listdir(spath)[i])

for j in os.listdir(path1):
    newpath=os.path.join(path1,j)
    for file1 in os.listdir(newpath):
        call(["meshlabserver","-i",os.path.join(newpath,file1),"-w",os.path.join(newpath,"s1.mlp"),"-s",os.path.join(spath,s[1])])
        call(["meshlabserver","-p",os.path.join(newpath,"s1.mlp"),"-o",os.path.join(newpath,"s1.obj"),"-m","wt","-s",os.path.join(spath,s[0])])    
