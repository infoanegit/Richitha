<cfoutput>
    <cfset username = form.username>
    <cfset password = form.password>
    
    <cfquery name="checkQuery" datasource="crud_opera">
        SELECT * FROM login_credentials 
        WHERE username = <cfqueryparam value="#username#" cfsqltype="CF_SQL_VARCHAR"> AND
        password = <cfqueryparam value="#password#" cfsqltype="CF_SQL_VARCHAR">
    </cfquery>

        <cfif checkQuery.recordCount>
            <!-- User input matches data in the database -->
            <cfset storedpassword= checkQuery.password>
                <cfif storedpassword EQ password>
                    <cflocation  url="welcome.cfm?username=#username#">
                </cfif>
        <cfelse>
            <!-- User input doesn't match data in the database -->
                <p>Data does not exist in the database.</p>
        </cfif>
</cfoutput>
