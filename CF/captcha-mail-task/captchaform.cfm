<cfoutput>
    <html lang="en">
        <head>
            <title>Bootstrap Example</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
            <link href="./assets/css/captcha.css" rel="stylesheet">
            <script src="./assets/js/captcha.js" ></script>
        </head> 
        <cfif isDefined("form.submit")>
            <cfset username = form.username>
            <cfset userEnteredCaptcha = form.captcha>
            <cfset storedCaptcha = session.captchaText>
                <cfif userEnteredCaptcha eq storedCaptcha>
                    <cfmail
                        to="#form.email#"
                        from="sender@example.com"
                        subject="Subscription Mail"
                        username="admin"
                        password="Richitha@04">        
                        <p>#username#</p>
                        <p>Thanks for subscribng.</p>
                    </cfmail>
                    <cflocation  url="formsubmit.cfm">
                        <cfelse>
                         <p class="text-danger">Error: CAPTCHA text does not match.</p>
                </cfif>
        </cfif>

        <body>
            <div class="container mt-3 text-center bg-color w-50">
                <form action="" id="validation-form" method="post">
                    <div class="mb-3 mt-3 w-50 offset-4">
                        <label for="username" class="text-info txt">Enter the username:</label>
                        <input type="text" class="form-control" id="username" placeholder="Enter your name" name="username">
                        <span id="username-error" class="text-danger"></span>
                    </div>
                    <div class="mb-3 w-50 offset-4">
                        <label for="email" class="text-info txt">Enter your email:</label>
                        <input type="email" class="form-control" id="email" placeholder="Enter the email" name="email">
                        <span id="email-error" class="text-danger"></span>
                    </div>
                    <div class="form-check mb-3 w-50 offset-4">
                        <cfset session.captchaText = RandRange(1000, 9999)>
                        <cfimage action="captcha" text="#session.captchaText #" width="200" height="75" font="Arial" fontSize="24"/>
                    </div>
                    <div class="form-check mb-3 w-50 offset-4">
                        <input type="text" class="form-control mt-3" id="captcha" placeholder="Enter your captcha" name="captcha">
                        <span id="captcha-error" class="text-danger"></span>
                    </div>
                        <input type="submit" class="btn btn-warning offset-2" name="submit" value="Subscribe"/>
                    </div>
                </form>
            </div>
        </body>
    </html>
</cfoutput>
