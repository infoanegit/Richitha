<cfcomponent>
    <cffunction  name="insert">
    <cfargument  name="username" type="string" required="false">
    <cfargument  name="pwd" type="string" required="false">
        <cfset role = "admin"> <!-- Default role is "user" -->
        
            <!-- Determine the role based on the username -->
            <cfif arguments.username EQ "admin">
                <cfset role = "admin">
            <cfelseif arguments.username EQ "editor">
                <cfset role = "editor">
            </cfif>

            <!-- Inserting the data for loginform -->
            <cfquery name="insertQuery" datasource="crud_opera">            
                INSERT INTO table_user (username, pwd, role)
                VALUES (
                    <cfqueryparam value="#arguments.username#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.pwd#" cfsqltype="CF_SQL_VARCHAR">,
                     <cfqueryparam value="#role#" cfsqltype="CF_SQL_VARCHAR">
                )
            </cfquery>
             
            <!-- setting the roles like admin,editor and user -->
            <cfif arguments.username EQ "admin">
                <cflocation url="list.cfm?role=admin">
            <cfelseif role EQ "editor">
                <cflocation url="list.cfm?role=editor">
            <cfelse>
                <cflocation url="list.cfm">
            </cfif>
    </cffunction>

    <cffunction  name="insertion">
        <cfargument  name="pagename" type="string" required="false">
        <cfargument  name="pagedesc" type="string" required="false">
         <!-- Inserting the data for page-details form -->
            <cfquery name="insertQuery" datasource="crud_opera">            
                INSERT INTO table_page (pagename, pagedesc)
                VALUES (
                    <cfqueryparam value="#arguments.pagename#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.pagedesc#" cfsqltype="CF_SQL_VARCHAR">
                )
            </cfquery>
    </cffunction>
    
    <cffunction name="updateRecord">
        <cfargument name="pagename" type="string" required="false">
        <cfargument name="pagedesc" type="string" required="false">  
        <!-- Updating the data for page-details form -->
            <cfquery name="updateQuery" datasource="crud_opera">
                UPDATE table_page
                SET pagename = <cfqueryparam value="#arguments.pagename#" cfsqltype="CF_SQL_VARCHAR">,
                    pagedesc = <cfqueryparam value="#arguments.pagedesc#" cfsqltype="CF_SQL_VARCHAR">
                WHERE pageid = <cfqueryparam value="#URL.pageid#" cfsqltype="CF_SQL_INTEGER">
            </cfquery>
    </cffunction>

    <cffunction  name="readForm" access="public" returntype="query">
		<cfquery name="getData" datasource="crud_opera">
    		SELECT * FROM table_page
		</cfquery>
		<cfreturn getData>
	</cffunction>

    <cffunction name = "selectdata" access="public" returntype="query"> 
    	<cfargument  name = "pageid">
        	<cfquery datasource = "crud_opera" name = "qselectdata">
				SELECT *
				FROM table_page
				WHERE pageid =  '#arguments.pageid#'
        	</cfquery>
          	<cfreturn qselectdata>
    </cffunction>   
</cfcomponent>