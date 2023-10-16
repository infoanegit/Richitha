<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <link href="./assets/css/loginform.css" rel="stylesheet">
        <style>
            a{
            text-decoration:none;
            color:black;
            }
        </style>
    </head>
    <body>
        <div class="container mt-3 bg-list p-5 text-center">
            <cfset dataCollect = createObject("component", "ColdFusion.cms-task.cms")>
                <cfparam  name="getData" default="#dataCollect.readForm()#">
                    <button id="logout"><a href="loginform.cfm">Logout</a></button>
                <P class="list-para">List of Details</p>
                    <table class="table table-bordered">
                        <thead class="table-light p-5">
                            <tr>
                                <th>Page Name</th>
                                <th>Description</th>
                            <cfparam  name="url.role" default="">
                                <cfif url.role EQ "admin">
                                    <th>Update/</th>
                                    <th>Delete</th>
                                <cfelseif url.role EQ "editor">
                                    <th>Update</th>
                                </cfif>
                            </tr>
                        </thead>
                        <tbody>
                            <cfoutput query="getData">
                                <tr class="table-dark" >
                                    <td>#getData.pagename#</td>
                                    <td>#getData.pagedesc#</td>      
                                        <cfparam  name="url.role" default="">
                                        <cfif url.role EQ "admin">     
                                            <td><button type="button" class="btn btn-info" ><a href="page.cfm?pageid=#getData.Pageid#&role=admin">Edit</a></button></td>
                                            <td> <button type="button" class="btn btn-danger"><a href="list.cfm?pageidToDelete=#getData.pageid#&role=admin" target="_self">Delete</button></td>
                                        <cfelseif url.role EQ "editor">
                                            <td><button type="button" class="btn btn-info"><a href="page.cfm?pageid=#getData.Pageid#&role=admin">Edit</a></button></td>
                                    </cfif>
                                </tr>
                            </cfoutput>
                        </tbody>
                    </table>
                <cfparam  name="url.role" default="">
                    <cfif url.role EQ "admin">
                        <a href="page.cfm?role=user"><button type="button" class="btn btn-dark add-new">ADD NEW</button></a>
                    <cfelseif url.role EQ "editor">
                <a href="page.cfm?role=user"><button type="button" class="btn btn-dark add-new">ADD NEW</button></a>
            </cfif>
        </div>
        <cfparam name="url.pageidToDelete" default="">
            <cfif isNumeric(url.pageidToDelete) AND url.pageidToDelete neq 0>
                <cfquery datasource="crud_opera" name="deleteQuery">
                    DELETE FROM table_page WHERE pageid = <cfqueryparam value="#url.pageidToDelete#" cfsqltype="CF_SQL_INTEGER">
                </cfquery> 
        </cfif>
    </body>
</html>


