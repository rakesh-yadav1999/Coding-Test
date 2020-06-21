
function validate(){


 if(document.getElementById("pass").value !== document.getElementById("cpass").value){
	alert("Enter valid password");
	return false;
}

 if(document.getElementById("pass").value.length <= 8){
	alert("Password should be more than 8 character");
	return false;
}


  
    return true;

}
