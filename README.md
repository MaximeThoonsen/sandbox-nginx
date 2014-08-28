# Sandbox nginx
This repository provides a sandbox with some basics nginx vhosts. The purpose is to help users to understand how nginx works with those examples.

Have a look at my [blog's post](http://www.theodo.fr/blog/2014/08/1894/) to learn the basics of nginx

Bonus: a little exercise

## Requirements
+ Vagrant (tested on 1.5.3)
+ Ansible (tested on 1.8)

##Installation
To run the vm

    $ vagrant up


If the provisioning haven't been done once, you can use

    $ vagrant provision


To connect to the vm use

    $ vagrant ssh


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


##Exercise
The first step is to create a nginx conf to display the page in www/exercice/index.html when you type "http://exercise.demo" in your browser.

The second step is to make a successful call to a node api listening on the port 3000. 
We need to run our api

In the www directory 

    $ npm install

Then you need to run the node server:
    
    $ ./node_modules/.bin/coffee app.coffee

You can now modify your nginx conf in order to reach your api on the port 3000 with the /api url.

Hint: use a proxy

## License
MIT
