/**
 * Global Module dependencies.
 */

var express = require('express');
var app = module.exports = express();
app.use(express.bodyParser());

app.post('/', function (req, res) {
  console.log(req.body);
  res.send('Ok');
})

app.listen(3000, function(){
  console.log("Express server listening on port 3000" );
});
