<cfcomponent>
    <cffunction name="getLocationDetails" access="public" returntype="struct">
        <cfargument name="ipAddress" type="string" required="true" />
            <cfhttp result="response" url="http://api.ipstack.com/#arguments.ipAddress#" method="GET">
                <cfhttpparam type="url" name="access_key" value="c3f0fdc8ccdeb2dcc1a736b914673880"/>
            </cfhttp>
        <cfreturn response>
    </cffunction>
</cfcomponent>
