import scipy.misc
import os

path = '/home/badri/RenderForCNN/data/syn_images_cropped/02958343/'

for i in os.listdir(path):
	newpath = os.path.join(path, i)
	for j in os.listdir(newpath):
		img = scipy.misc.imread(os.path.join(newpath,j))
		image = scipy.misc.imresize(img, interp='bilinear', size=(376,376))
		scipy.misc.imsave(os.path.join(newpath, j), image)
		

