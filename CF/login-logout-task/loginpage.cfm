<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <link href="/assets/css/loginpage.css" rel="stylesheet">

        <cfparam name="form.username" default="">
        <cfparam name="form.password" default="">
    <cfif structKeyExists(form, "submit")>
    <!-- Check the username and password (you should use a secure authentication method). -->
            <cfset validUsername = "#form.username#">  
            <cfset validPassword = "#form.password#">
            <cfset insert = createObject("component", "ColdFusion.loginpage")>
        <cfset result =  insert.records( validUsername,validPassword)>
            <cfif result.username eq validUsername and result.password eq validPassword>
                <!-- Set the username in the SESSION scope. -->           
                    <cfset session.username = form.username>
                    <cfset session.password = form.password>    
                    <cflocation url="welcome.cfm" addtoken="no">
                <cfelse>
                <!-- Invalid login, display an error message. -->
                    <p>Data does not exist in the database.</p>
            </cfif>   
    </cfif>
    </head>
        <body>
            <div class="container mt-3 bg-color text-center p-5">
                <span><i class="fa-solid fa-user"></i></span>
                    <h2 class="mt-3">USER LOGIN</h2>
                        <form  action="" method="Post">
                             <div class="mb-3 mt-3">
                                <label for="username" id="name">Username</label>
                                <input type="text" class="form-control w-50 offset-3"  placeholder="Enter the username" name="username" id="username"  required>
                            </div>
                            <div class="mb-3">
                                <label for="pwd" id="name">Password</label>
                                <input type="password" class="form-control  w-50 offset-3"  placeholder="Enter the password" name="password" id="password" required>
                            </div>
                                <input type="submit" class="btn btn-dark mt-3"  value="Login" name="submit" id="login1">
                                <p class="mt-3 text-light">New User? <a href="signup.cfm" class="text-warning">Sign Up</a></p> 
                        </form>
                </div>           
        </body>
</html>

