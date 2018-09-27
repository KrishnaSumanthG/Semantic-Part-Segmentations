import os
import shutil

#path1='/media/data/data/datasets/ShapeNet/ShapeNetCore.v1/03001627'
#path2='/tmp/badri/chair_data/03001627/1000models/03001627'
#dst = '/home/badri/created_shapenet/03001627'

path1='/home/badri/test2/ip1'
path2='/home/badri/test2/ip2'
dst='/home/badri/test2/op'
g = 0


for i in os.listdir(path2):
    if i in os.listdir(path1):
        newpath = os.path.join(dst,i)
        os.mkdir(newpath)
        itera = os.path.join(path1, i) 
        for j in os.listdir(itera):
            folder=os.path.join(itera,j)
            if os.path.isdir(folder):
                newpath2 = os.path.join(newpath,"images")
                os.mkdir(newpath2)
                path4 = os.path.join(itera, "images")
                for k in os.listdir(path4): 
                    src1 = os.path.join(path4, k)
                    shutil.copy(src1, newpath2)
            else: 
                src = os.path.join(itera, j)
                shutil.copy(src, newpath)

        g +=1
        print(g)

    
