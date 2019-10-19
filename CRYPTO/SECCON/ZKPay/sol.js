function invokeSignup(user, pass)
{
    signup.ok = false;
    signup.waited=true;
    elapsed=0;
    Snackbar.show({text: "Registering...", duration: 0});

    sendData = {};
    sendData["user"]   = user
    sendData["pass"] = pass
    $.ajax({
	type:"POST",
	url:"/api/signup",
	data:JSON.stringify(sendData),
	contentType: "application/json; charset=utf-8",
	dataType: "json",
	success : function(data) {
	    if(data["status"] == "ok"){
 		signup.ok = true;
	    }else{
		Snackbar.show({text: data["error"]});
		clearInterval(progress);
		signup.waited = false;
		$("#pro-div").removeAttr("style").hide();
	    }
	}
    });

}
