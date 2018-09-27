import os
import shutil

path1='/home/badri/Documents/project/test/f1'
path2='/home/badri/Documents/project/test/f2'
for i in os.listdir(path1):
    path3=os.path.join(path2,i)
    path4=os.path.join(path1,i)
    for j in os.listdir(path4):
        if j not in os.listdir(path3):
            os.remove(os.path.join(path4,j))