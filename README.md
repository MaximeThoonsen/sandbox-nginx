# Sandbox nginx
This repository provides a sandbox with some basics nginx vhosts. The purpose is to help users to understand how nginx works with those examples.

Have a look at my [blog's post](http://www.theodo.fr/blog/2014/08/1894/) to learn the basics of nginx.

## Requirements
+ Vagrant (tested on 1.5.3)
+ Ansible (tested on 1.8)

##Installation
To run the vm

    vagrant up


If the provisioning haven't been done once, you can use

    vagrant provision


To connect to the vm use

    vagrant ssh

You will need to start nginx with the command License

    sudo service nginx start

All the certficates password you need to start nginx are 'test'.

Edit your /etc/hosts or equivalent and add  

    #nginx demo
    199.199.199.96 nginx.demo
    199.199.199.96 nginx-php.demo
    199.199.199.96 nginx-symfony.demo
    199.199.199.96 nginx-proxy.demo
    199.199.199.96 nginx-https.demo
    199.199.199.96 exercice.demo

You need to download symfony in order to make the nginx-symfony.demo website works
Use composer (https://getcomposer.org/download/) in the www/symfony directory of your vm.

##Sandbox
Your sandbox is now ready to use.
You can visit the page http://199.199.199.96 to see the first conf.

## License
MIT
