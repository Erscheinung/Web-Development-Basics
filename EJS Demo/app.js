var express = require("express");

var app = express();
const port = 3000;

app.use(express.static("public"));
app.set("view engine", "ejs");

app.get("/", function(req,res){
    res.render("home");
});

app.get("/fallinlovewith/:thing", function(req,res){
    var thing = req.params.thing;
    // res.send("You fell in love with " + thing);
    res.render("love", {thingVar: thing});
});

app.get("/posts", function(req,res){
    var posts = [
        {title: "Post 1", author: "Susy"},
        {title: "LOL", author: "Nietzsche"},
        {title: "TROLL", author: "Hegel"}
    ]

    res.render("posts", {posts: posts});
});


app.listen(port, () => 
    console.log(`app listening on port ${port}!`))

