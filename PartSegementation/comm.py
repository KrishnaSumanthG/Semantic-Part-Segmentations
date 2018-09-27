import os
import shutil

path1='/media/data/data/datasets/ShapeNet/ShapeNetCore.v1/03001627'
path2='/tmp/badri/chair_data/03001627/1000models/03001627'
dst = '/home/badri/created_shapenet/03001627'

#path1='/home/badri/test1/ip1'
#path2='/home/badri/test1/ip2'
#dst='/home/badri/test1/op'
g = 0

def copytree(src, dst, symlinks=False, ignore=None):
    for item in os.listdir(src):
        s = os.path.join(src, item)
        d = os.path.join(dst, item)
        if os.path.isdir(s):
            shutil.copytree(s, d, symlinks, ignore)
        else:
            shutil.copy2(s, d)

for i in os.listdir(path2):
    if i in os.listdir(path1):
        newpath = os.path.join(dst,i)
        os.mkdir(newpath)
        itera = os.path.join(path1, i)
        copytree(itera, newpath)
        g +=1
        print(g)

    
