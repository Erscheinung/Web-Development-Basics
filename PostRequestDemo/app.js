var express = require("express");
var app = express();
const port = 3000;
var bodyParser = require("body-parser");

app.use(bodyParser.urlencoded({extended: true}));
app.set("view engine", "ejs");
var friends = ["tbabe", "btabe", "garap", "fattyasid"];

app.get("/", function(req,res){
    res.render("home");
});

app.post("/addfriend",function(req,res){
    var newFriend = req.body.newfriend;
    friends.push(newFriend);
    // res.send("YOU HAVE REACHED THE POST");
    res.redirect("/friends");
});

app.get("/friends", function(req,res){
    res.render("friends", {friends: friends});
})

app.listen(port, () => 
    console.log(`Example app listening on port ${port}!`))