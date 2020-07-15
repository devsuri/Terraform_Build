import os
f = open("abc.txt" , 'r')
lines = f.readlines()
for i in lines:
    try:
        os.system(i)
    except: continue
