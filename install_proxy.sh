#!/bin/bash

#Getting a fullpath of proxy file
proxy_var=$(cd $(dirname "proxy_variables.sh") && pwd -P)/$(basename "proxy_variables.sh")

#Going to Home directory
cd $HOME


## Start Config of .bashrc Terminal
FILE=.bashrc

#Check if File .bashrc exists
if [ -f "$FILE" ]; then
    #If File exist, read line by line of proxy_vars and put into file
    while IFS= read -r line
    do
        #Verify if string we want to put, already in file.
        if ! grep -q "$line" $FILE; then
            echo $line >> $FILE
        fi
    done < $proxy_var
else
    #If file not exist Create new File
    echo "creating .bashrc"
    touch .bashrc
    #Put line by line of proxy_vars to file
    while IFS= read -r line
    do
        echo $line >> $FILE
    done < $proxy_var
fi

#put source on bash_profile
if [ -f ".bash_profile" ]; then
    #Check if string already in file
    if ! grep -q "source ~/.bashrc" .bash_profile; then
        echo "input string on bash_profile"
        echo source "~/.bashrc" >> .bash_profile
    fi    
else
    #Create file .bash_profile
    touch .bash_profile
    #Put string on file
    echo source "~/.bashrc" >> .bash_profile
fi

#Configurating zshrc
FILE=.zshrc

#Check if File Exists
if [ -f "$FILE" ]; then
    #Check line by line if string already in file, if not put in.
    while IFS= read -r line
    do
        if ! grep -q "$line" $FILE; then
            echo $line >> $FILE
        fi
    done < $proxy_var
else
    #Creating file
    echo "creating .zshrc"
    touch .bashrc
    #Put llne of proxy_var into file
    while IFS= read -r line
    do
        echo $line >> $FILE
    done < $proxy_var
fi


#Ask to close all terminals to config be reflect.
clear
tput setaf 1; echo "Please restart all terminals to changes are reflect"

