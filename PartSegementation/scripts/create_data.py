
#Step3:Creating model.obj,model.mtl and tex.png 

import os
import shutil

num = 0

path = "/home/badri/chair/test"

for j in os.listdir(path):
    num += 1
    print(num)
    folderName = j
    newpath = os.path.join(path, j)
    for i in os.listdir(newpath):
        if i[-4:] == ".png":
            os.mkdir(os.path.join(newpath, folderName))
            dest = os.path.join(newpath, folderName)
            src  = os.path.join(newpath, i)
            shutil.copy(src, dest)
            os.remove(src)
        elif i[-4:] == ".obj":
            old = os.path.join(newpath, i)
            new = os.path.join(newpath,"model.obj")
            os.rename(old, new)
        elif i[-4:] == ".mtl":
            old = os.path.join(newpath, i)
            new = os.path.join(newpath,"model.mtl")
            os.rename(old, new)
        else:
            os.remove(os.path.join(newpath,i))
