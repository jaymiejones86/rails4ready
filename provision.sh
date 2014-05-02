#! /bin/bash
currentuser=`whoami`
echo "provisioning with user $currentuser"
knife solo cook vagrant@127.0.0.1 nodes/base.json -p 2222 -i /Users/$currentuser/.vagrant.d/insecure_private_key
