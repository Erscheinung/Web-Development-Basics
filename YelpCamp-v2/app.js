var express = require("express");
var app = express();
var bodyParser = require("body-parser");
var mongoose = require("mongoose");

mongoose.connect("mongodb://localhost:27017/yelp_camp", { useNewUrlParser: true })
app.use(bodyParser.urlencoded({extended: true}));
app.set("view engine","ejs");

//SCHEMA SETUP
var campgroundSchema = new mongoose.Schema({
    name: String,
    image: String,
    description: String
});

var Campground = mongoose.model("Campground", campgroundSchema);

// Campground.create(
//     {
//         name: "Salmon Creek", 
//         image: "https://farm3.staticflickr.com/2365/2218975569_335f892007.jpg",
//         description: "Great murder spot. Carry water bottle though"
//     }, function(err, campground){
//       if(err){
//           console.log(err);
//       } 
//       else {
//           console.log("Success");
//           console.log(campground);
//       }
//     });


app.get("/", function(req,res){
    res.render("landing");
});

//INDEX - show all campgrounds
app.get("/campgrounds", function(req,res){
    // Get all campgrounds from DB
    Campground.find({}, function(err,allCampgrounds){
       if(err){
           console.log(err);
       } else {
           res.render("index", {campgrounds:allCampgrounds});
       }
    });
});

//CREATE - add new campgrounds to database 
app.post("/campgrounds", function(req, res){
    // get data from form and add to campground array
    var name = req.body.name;
    var image = req.body.image;
    var desc = req.body.description;
    var newCampground = {name: name, image: image, description: desc};
    //create a new campground and save to database
    Campground.create(newCampground,function(err,newlyCreated){
       if(err){
           console.log(err);
       } 
       else {
           // redirect back to campgrounds page
           res.redirect("/campgrounds");
       }
    });
});

//NEW - show form to create new campground
app.get("/campgrounds/new", function(req, res){
    res.render("new.ejs");
});

//SHOW - shows more info about one campground
app.get("/campgrounds/:id",function(req,res){
    //find the campground with provided ID
    Campground.findById(req.params.id, function(err,foundCampground){
       if(err){
           console.log(err);
       } 
       else {
            //render show template with that campground 
             res.render("show", {campground: foundCampground});
       }
    });
    // res.send("THIS WILL BE THE SHOW PAGE ONE DAY");
});

app.listen(process.env.PORT, process.env.IP, function(){
    console.log("YelpCamp running");
});