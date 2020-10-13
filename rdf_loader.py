#!/usr/bin/python
import sys, os
print("RDF_QDAG")
print("--- Data loader ---")
database=sys.argv[1]
print("Data to load (full directory): "+database)
path_without_extra_slash = os.path.normpath(database)
last_part = os.path.basename(path_without_extra_slash)
tmp=os.getcwd()+"/tmp/"+last_part
os.system("rm -r %s "%(tmp))
print("Temporary files (full directory): "+tmp)
binfolder=sys.argv[2]
print("Binary files (full directory): "+binfolder)
os.system("rm -r %s "%(binfolder))
res=tmp+"/results"
os.system("python3 pyscripts/dataPartitioner.py %s %s 5000000 500000 %s %s"%(database,tmp,res,binfolder))

print("---Succesfully loaded---")