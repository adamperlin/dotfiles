#!/usr/bin/env python 

import subprocess 
import os 
import sys

THRESHOLD=1000000000

def main():
    if len(sys.argv) < 2:
        print("need directory as argument") 
        exit() 
    f = sys.argv[1] 
    if not os.path.isdir(f):
        raise ValueError("Path must be directory")
    proc = subprocess.Popen(["du", f], stdout=subprocess.PIPE)
    (stdout, stderr) = proc.communicate() 
    if stderr:
        raise Exception("Got error from running du command")
    if not stdout:
        raise Exception("Didn't get command output")
    for (i, line) in enumerate(stdout.decode('utf8').split('\n')):
#        print(line, i)
        l = line.split('\t')
 #       print(l[0])
        if l[0]:
            num = int(l[0]) 
            if num*1000 >= THRESHOLD:
                print(num/1000000, "GB", ''.join(l[1:]))
if __name__ == "__main__":
    main()
