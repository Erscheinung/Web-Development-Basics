var lis = document.querySelectorAll("li");

for(var i=0; i<lis.length; i++){
	lis[i].addEventListener("mouseover", function(){
		this.classList.add = "slected";
	});
	lis[i].addEventListener("mouseout", function(){
		this.classList.remove = "slected";
	});
	lis[i].addEventListener("click", function(){
		this.classList.toggle("done");
	});

}

// firtsLI.addEventListener("mouseover", function(){
// 	firtsLI.style.color = "green";
// });

// firtsLI.addEventListener("mouseout", function(){
// 	firtsLI.style.color = "black";
// });