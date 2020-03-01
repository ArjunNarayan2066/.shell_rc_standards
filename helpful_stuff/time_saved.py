#!/usr/local/bin/python3

from pathlib import Path

target = Path(__file__).parent.joinpath("../../time_saved_using_alias_commands.txt").resolve()

total_time = 0

with open(target, 'r+') as f:
    for line in f:
        if line:
            total_time += int(line.split(" ")[0])

print("Total Time: {}s".format(total_time))
