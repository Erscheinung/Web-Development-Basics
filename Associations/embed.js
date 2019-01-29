var mongoose = require("mongoose");
mongoose.connect("mongodb://localhost:27017/yelp_camp", { useNewUrlParser: true })

// POST - title, content
var postSchema = new mongoose.Schema({
    title: String,
    content: String
});
var Post = mongoose.model("Post",postSchema);


// USER - email, name
var userSchema = new mongoose.Schema({
    email: String,
    name: String,
    posts: [postSchema]
});
var User = mongoose.model("User",userSchema);

// var newUser = new User({
//     email: "hermione@hogwarts.edu",
//     name: "Hermione Granger"
// });

// newUser.posts.push({
//     title: "How to brew polyjuice potion",
//     content: "Go to friggin potions class you filthy mudbloods"
// });

// newUser.save(function(err, user){
//     if(err){
//         console.log(err);
//     } else {
//         console.log(user);
//     }
// })

// var newPost = new Post({
//     title: "Hmmmmmmm",
//     content: "Hmmmmmmmmmmmmmm"
// });

// newPost.save(function(err,post){
//   if(err){
//       console.log(err);
//   } else {
//       console.log(post);
//   }
// });

User.findOne({name: "Hermione Granger"}, function(err,user){
   if(err){
     //  console.log(err);
   } else {
       user.posts.push({
           title: "3 things I really hate",
           content: "You. Your mom. Your grandmom"
       });
       user.save(function(err,user){
          if(err){
              console.log(err);
          } else {
              console.log(user);
          }
       });
   }
});