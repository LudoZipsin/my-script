# repo-backupper
A little script to automate the back up of remote git repositories every day.

This is intended to be used with [instapush](https://instapush.im/) to have a simple way to monitor the backup. If you don't find it usefull, just delete the corresponding lines. If you do find it usefull, you'll need to create an acccount and new insta app (it's easy, you'll see). 

The cloned repo will be store in a zip file named after the current day.

## why ?

Because, for lessons related project we have to use git and everybody are not familiar with this tool. Most of the time, there is someone to ompletly 'break' the repo (I didn't know it was possible) and instead of trying to understand what was done, it is sometimes easier to just delete it and using a bakup.

## how to

This script is intended to be launched in a cron only once a day (or less). In the following example, the task is done every day at midnigth (you should use `crontab -e` if you don't want this to happend at midnight...)

```
chmod +x cloning-repo.py
sudo mv cloning-repo.py /usr/local/bin/cloning-repo
sudo mv cron-task /etc/cron.daily/cloning.repo
sudo chmod +x /etc/cron.daily/cloning.repo
```

