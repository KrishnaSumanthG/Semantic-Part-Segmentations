##Concatenation of points and its corresponding labels across the data,Combing csvs

import pandas as pd
import os
import csv

#path1="/home/badri/PartSegementation/test1/arm"
#path2="/home/badri/PartSegementation/test1/seat"
#path3="/home/badri/PartSegementation/test1/out"

path1="/tmp/badri/chair_data/03001627/points"
path2="/tmp/badri/chair_data/03001627/points_label/labels_combined"
path3="/tmp/badri/chair_data/03001627/chair_combined"

for file1 in os.listdir(path1):
    for file2 in os.listdir(path2):
        if file1==file2:
            a = pd.read_csv(os.path.join(path1,file1), header=None)
            b = pd.read_csv(os.path.join(path2,file2), header=None)
            c = pd.concat([a, b], axis=1)
            c.to_csv(os.path.join(path3,file1), index=False, header=None)
