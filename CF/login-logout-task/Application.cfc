<cfcomponent >
    <cfset this.name = "application5"> 
    <cfset this.sessionManagement = true>     
        <cffunction name="OnRequestStart" access="public" returntype="void">
            <cfif NOT isDefined("session.username") AND ListLast(cgi.SCRIPT_NAME, "/") EQ "welcome.cfm">
                <cflocation url="loginpage.cfm" addtoken="false">
            <cfelseif (isDefined("session.username") AND ListLast(cgi.SCRIPT_NAME, "/") EQ "loginpage.cfm") OR (ListLast(cgi.SCRIPT_NAME, "/") EQ "signup.cfm")>
                <cflocation url="welcome.cfm" addtoken="false">
            </cfif>
    </cffunction>   
</cfcomponent>




