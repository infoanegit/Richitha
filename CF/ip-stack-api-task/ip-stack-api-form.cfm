<cfoutput>
    <html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="./assets/js/ip-stack-api-validate.js"></script>
    </head>

    <body>
        <div class="container mt-3 text-center  w-50 bg-primary p-5">
            <h2 class="text-warning">Enter Your IP ADDRESS</h2>
                <form action="" id="myForm" method="post">
                    <div class="mb-3 mt-3 w-50 offset-3">
                        <input type="text" class="form-control" id="ipAddress" placeholder="Enter IP" name="ipAddress">
                            <span id="errorText" style="color:red;font-size:20px"></span>
                    </div>
                    <input type="submit" class="btn btn-success mt-3" value="Submit">
            </form>
        </div>

        <cfif structKeyExists(form, "ipAddress")>
            <cfset ipAddress = form.ipAddress>
            <cfset locationService = createObject("component", "ip-stack-api")>
            <cfset locationDetails = locationService.getLocationDetails(ipAddress)>
            <cfif locationDetails.Statuscode EQ '200 OK'>
            <cfset response=deserializeJSON(locationDetails.filecontent)>
                <div class="container mt-3 p-3">
                    <table class="table table-dark text-center">
                        <tbody>
                            <tr>
                                <th>Parameter</th>
                                <th>Value</th>
                            </tr>
                                <cfloop collection="#response#" item="key">
                                    <cftry>
                                        <tr>
                                            <td>#key#</td>
                                            <td>#response[key]#</td>
                                        </tr>
                                        <cfcatch>
                                            <tr>
                                                <td>#key#</td>
                                                <td>Error: Value not available</td>
                                            </tr>
                                        </cfcatch>
                                    </cftry>
                                </cfloop>
                            </tbody>
                        </table>
                    </div>
                </cfif>
            </cfif>
        </body>
    </html>
</cfoutput>