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
            <cfset dataCollect = createObject("component", "simple-cms-task.cms")>
             <cfset getData = dataCollect.readForm()>
            <button id="logout"><a href="loginform.cfm?clearsession=yes">Logout</a></button>
                <P class="list-para">List of Details</p>
                    <table class="table table-bordered">
                        <thead class="table-light p-5">
                            <tr>
                                <th>Page Name</th>
                                <th>Description</th>
                                <cfif session.role EQ "admin">
                                    <th>Update/</th>
                                    <th>Delete</th>
                                    <cfelseif session.role EQ "editor">
                                    <th>Update</th>
                                </cfif>
                            </tr>
                        </thead>
                        <tbody>
                            <cfoutput query="getData">
                                <tr class="table-dark" >
                                    <td>#getData.pagename#</td>
                                    <td>#getData.pagedesc#</td>                                             
                                        <cfif  session.role EQ "admin">     
                                            <td><button type="button" class="btn btn-info" ><a href="page.cfm?pageid=#getData.Pageid#">Edit</a></button></td>
                                            <td> <button type="button" class="btn btn-danger"><a href="list.cfm?pageidToDelete=#getData.pageid#" target="_self">Delete</button></td>                                  
                                        <cfelseif  session.role EQ "editor">     
                                            <td><button type="button" class="btn btn-info" ><a href="page.cfm?pageid=#getData.Pageid#">Edit</a></button></td>
                                    </cfif>
                                </tr>
                            </cfoutput>
                        </tbody>
                    </table>
                 <cfparam  name="session.role" default="">
                    <cfif  session.role EQ "admin" OR session.role EQ "editor">
                        <a href="page.cfm?session.role=user" target="_blank"><button type="button" class="btn btn-dark add-new">ADD NEW</button></a>
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
