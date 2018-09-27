##Convertion of data to csv format

import os
import csv

#path="/home/badri/PartSegementation/test1"
path="/tmp/badri/chair_data/03001627/points"
for item in os.listdir(path):
    path1=os.path.join(path,item)
    with open(path1, 'r+') as in_file:
        lines = in_file.readlines()
    with open(path1, 'w') as out_file:
        for i in lines:
            out_file.write(",".join(i.split()))
            out_file.write("\n")
    os.rename(path1,path1[:-4]+".csv")
