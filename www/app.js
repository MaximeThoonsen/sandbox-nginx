var koa = require('koa');
var app = koa();

// logger

app.use(function *(next){
    var start = new Date;
    yield next;
    var ms = new Date - start;
    console.log('%s %s - %s', this.method, this.url, ms);
});

// response

app.use(function *(){
    this.body = 'Hello World';
});

var port = 3000;
app.listen(port);
console.log('listening on port:' + port);