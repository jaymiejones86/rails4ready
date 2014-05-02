#! /bin/bash
currentuser=`whoami`
echo "setting up for provisioing with user $currentuser"
knife solo bootstrap vagrant@127.0.0.1 -p 2222 -i /Users/$currentuser/.vagrant.d/insecure_private_key
