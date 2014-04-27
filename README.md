# New Rails 4 Project Setup

- Install vagrant
- Install gems for provisioning ```gem install bundler librarian-chef knife-solo chef```
- create an initial cookbook ```librarian-chef init```
- Install cookbooks ```librarian-chef install```
- Create your vagrant box ```vagrant init```
- create base provisioning ```knife solo init .```
- Setup your recipes, roles and nodes
- Launch the box with ```vagrant up```
- get the vagrant ssh config by running ```vagrant ssh-config```
- bootstrap your box with (details from previous step) ```knife solo bootstrap vagrant@127.0.0.1 -p 2222 -i /Users/YOURUSERNAME/.vagrant.d/insecure_private_key``` 
- If it errors out, try running again. Further to this, remove the entry from your ssh known hosts file
- run a specified node runlist to get the box ready ```knife solo cook vagrant@127.0.0.1 nodes/YOURNODENAME.json -p 2222 -i /Users/YOURUSERNAME/.vagrant.d/insecure_private_key``` 
- SSH into vagrant box ```vagrant ssh``` to check your config
