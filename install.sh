#!/bin/bash

echo "Happy that you are here\nWelcome to Secron Project"
echo "Written by abhi6x043\n"
echo "Choose how you want to install"
echo "Enter 1 to install the binary and run anywhere from your PC"
echo "Enter 2 to run this as script from /home/$USER/secron.sh"
echo "Enter 3 to test the script"

read input


if [ $input -eq 1 ]
then
  sudo cp bin/secron /usr/bin/
  echo -e "\nInstalled successfully\nTry out..!!\n"
  cat doc/how-to.txt
  echo -e "\nPing me abhi6x043 abhijith.s4395@gmail.com\n"

elif [ $input -eq 2 ]
then
  cp src/secron.sh /home/$USER/secron.sh
  chmod u+x /home/$USER/secron.sh
  echo -e "\nScript is ready to run"
  cat doc/how-to.txt
  echo -e "\nPing me abhi6x043 abhijith.s4395@gmail.com\n"
  
elif [ $input -eq 3 ]
then
  chmod u+x src/secron.sh
  echo "You can now run binary or script by entering the following from this directory"
  echo "\n bin/secron [OPTIONS] [COMMAND in quotes]   //To run the binary"
  echo "\n sh src/secron.sh [OPTIONS] [COMMAND in quotes]  //To run the script"
  echo "\nAlso please read the documentations available doc/"
  echo "Ping me abhi6x043 abhijith.s4395@gmail.com\n"
    
else
  echo "Please enter a valid option among the following [1, 2, 3]"
  echo "Also please read the documentations available doc/"
  echo "\nPing me abhi6x043 abhijith.s4395@gmail.com\n"
  
fi
