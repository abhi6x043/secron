#!/bin/bash

echo "Welcome to Secron Project. Happy that you are here"
echo "Written by abhi6x043"
echo ""
echo "Choose how you want to install"
echo "Enter 1 to install the binary and run anywhere from your PC"
echo "Enter 2 to run this as script from /home/$USER/secron.sh"
echo "Enter 3 to test the script"

read input


if [ $input -eq 1 ]
then
  sudo cp bin/secron /usr/bin/
  echo "Installed successfully. Try out ..!!"
  cat doc/how-to.txt
  echo "Ping me abhi6x043 abhijith.s4395@gmail.com"

elif [ $input -eq 2 ]
then
  cp src/secron.sh /home/$USER/secron.sh
  chmod u+x /home/$USER/secron.sh
  echo "Script is ready to run"
  cat doc/how-to.txt
  echo "Ping me abhi6x043 abhijith.s4395@gmail.com"
  
elif [ $input -eq 3 ]
then
  chmod u+x src/secron.sh
  echo "You can now run binary or script by entering the following from this directory"
  echo "bin/secron [OPTIONS] [COMMAND in quotes]   //To run the binary"
  echo "sh src/secron.sh [OPTIONS] [COMMAND in quotes]  //To run the script"
  echo "Also please read the documentations available doc/"
  echo "Ping me abhi6x043 abhijith.s4395@gmail.com"
    
else
  echo "Please enter a valid option among the following [1, 2, 3]"
  echo "Also please read the documentations available doc/"
  echo "Ping me abhi6x043 abhijith.s4395@gmail.com"
  
fi
