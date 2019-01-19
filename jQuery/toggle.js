// alert("Sample");

var button = document.querySelector("button");
var isPurple = false;

// button.addEventListener("click", function(){
// 	//alert("click");
// 	if(isPurple){
// 		document.body.style.background = "white";
// 		isPurple=false;
// 	}
// 	else{
// 		document.body.style.background = "purple";
// 		isPurple=true;
// 	}
// });

button.addEventListener("click", function(){
	//alert("click");
	document.body.classList.toggle("purple");
});