<cfcomponent>
<cfset this.name = "MyApplicationName">
    <cfset this.sessionManagement = true>
    <cfset this.sessionTimeout = createTimeSpan(0, 0, 30, 0)>

    <cffunction name="onApplicationStart" returntype="void">
        <cfset application.obj = createObject("component", "simple-cms-task.cms")>
    </cffunction>
    
    <cffunction  name="onRequestStart" access="public" returntype="void">
        <cfif NOT isDefined("session.username") AND listLast(cgi.SCRIPT_NAME,"/") EQ "list.cfm">
            <cflocation  url="loginform.cfm" addtoken="false">
        </cfif>
    </cffunction>

    <cffunction name="onApplicationEnd" returntype="void">
    </cffunction> 

    
</cfcomponent>