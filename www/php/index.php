<!DOCTYPE html>
<html>
<head>
    <title>Welcome in the nginx world</title>
</head>
<body>
<h1>Welcome in the nginx world</h1>
<h2>This time the php is recognized</h2>
<p>
    <?php echo "Hello I am a echo php"; ?>
</p>
<pre>
    server {
        listen 80;
        server_name nginx-php.demo;
        root        /var/www/php/;

        location ~ \.php {
            fastcgi_index index.php;
            fastcgi_pass   unix:/var/run/php5-fpm.sock;
            fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
            include fastcgi_params;
        }

}

</pre>
</body>
</html>