#!/usr/bin/python
import sys, os, time, shutil,subprocess
database=sys.argv[1];
main_directory=sys.argv[2];
max_value=sys.argv[3];
max_value_segment=sys.argv[4];
sgFolder=sys.argv[5];
storageFolder=sys.argv[6];
start_time = time.time()
os.system("java -jar -Xms2G -Xmx3G jars/local_partitioner.jar %s %s %s %s" %(database, main_directory,max_value,max_value_segment))
os.system("python3 pyscripts/dataLoader.py %s %s"%(sgFolder,storageFolder))
print("--- %s seconds ---" % (time.time() - start_time))
