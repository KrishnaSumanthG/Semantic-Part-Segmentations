#creating data similar to shapenet
#Step1: Arranging all ply files into each single folder 

import shutil
import os

k = 0

path = "/tmp/badri/chair_data/03001627/PLY_final"

for i in os.listdir(path):
    k += 1
    print(k)
    name = i[:-4]
    os.mkdir(os.path.join(path,name))
    dest = os.path.join(path, name)
    src  = os.path.join(path, i)
    shutil.copy(src, dest)
    os.remove(src)
