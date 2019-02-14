var express = require("express");
var router = express.Router();
var Campground = require("../models/campground");
var Comment = require("../models/comment");

//INDEX - show all campgrounds
router.get("/", function(req,res){
    // Get all campgrounds from DB
    Campground.find({}, function(err,allCampgrounds){
       if(err){
           console.log(err);
       } else {
           res.render("campgrounds/index", {campgrounds:allCampgrounds, currentUser: req.user});
       }
    });
});

//CREATE - add new campgrounds to database 
router.post("/", function(req, res){
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
router.get("//new", function(req, res){
    res.render("/new");
});

//SHOW - shows more info about one campground
router.get("/:id",function(req,res){
    //find the campground with provided ID
    Campground.findById(req.params.id).populate("comments").exec(function(err,foundCampground){
       if(err){
           console.log(err);
       } 
       else {
             console.log(foundCampground);
            //render show template with that campground 
             res.render("campgrounds/show", {campground: foundCampground});
       }
    });
    // res.send("THIS WILL BE THE SHOW PAGE ONE DAY");
});

module.exports = router;