var express = require("express");
var app = express();
const port = 3000;
var request = require("request");
app.set("view engine", "ejs");

app.get("/",function(req,res){
    res.render("search");
});

app.get("/results",function(req,res){
    console.log(req.query.lol);
    var lol = req.query.lol;
    var url = "http://www.omdbapi.com/?s=" + lol + "&apikey=3861e8c6";
    console.log(url);
    request(url, function(error,response, body){
        if(!error && response.statusCode === 200){
            var data = JSON.parse(body);
            //res.send(results["Search"][0]["Title"]);
            res.render("results", {data: data});
        }
    });
});


app.listen(port, () => 
    console.log(`Movie app listening on port ${port}!`))