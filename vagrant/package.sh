vagrant package --output newbox.box
vagrant box add newboxtoadd newbox.box
vagrant destroy
rm Vagrantfile
vagrant init newboxtoadd
