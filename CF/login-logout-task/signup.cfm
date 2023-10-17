<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">  
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <link href="loginpage.css" rel="stylesheet">
    </head>
        <cfif isDefined("form.submit")>
		    <cfset res = createObject("component", "ColdFusion.loginpage")>
		    <cfset output =  res.onApplicationStart(form.username,form.password)>
            <cflocation  url="http://localhost:8500/ColdFusion/loginpage.cfm">
        </cfif>
    <body>
        <div class="container mt-3 bg-color text-center p-5">
            <form  name="myform" method="post" action="" id="login-form">
                <div class="mb-3 mt-3">
                    <label for="username" class="signup-name">Given Your Username</label>
                    <input type="text" class="form-control  w-50 offset-3" id="border" placeholder="Enter the username" name="username" required>
                </div>
                <div class="mb-3">
                    <label for="pwd" class="signup-name">Given Your Password</label>
                    <input type="password" class="form-control  w-50 offset-3" id="border1" placeholder="Enter the password" name="password" required>
                </div>
                    <input type="submit" class="btn btn-dark mt-3"  value="Sign Up" name="submit">
            </form>       
        </div>
    </body>
</html>
