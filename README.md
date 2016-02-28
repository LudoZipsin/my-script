# my-script

**More script will be added in the future**

Initially it was a simple repo backup script. However it was not that usefull and too short to have it's own repo... Now it is and will be the place I put my own little script 

## structure 

The different script will be placed in different folder (on folder = one script). Inside each folder will be the source code of each script and an ```install.sh``` (if needed) to manage dependencies. This ```install.sh``` will also contain the installation instruction to move the script on the correct place (depending on the script, it may be ```/sur/local/bin/<my-script>``` or ```/opt/script-folder/<script-files>```). 

## install

To install all the script directly to your system, just follow:

```
git clone git@github.com:LudoZipsin/my-script.git
cd my-script
sudo ./install.sh
```
