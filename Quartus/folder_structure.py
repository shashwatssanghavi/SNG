 #!/usr/bin/env python
import os
import sys

FIRST_LEVEL = ['BD', 'config', 'constraints', 'hdl', 'export', 'hw_export', 'ip_repo', 'sim', 'script', 'prj', 'hw_top']

def safe_make_folder(i):
	'''Makes a folder if not present'''
	try:
		if not os.path.exists(i):
			os.mkdir(i)
	except IOError:
		print "Wrong path provided"

def make_firstlevel_folders(level_1):
	for i in level_1:
		safe_make_folder(i)
	#open(PATH+sys.argv[1] + os.sep +".gitignore","w+")

def main():
	make_firstlevel_folders(FIRST_LEVEL)

if __name__ == "__main__":
	main()