#!/bin/bash

# mkdir repositories
# cd repositories
# mkdir rafa-testeee
# git clone git@github.com:rafaelmonteiroarj/sistrel-backend.git
# ls -la

repositorios=$(curl -s https://api.github.com/users/rafaelmonteiroarj/repos | awk '/ssh_url/{print $2}' | sed 's/^"//g' | sed 's/",$//g')

for item in "${repositorios[@]}"
do
  echo "$item"
done

for i in {1..5}
do
   echo "Welcome $i times"
done

array=( one two three )
for i in "${array[@]}"
do
	echo $i
done