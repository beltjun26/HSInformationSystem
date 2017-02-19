$(function(){ // same as $(document).ready(function(){});
	$(document).on("submit", "#login", credential_authentication);
});

function credential_authentication(e){
	e.preventDefault();
	$.ajax({
		url: "control/php/login_authentication.php",
		type: "post",
		data: $(this).serialize(),
		success: function(data){
			console.log(data);
			if(data=="success"){
				window.location.href = "home.php";
			}
			else{
				$("#error").css("opacity","1");
			}
		}
	});
}