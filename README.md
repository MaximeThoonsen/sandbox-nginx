# Sandbox nginx

## Requirements
Vagrant (tested on 1.5.3)
Ansible (tested on 1.8)

##Installation:
To run the vm
<pre>
$ vagrant up
</pre>

If the provisioning haven't been done once, you can use
<pre>
$ vagrant provision
</pre>

Edit your /etc/hosts or equivalent and add  
<pre>
#nginx demo
199.199.199.96 *.demo
199.199.199.96 nginx-php.demo
199.199.199.96 nginx-symfony.demo
199.199.199.96 nginx-proxy.demo
199.199.199.96 nginx-https.demo
199.199.199.96 exercice.demo
</pre>

You need to download symfony in order to make the nginx-symfony.demo website works
Use composer (https://getcomposer.org/download/)



##Exercice
The goal of the exercice in to display the page in www/exercice/index.html. The webpage contains an ajax call to a node server (via '/api').

To install the node 
<pre>
$ npm install koa
$ alias node='node --harmony'
$ node app.js
</pre>

## License
MIT
