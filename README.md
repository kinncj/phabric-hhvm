# Phabricator HHVM


## Installing

1. Make sure you have [VirtualBox](https://www.virtualbox.org/).
2. [Install Vagrant](http://docs.vagrantup.com/v2/installation/).
3. Clone this repository or download it as a zip.
4. Add an entry in your host file for `vagrant-hhvm.localhost` with IP `192.168.99.99`
5. In the terminal, go to the folder where you cloned or unzipped the files and type `puppet module install nodes/php`
6. Than type `vagrant up`.
7. `vagrant ssh`
8. `cd /var/www/phabricator && sudo apt-get install php5-cli php5-mysql && sudo ./bin/storage upgrade`

Step 4 is important because Nginx is configured to deny all anonymous requests, and only pass the request to HHVM by server name. You are free to change this, but I just like the idea: [Using nginx as Front Server to HipHop](https://github.com/facebook/hhvm/wiki/Using-nginx-as-Front-Server-to-HipHop#etcnginxsites-enableddefault)

## TODO

1. Create a manifest to install php-cli and php-mysql
2. Create a manifest to run the storage upgrade