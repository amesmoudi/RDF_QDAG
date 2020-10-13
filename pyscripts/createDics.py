#!/usr/bin/python
import sys, os

sgFolder=sys.argv[1];
storageFolder=sys.argv[2];
affectfile = sgFolder+"/affectation"
print("Start loading dictionary ...")
with open(affectfile) as f:
    lines = f.readlines()
    for line in lines:
    	line=line.strip()
    	#print("loading dico %s ..."%(line.strip()))
    	os.system("sqlite3 %s/dic_%s  -cmd \"CREATE TABLE dic_%s (id LONG PRIMARY KEY,value TEXT NOT NULL,sgin INTEGER,sgout INTEGER);\" -cmd \".separator \\t\" -cmd \".import %s.dic dic_%s\" \".exit\" " %(storageFolder,line, line, sgFolder+"/"+line,line))
    	os.system("sqlite3 %s/dic_%s  -cmd \"create virtual table dic_%s_index using fts4(id,value,sgin,sgout);\" -cmd \".separator \\t\" -cmd \".import %s.dic dic_%s_index\" \".exit\" " %(storageFolder,line, line, sgFolder+"/"+line,line))

print("loading dictionary Completed")
    	
    	
