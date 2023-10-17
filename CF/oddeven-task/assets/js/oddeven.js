function validateForm(){
	var validate=document.getElementById("number").value;
		if( validate==""||isNaN( validate)){
			alert("Enter the only  numerics");
		}
}