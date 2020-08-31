#!/usr/bin/python3

import sys
import subprocess
import re
args = sys.argv
format = ''
if len(args) != 3:
    print('Not enough args')
    exit()
s = subprocess.check_output("fdisk -l " + args[1], shell = True).decode('utf-8')
print(s)
sectors = int(s.split('Units: sectors of 1 * ')[1].split(' ')[0])
partition = input("Which partition do you want to mount:")
details = re.sub(' +', ' ', s.split('Size Id Type')[1].splitlines()[int(partition)].split('.img' + partition)[1])
if details.find('Linux') != -1:
    format = 'ext4'
elif details.find('W95 FAT32 (LBA)') != -1:
    format = 'vfat'
else: 
    print('invalid image')
    exit()
s = subprocess.check_output('mount -v -o offset=' + str(int(details.split(' ')[1]) * sectors) + ' -t ' + format + ' ' + args[1] + ' ' + args[2], shell = True)
print(s.decode('utf-8'))