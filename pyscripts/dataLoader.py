#!/usr/bin/python
import sys, os, time, shutil

sgFolder=sys.argv[1];
storageFolder=sys.argv[2];
if os.path.exists(storageFolder):
    shutil.rmtree(storageFolder)
# create the affectation file
onlyfiles = next(os.walk(sgFolder))[2]
f= open("%s/affectation"%(sgFolder),"w+")
for file in onlyfiles :
	if ".data" in file:
		f.write("%s\r\n" % (file.split('.')[0]))
f.close()
start_time = time.time()
print("loading the database %s from %s ..."%(storageFolder,sgFolder))
os.system("java -jar -Djava.library.path=solibs/ jars/segmentsLoader.jar %s %s" %(sgFolder,storageFolder))
os.system("python3 pyscripts/createDics.py %s %s"%(sgFolder,storageFolder))
os.system("cp %s/*.schema %s"%(sgFolder,storageFolder))
os.system("cp %s/affectation %s"%(sgFolder,storageFolder))
os.system("cp %s/predicates.txt %s"%(sgFolder,storageFolder))
os.system("cp %s/spo_index.txt %s"%(sgFolder,storageFolder))
os.system("cp %s/ops_index.txt %s"%(sgFolder,storageFolder))
print("loading database Completed")
print("--- %s seconds ---" % (time.time() - start_time))
