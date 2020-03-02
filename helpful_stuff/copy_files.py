#!/usr/bin/env python3

import yaml
import sysrsync
import argparse
import subprocess
import os

def create_copy_yaml(args):
    with open(args.filepath, "w+") as f:
        f.write("---\n")
        f.write("ip: \"127.0.0.1\"\n")
        f.write("user: no_user\n")
        f.write("files:\n\n")
    return

def edit_copy_yaml(args):
    subprocess.run("$EDITOR {}".format(args.filepath), shell=True)
    return

def copy_files(data):
    if 'ip' not in data or 'user' not in data:
        print("IP and/or Data are missing")
        return

    target = "{}@{}".format(data['user'], data['ip'])
    files = data['files']
    for k, v in files.items():
        v = os.path.expanduser(v)
        print("{} -> {}".format(k, v))
        sysrsync.run(source=k, destination=v, source_ssh=target)

def import_data(args):
    if not os.path.exists(args.filepath):
        print("ERROR: No Copy File Found")
        return

    with open(args.filepath, 'r') as stream:
        try:
            data = (yaml.safe_load(stream))
            copy_files(data)

        except yaml.YAMLError as exc:
            print(exc)

def main():
    parser = argparse.ArgumentParser(description='Copy Files')
    parser.add_argument('-f',  dest="filepath",
                        default="~/files_to_copy.yaml", help='File path')
    parser.add_argument('-c',  dest="create_yaml", default=False,
                        action="store_true", help='Create yaml copy file')
    parser.add_argument('-e',  dest="edit_yaml", default=False,
                        action="store_true", help='Edit yaml copy file')

    args = parser.parse_args()
    extension = (os.path.splitext(args.filepath)[1]).strip()
    if not (extension == ".yaml"):
        print("Invalid File Extension: {}, Must be .yaml".format(extension))
        return

    args.filepath = os.path.abspath(os.path.expanduser(args.filepath))

    if args.create_yaml:
        create_copy_yaml(args)
        edit_copy_yaml(args)
    elif args.edit_yaml:
        edit_copy_yaml(args)
    else:
        import_data(args)

if __name__ == "__main__":
    main()
