#! /bin/bash

# sets variable 'name' to Kyle
name='Kyle'

# displays message and uses variable to show 'Kyle'
echo "Hello $name."
echo -e "\nThis is my script.\n"
echo -e "The files in $PWD are: \n$(ls)"
echo -e "\nCopying the passwd file to your current directory. \n"

# copies the password file, and sets varialbe $PWD
cp /etc/passwd $PWD

# displays message, as well as the variable $PWD which is the passwd file
sudo echo -e "The files in your $PWD are now: \n(ls)"
echo " "
echo "Have a excellent day!" 
