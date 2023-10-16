<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <style>
            a{
            text-decoration:none;
            color:black;
            }
        </style>
    </head>
 
    <body>
        <div class="container mt-3 p-5">
            <cfset dataCollect = createObject("component", "ColdFusion.task-crud.crud")>
            <cfparam  name="getData" default="#dataCollect.readForm()#">
                <table class="table table-bordered">
                    <thead class="table-light p-5">
                        <tr class="bg-light">
                            <th><button type="button" class="btn btn-warning"><a href="crud.cfm">Back</button></a></th>
                            <th><button type="button" class="btn btn-success"><a href="crud.cfm">ADD NEW</button></th>
                        </tr>
                    </thead>
                    <thead class="table-dark p-5">
                        <tr>
                            <th>FirstName</th>
                            <th>LastName</th>
                            <th>Email</th>
                            <th>Gender</th>
                            <th>Age</th>
                            <th>Location</th>
                            <th>Update/</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <cfoutput query="getData">
                            <tr class="table-light" id="#getData.id#">
                                <td>#getData.fname#</td>
                                <td>#getData.lname#</td>
                                <td>#getData.email#</td>
                                <td>#getData.gender#</td>
                                <td>#getData.age#</td>
                                <td>#getData.loc#</td>
                                <td><button type="button" class="btn btn-info" ><a href="crud.cfm?id=#getData.id#">Edit</button></a></td>
                                <td> <button type="button" class="btn btn-danger"><a href="viewdata.cfm?idToDelete=#getData.id#">Delete</button></a></td>
                            </tr>
                        </cfoutput>
                    </tbody>
                </table>
            </div>
            <!-------------Deletion of data----------->
            <cfparam name="url.idToDelete" default="">
                <cfif isNumeric(url.idToDelete) AND url.idToDelete neq 0>
                    <cfquery datasource="crud-operations" name="deleteQuery">
                        DELETE FROM table_crud WHERE id = <cfqueryparam value="#url.idToDelete#" cfsqltype="CF_SQL_INTEGER">
                    </cfquery>
                <cflocation url = "http://localhost:8500/ColdFusion/viewdata.cfm" addToken = "no"> 
        </cfif>
    </body>
</html>


