<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <link href="./assets/css/loginform.css" rel="stylesheet">
    </head>

    <cfif IsDefined('form.submit')>
        <cfif URL.role EQ "admin">
    	    <cfset insert1 = createObject("component", "ColdFusion.cms-task.cms")>
				<cfset result =  insert1.updateRecord(form.pagename,form.pagedesc)>
                <cflocation  url="list.cfm?role=admin">
        <cfelseif URL.role EQ "editor">
    	    <cfset insert1 = createObject("component", "ColdFusion.cms-task.cms")>
				<cfset result =  insert1.updateRecord(form.pagename,form.pagedesc)>
                <cflocation  url="list.cfm?role=editor">
        <cfelse>
			<cfset insert = createObject("component", "ColdFusion.cms-task.cms")>
			<cfset res =  insert.insertion(form.pagename,form.pagedesc)>
        </cfif>
	</cfif>
    
    <cfparam name="url.pageid" default="">
        <cfquery name="query" datasource="crud_opera">
            SELECT * FROM table_page WHERE pageid = <cfqueryparam value="#url.pageid#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>

    <body>
        <div class="container mt-3 bg-page  p-5">
            <h2 class="mt-3 text-center" id="border-head">Enter page Details</h2>
                <div id="border">
                <form  action="" method="Post">
                    <div class="mb-3 mt-3" >
                        <label for="pagename" id="name">Page Name *</label>
                        <input type="text" class="form-control mt-3"  placeholder="Enter the pagename"  name="pagename" id="pagename" required <cfif IsDefined('URL.pageid')>value="<cfoutput>#query.pagename#</cfoutput>"</cfif> >
                    </div>
                    <div class="mb-3">
                        <label for="description" id="name">Description *</label>
                        <input type="text" class="form-control mt-3 pb-5"  placeholder="Enter the description"   name="pagedesc" id="pagedesc" required <cfif IsDefined('URL.pageid')>value="<cfoutput>#query.pagedesc#</cfoutput>"</cfif>>
                    </div>
                </div>
                <div class="col text-center mt-3">
                    <button class="btn mt-3 btn-success" name="submit">Submit</button>
                </div>
            </form>                     
        </div>      
    </body>
</html>