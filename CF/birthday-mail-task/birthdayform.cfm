<cfoutput>
    <html lang="en">
        <head>
            <title>Bootstrap Example</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
            <link href="./assets/css/birthdayform.css" rel="stylesheet">
            <script src="./assets/js/birthdayform.js"></script>
        </head>

        <cfif structKeyExists(form, "name") and structKeyExists(form, "email") and structKeyExists(form, "image")>
            <cfset userEnterName = form.name>
            <cfset userEnterWish = form.comment>
            <cfparam name="form.image" default="">
                <!-- Check if a file was uploaded -->
                <cfif len(form.image)>
                    <cffile action="upload" filefield="image" destination="C:\ColdFusion2021\cfusion\wwwroot\birthday-mail-task\images" nameconflict="makeunique">
                    <cfset attachmentPath = "C:\ColdFusion2021\cfusion\wwwroot\birthday-mail-task\images\#cffile.serverfile#">
                    <!-- Check if the file upload was successful -->
                    <cfif isDefined("cffile.serverFile")>
                        <cfmail to="#userEnterName#" from="sender@example.com" subject="Email with Attached Image" username="admin" password="Richitha@04">
                        <!-- HTML email content -->
                            <p>Dear #userEnterName#</p>
                            <p>#userEnterWish#</p>
                        <cftry>
                            <cfimage action="writeToBrowser" source="#attachmentPath#" />
                        <cfcatch>
                            <p>Error displaying image: #cfcatch.message#</p>
                        </cfcatch>
                        </cftry>
                        <!-- Attach the uploaded image -->
                            <cfmailparam file="#attachmentpath#" disposition="attachment" />
                        </cfmail>
                    </cfif>
                </cfif>
            </cfif>
        
        <body>
            <div class="container mt-3 text-center w-50 bg-dark p-5">
                <h2 class="text-warning">Send wishes to your favorites</h2>
                    <form action="" method="post" id="myForm" enctype="multipart/form-data">
                        <div class="mb-3 mt-3">
                            <label for="name" class="text-info">Name of Birthday Celebrant</label>
                            <input type="text" class="form-control offset-3 w-50 mt-3" id="name" placeholder="Enter the name" name="name">
                            <span class="error" id="nameError"></span>
                        </div>
                        <div class="mb-3">
                            <label for="email" class="text-info">Birthday Celebrant MailId</label>
                            <input type="email" class="form-control offset-3 w-50 mt-3" id="email" placeholder="Enter the emailId" name="email">
                            <span class="error" id="emailError"></span>
                        </div>
                        <div class="mb-3">
                            <label for="image" class="text-info">Greeting Image</label>
                            <input type="file" class="form-control offset-3 w-50 mt-3" id="image" name="image">
                            <span class="error" id="imageError"></span>
                        </div>
                        <div class="mb-3">
                            <label for="comment" class="text-info">Birthday Wish</label>
                            <input type="text" class="form-control mt-3"  id="comment" name="comment">
                            <span class="error" id="commentError"></span>
                        </div>
                    <input type="submit" class="btn btn-success" value="Send Mail"/>
                </form>
            </div>
        </body>
    </html>
</cfoutput>