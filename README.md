## Purpose

This repo contains the bare minimum to get started using disposable development
environments through [Vagrant](http://www.vagrantup.com/) and the provisioning
services provided by [SaltStack](http://saltstack.com/) to build a LAMP stack.

## Requirements

In order to use this you need to have
[Vagrant installed](http://docs.vagrantup.com/v2/installation/).

Since 1.3, Vagrant has had native Salt support. If you're running an older
version of Vagrant for some reason, you'll need to have the
[Salty Vagrant plugin](https://github.com/saltstack/salty-vagrant) installed.

Once you have Vagrant installed, installing the Salty Vagrant plugin is as
simple as running `$ vagrant plugin install vagrant-salt` from the commandline.

## Provisioning

To provision your Vagrant LAMP server, clone this repo and run `$ vagrant up` in
the same directory.

Salt will install the most current versions of Apache, PHP and MySQL. Vagrant
will open up port 8080 on your machine to check your project by visiting http://localhost:8080.
Salt will also install a full version of Vim on your server to allow for editing directly on the box.

## Please Note

This provisioning currently installs MySQL without a root user password.

This provisioning allows for you to make changes to the
`/salt/roots/salt/apache2.conf` file and will permeate that through to your
server with a `$ salt-call state.highstate` on your guest machine. Also there is the web directory
`/www/projects` that corresponds to the default webroot of your server (/var/www/), there is the index.html file and the phpinfo.php file inside. You can create 
your project in that directory and work on it from your preferred windows IDE.

## Future Work
I will be working on integrating the box automatically with the ci server so that you can also run continous builds and tests.
There are some additional requirements (like ruby 2.0) being installed at the moment but there is some more work to be done for the ci integration to work completely.
