<cfcomponent>
    <cffunction name="onApplicationStart" access="public" returntype="void">
        <cfset var dataSource = {
            username = "#username#",
            password = "#password#"
        }>  
        <cfquery name="data" datasource="crud_opera">
                INSERT INTO login_credentials (username, password)
                VALUES (<cfqueryparam  value="#dataSource.username#" cfsqltype="CF_SQL_VARCHAR" >,
                        <cfqueryparam value="#dataSource.password#" cfsqltype="CF_SQL_VARCHAR" >
                        )      
            </cfquery>
                <cfset application.dataSource = dataSource>
    </cffunction>

    <cffunction name = "records" access="public"> 
    	<cfargument  name = "username">
        <cfargument  name = "password">
        	<cfquery name="checkQuery" datasource="crud_opera">
                SELECT * FROM login_credentials 
                WHERE username = <cfqueryparam value="#username#" cfsqltype="CF_SQL_VARCHAR"> AND
                password = <cfqueryparam value="#password#" cfsqltype="CF_SQL_VARCHAR">
            </cfquery>
        <cfreturn checkQuery>
    </cffunction> 
</cfcomponent>