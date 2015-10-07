#!/bin/sh

statusfolder=/Users/AgentShared
datafolder=/Users/Shared
binfolder=/usr/bin

# check the content of the folder
# copy hosts file appropriately ...

if [[ $(ls $statusfolder) = "sergpolly.logged" ]]; then
	cp $datafolder/hosts_strict.txt /private/etc/hosts
	# echo "xxx"
	echo "restricted mode enabled ..."
else
	cp $datafolder/hosts_def.txt /private/etc/hosts
	# echo "xxx"
	echo "restrictions disabled ..."
fi


$binfolder/dscacheutil -flushcache
echo "cache flushed ..."

