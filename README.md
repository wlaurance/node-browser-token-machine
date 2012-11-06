node-browser-token-machine
==========================

Module to open a url, and wait for a token or some kind of response

Install
-------
```
npm install browser-token-machine [-SD]
```

Use
---
```
  var token_machine = require('browser-token-machine');
  token_machine('http://github.com', 'What is your token'
    ,function(token){
      console.log(token);
  });
```

