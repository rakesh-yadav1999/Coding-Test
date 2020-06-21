
function validate(){

var pattern="/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/";

 if(document.getElementById("pass").value !== document.getElementById("cpass").value){
	alert("Enter valid password");
	return false;
}

 if(document.getElementById("pass").value.length <= 8){
	alert("Password should be more than 8 character");
	return false;
}

if (!pattern.test(document.getElementById("email").value))
  {
    alert("You have entered an invalid email address!");
    return (false);
  }
  
    return true;

}