import os
f = open("abc.txt" , 'r')
lines = f.readlines()
for i in lines:
        os.system(i)
f.close()
