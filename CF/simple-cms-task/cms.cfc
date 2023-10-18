<cfcomponent>
    <cffunction  name="validateUser">
    <cfargument  name="username" type="string" required="false">
    <cfargument  name="pwd" type="string" required="false">
       <cfquery name="getUser" datasource="crud_opera">
    		SELECT * FROM table_user
            where username= <cfqueryparam value="#arguments.username#" cfsqltype="CF_SQL_VARCHAR">
            AND PWD = <cfqueryparam value="#arguments.pwd#" cfsqltype="CF_SQL_VARCHAR">
		</cfquery>
        <cfreturn getUser />
    </cffunction>

    <cffunction  name="dataInsert">
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
                WHERE pageid = <cfqueryparam value="#url.pageid#" cfsqltype="CF_SQL_INTEGER">
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
