<html lang="en">
		<head>
			<title>Bootstrap Example</title>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"> </script>  
			<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"> </script>  	
			<script src="./assets/js/crud.js"></script>
		</head>
		<style>
			form .error{
				color:red;
				font-size:20px;
			}
			a{
				text-decoration:none;
				color:yellow;
			}
		</style>
			<cfif IsDefined('Form.submit')>
				<cfset insert = createObject("component", "ColdFusion.task-crud.crud")>
				<cfset result =  insert.crud(form.fname,form.lname,form.email,form.gender,form.age,form.loc)>
			</cfif>
			<cfif IsDefined('URL.id')>
	 			<cfset variables.insert = createObject("component","ColdFusion.task-crud.crud")>
        		<cfset variables.data = variables.insert.selectdata(id = #URL.id#)>
			</cfif> 
		<body>
			<cfoutput>
				<div class="container mt-3 bg-dark text-light">
  					<form  id = "basic-form" action="" method="post">
    					<div class="row">
     						<h2 class="text-center bg-primary p-3">CRUD</h2>
								<div class="col p-3">
									<label for="fname" class="text-info">FirstName:*</label>
									<input type="text" class="form-control" placeholder="enter your FirstName" name="fname" id="fname" <cfif IsDefined('URL.id')>value="#variables.data.fname#"</cfif> >
								</div>
								<div class="col p-3">
									<label for="lname" class="text-info">LastName:*</label>
									<input type="text" class="form-control" placeholder="enter your LastName" name="lname" id="lname" <cfif IsDefined('URL.id')>value="#variables.data.lname#"</cfif>>
								</div>
    					</div>
						<div class="col pt-3 pb-3">
							<label for="email" class="text-info">E-mail:*</label>
							<input type="email" class="form-control" placeholder="enter your email" name="email" id="email" <cfif IsDefined('URL.id')>value="#variables.data.email#"</cfif>>
						</div>
						<div class="row">
							<div class="col p-3 gender">
								<label for="gender" class="text-info">Gender:*</label><br/>
								<input type="radio" class="form-check-input text-light"  name="gender"  id="male" value="male" <cfif IsDefined('URL.id')>value="#variables.data.gender#"</cfif>>
								<label for="male">Male</label>
								<input type="radio" class="form-check-input text-light"  name="gender" id="female" value="female"<cfif IsDefined('URL.id')>value="#variables.data.gender#"</cfif>>
								<label for="female">Female</label><br/>
							</div>
							<div class="col p-3">
								<label for="age" class="text-info">Age:*</label>
								<input type="text" class="form-control" placeholder="enter your age" name="age" id="age" <cfif IsDefined('URL.id')>value="#variables.data.age#"</cfif>>
							</div>
							<div class="col p-3">
								<label for="loc"  class="text-info">Location:*</label>
								<input type="text" class="form-control" placeholder="enter your location" name="loc" id="loc" <cfif IsDefined('URL.id')>value="#variables.data.loc#"</cfif>>
							</div>
    					</div>
    					<div class="row">
      						<div class="col p-3 mb-3 offset-1">
     							<input  type="reset" class="btn  btn-outline-danger" value="Clear Form">
      						</div>
      						<div class="col p-3 offset-1">
      							<button type="button" class="btn btn-outline-warning"><a href="./viewdata.cfm">View Data</button></a>
      						</div>
      						<div class="col p-3 offset-1">
      							<input  type="submit" class="btn btn-success" value="Submit" name="submit">
      							</div>
    						</div>
    					</div>
					</div>  
				</form>
			</div>
		</body>
	</html>
</cfoutput>