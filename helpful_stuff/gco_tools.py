#!/usr/bin/env python3
import os
import sys
import subprocess

data = (sys.argv)[1]
dataSplit = data.split('/')
issue = dataSplit[0]
extra = dataSplit[1:]
branch = "user/"+os.environ['GIT_USER']+"/"+os.environ['ISSUE_FORM']+"-"+data

result = subprocess.Popen(['git', 'branch'], stdout=subprocess.PIPE)
while True:
    line = result.stdout.readline().decode('ascii').strip()
    if not line:
        break

    if line.startswith("* ") and (line[2:] == branch):
        print("Currently On Given Branch")
        break

    # print(line)

print("Done")
