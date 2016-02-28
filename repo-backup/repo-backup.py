#! /usr/bin/env python
# -*- coding: utf-8 -*-


import sys
import os
import shutil
import datetime

from instapush import Instapush, App

def print_script_call():
	print sys.argv[0] + " repo_name backup_folder"


insta_app = App(appid='your-instapush-app-id', secret='your-instapush-app-secret')

if len(sys.argv) == 3:
	if os.path.isdir(sys.argv[2]):
		cur_date = datetime.date.isoformat(datetime.date.today())
		# we get the name of the archive we want to create
		cur_date_archive = cur_date + '.zip'
		# we get the new folder name
		repo_name = sys.argv[1].split('/')[1].split('.')[0]
		# we check if the archive already exist
		if cur_date_archive not in os.listdir(sys.argv[2]):
			# it does exist
			# we clone the repo
			os.system("git clone "+sys.argv[1])
			# we make a zip archive
			shutil.make_archive(os.path.join(sys.argv[2],repo_name), 'zip', os.path.join(sys.argv[2],repo_name))
			# we rename the archive to illustrate the creation date
			os.rename(os.path.join(sys.argv[2], repo_name)+'.zip', cur_date_archive)
			# we delete the folder of the repository
			shutil.rmtree(os.path.join(sys.argv[2], repo_name))
			# we send a notification to say that the cloning is successfull
			insta_app.notify(event_name='cloning-success', trackers={'date': cur_date, 'repo-name': repo_name})
		else:
			# the archive already exist
			# we send a notification to say that the cloning failed
			insta_app.notify(event_name='cloning-failure', trackers={'date': cur_date, 'repo-name': repo_name})
	else:
		print "invalid path. The folder " + sys.argv[2] + " does not exist."
		print_script_call()
else:
	print "invalid arguments."
	print_script_call()
