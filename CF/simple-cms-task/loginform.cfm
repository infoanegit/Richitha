<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"> </script>  
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"> </script>  	
        <link href="./assets/css/loginform.css" rel="stylesheet">
        <script src="./assets/js/loginform.js"></script>
    </head>
    <cfset returnMsg="">
        <cfif structKeyExists(form, "submit")>
            <cfset obj = createObject("component", "simple-cms-task.cms")>
		    <cfset getUser =  obj.validateUser(form.username,form.pwd)>
                <cfif getUser.recordcount>
                    <cfset session.role = getUser.role />
                    <cfset session.username = getUser.username />
                    <cflocation  url="list.cfm">
                <cfelse>
                    <cfset returnMsg = "Invalid Login credentials" />
                </cfif>
        </cfif>
        <cfif structKeyExists(url, "clearsession")>
            <cfset structClear(session) >
        </cfif> 

    <body>
        <div class="container mt-3 bg-color text-center p-5">
            <span><i class="fa-solid fa-user"></i></span>
            <h2 class="mt-3">LOGIN</h2>
                <form  action="" method="Post" id="basic-form">
                    <div class="mb-3 mt-3">
                        <label for="username" id="name">Username *</label>
                        <input type="text" class="form-control w-50 offset-3"  placeholder="Enter the username" name="username" id="username">
                    </div>
                    <div class="mb-3">
                        <label for="pwd" id="name">Password *</label>
                        <input type="password" class="form-control  w-50 offset-3"  placeholder="Enter the password" name="pwd" id="password">
                    </div>
                <input type="submit" class="btn mt-3"  value="Login" name="submit" id="btn-style">
                 <cfoutput>
                    <cfif returnMsg NEQ "">
                        <h4 style="color:white;">#returnMsg#</h4>
                    </cfif>
                </cfoutput> 
            </form>
        </div>  
    </body>
</html>