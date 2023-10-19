<cfcomponent>
<cfset this.name = "application">
    <cfset this.sessionManagement = true>
    <cfset this.sessionTimeout = createTimeSpan(0, 0, 30, 0)>
</cfcomponent>