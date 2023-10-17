<cfcomponent>
<!--------------Insertion of data---------->
	<cffunction  name="crud">
		<cfargument  name="fname" type="string" required="false">
		<cfargument  name="lname" type="string" required="false">
		<cfargument  name="email" type="string" required="false">
		<cfargument  name="gender" type="string" required="false">
		<cfargument  name="age" type="string" required="false">
		<cfargument  name="loc" type="string" required="false">
	<cfquery name="data" datasource="crud-operations">
		INSERT INTO table_crud (fname, lname,email,gender,age,loc)
		VALUES (<cfqueryparam  value="#arguments.fname#" cfsqltype="CF_SQL_VARCHAR" >,
				<cfqueryparam value="#arguments.lname#" cfsqltype="CF_SQL_VARCHAR" >,
				<cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR" >,
				<cfqueryparam  value="#arguments.gender#" cfsqltype="CF_SQL_VARCHAR">,
				<cfqueryparam value="#arguments.age#" cfsqltype="CF_SQL_NUMERIC" >,
				<cfqueryparam  value="#arguments.loc#" cfsqltype="CF_SQL_VARCHAR">
				)      
	</cfquery>
</cffunction>

<!----------------------Updating the data------------------------->
	<cffunction  name="updateForm" access="public">
		<cfargument  name="fname" type="string" required="false">
		<cfargument  name="lname" type="string" required="false">
		<cfargument  name="email" type="string" required="false">
		<cfargument  name="gender" type="string" required="false">
		<cfargument  name="age" type="integer" required="false">
		<cfargument  name="loc" type="string" required="false">
	<cfquery datasource="crud-operations" name="upd">
		UPDATE table_crud
		SET fname = <cfqueryparam value="#arguments.fname#" cfsqltype="CF_SQL_VARCHAR">,
		lname = <cfqueryparam value="#arguments.lname#" cfsqltype="CF_SQL_VARCHAR">,
		email = <cfqueryparam value="#arguments.email#" cfsqltype="CF_SQL_VARCHAR">,
		gender = <cfqueryparam value="#arguments.gender#" cfsqltype="CF_SQL_VARCHAR">,
		age= <cfqueryparam value="#arguments.age#" cfsqltype="CF_SQL_INTEGER">,
		loc = <cfqueryparam value="#arguments.loc#" cfsqltype="CF_SQL_VARCHAR">
		WHERE id = <cfqueryparam value="#url.id#" cfsqltype="CF_SQL_INTEGER">
		</cfquery>
	</cffunction>
<!----------------------Get the data------------------------->
	<cffunction  name="readForm" access="public" returntype="query">
		<cfquery name="getData" datasource="crud-operations">
    		SELECT * FROM table_crud
		</cfquery>
		<cfreturn getData>
	</cffunction>

<!----------------------Selecting the data------------------------->
	<cffunction name = "selectdata" access="public"> 
    	<cfargument  name = "id">
        	<cfquery datasource = "crud-operations" name = "qselectdata">
				SELECT *
				FROM table_crud
				WHERE id =  '#arguments.id#'
        	</cfquery>
          	<cfreturn qselectdata>
    </cffunction>   
</cfcomponent>



