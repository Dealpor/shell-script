#!/bin/bash
#
#Author: Sleepycell
#Date: 20240522
#
#
#List Recently updated Repositorys with command line argument and user input
####

#Enter Credentails with user input
#read -p "Access Token:" token
#read -p "Enter Username:" username


#Enter Credentails With commmand line Argument
username=$1


#Github APi url
url="https://api.github.com/"


#Geting endpoint from Github API
function Get_updated_repo {
	local endpoint=users/$username/repos
	local repo=$(curl -L ${url}${endpoint})
	echo "$repo" | jq '.[] | .name'
}


#call fucntion

Get_updated_repo
