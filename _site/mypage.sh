#!/bin/bash
# ------------------------------------------------------------------
# [Omar Alrawi] Bash script utilizing git 1.7+ to clone subdir
#				inside the dsqcri github repo. This script req
#				git 1.7+ to work. It utilizes sparse checkout
#				features, which are only available in 1.7+.
# ------------------------------------------------------------------

#get git version number
ver=$(git --version | cut -d' ' -f3)
mjr=$(echo $ver | cut -d'.' -f1)
min=$(echo $ver | cut -d'.' -f2)
echo Your git version is: $ver

if [[ $mjr -lt 2 ]]
	then
	if [[ $min -lt 7 ]]
		then
		echo "This script requires git version 1.7+ to run, upgrade and try again."
		exit 1
	fi
fi

echo "What is your username? (**usually** first letter of the first name followed by lastname)
If you don't know your username, navigate to https://github.com/dsqcri/dsqcri.github.io/tree/master/people
and find it there"
read username
if [[ $username =~ ^[a-z]*$ ]]
	then
	echo "making dir dswebsite_$username ..."
	mkdir "dswebsite_$username"
	cd "dswebsite_$username"
	echo "Initializing git repo ..."
	git init
	git remote add -f origin https://github.com/dsqcri/dsqcri.github.io.git
	echo "configuring spares checkout ..."
	git config core.sparseCheckout true
	echo "team/$username" >> .git/info/sparse-checkout
	echo "Getting $username page ..."
	git pull origin master
	if [ $? -ne 0 ]
		then
		echo "git failed, no such username: $username"
		echo "cleaning the mess I made ... "
		cd ..
		rm -rf "dswebsite_$username"
		echo "Done!"
		exit 1
	fi
	echo "Done!"
	echo "
	Created dswebsite_$username under $(pwd). 
	Change directories to folder and edit files in team/$username.
	Once your edits are complete, use git to add and commit your changes then push to the main repo.
	"
	exit 0
else
	echo "Invalid username: $username"
	exit 1
fi

echo "You choose to quit, I only gave you the option!"
exit 1
