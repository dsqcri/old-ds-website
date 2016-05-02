#!/bin/bash

echo "

"
git --version
echo "
if version is not 1.7+, this will fail!
"
echo "continue? [Y/n]
"

read answer

if [[ $answer == "Y" ]]
	then
	echo "What is your username? (**usually** first letter of first name followed by lastname)"
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
		echo "Done!"
		echo "
		Created dswebsite_$username under $(pwd). 
		Change directories to folder and edit files in team/$username.
		Once your edits are complete, use git to add and commit your changes then push to the main repo."
	else
		echo "i spoiled myself"
		exit 1
	fi
	exit 0
fi

echo "I shit my pants"
exit 1
