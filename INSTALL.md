## Starting a new Dev project - Setup guide

####    Follow these steps to setup your new LAMP development project:

     1. Download virtualBox for your platform from [[https://www.virtualbox.org/wiki/Downloads|here]]
     * On *nix systems (Mac OSX, Linux, etc), you will need to modify your .bash_profile (or .zsh_profile) to extend your      $PATH variable:


    > PATH=$PATH:/Applications/VirtualBox.app/Contents/MacOS/
    > export PATH

     2. Download vagrant for your platform from https://www.vagrantup.com/downloads.html
     * On *nix systems (Mac OSX, Linux, etc), you will need to use "wget" command to get the file and then install it.
     For example, you will need to:

    > ####CentOS
    > cd /tmp
    > sudo wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.3_x86_64.rpm
    > sudo rpm -i vagrant_1.6.3_x86_64.rpm
    > ####Ubuntu
    > cd /tmp
    > sudo wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.3_x86_64.deb
    > dpkg -i vagrant_1.6.3_x86_64.deb
 
    3. There is a list of available virtualbox instances you can choose from http://www.vagrantbox.es/. For this example i am choosing an Ubuntu 12.04 box and provisioning it with the latest apache,mysql and php:

    > git clone git@box64.int.nyulaw.me:infrastructure/vagrant-lamp-with-salt.git
    > ####Do "git checkout hyperv" after you clone for the hyperv setup
    > ####Just note that on hyperv, NAT is not supported and you need to choose external in network settings.
    > cd vagrant-lamp-with-salt
    > vagrant plugin install vagrant-salt
    > ####If you get are on windows and you get the error :   H:/ <errno::ENOENT>
    > ####just set your HOME this way on the terminal: SET HOME=%USERPROFILE%
    > ####and run the command again
    > ####start your vm:
    > vagrant up
    > ####Please allow for some time for your vm to be provisioned

    4. Your box is now running. You can get into this instance to do your own configuration, via SSH:
    > vagrant ssh

##### Go to http://localhost:8080 and you should see the apache webserver default page, and also the phpinfo page: http://localhost:8080/phpinfo.php
