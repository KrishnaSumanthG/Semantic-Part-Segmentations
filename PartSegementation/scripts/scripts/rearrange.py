#creating data similar to shapenet
#Step1: Arranging all ply files into each single folder 

import shutil
import os

path = "/home/badri/Documents/project/test/ply"

for i in os.listdir(path):
    name = i[:-4]
    os.mkdir(os.path.join(path,name))
    dest = os.path.join(path, name)
    src  = os.path.join(path, i)
    shutil.copy(src, dest)
    os.remove(src)
