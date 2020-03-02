#!/usr/local/bin/python3

import os

target = os.path.expanduser("~/time_saved_using_alias_commands.txt")

total_time = 0

with open(target, 'r+') as f:
    for line in f:
        if line:
            total_time += int(line.split(" ")[0])

print("Total Time: {}s".format(total_time))
