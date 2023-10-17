<cfoutput>
	<html lang="en">
		<head>
    		<meta charset="UTF-8">
    		<meta name="viewport" content="width=device-width, initial-scale=1.0">
    		<title>Document</title>
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
  			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    		<link rel="stylesheet"  href="./assets/css/oddeven.css">
  			<script src="./assets/js/oddeven.js"></script>
		</head>
		<body>
			<form action="" name="myForm" method="post" id="myForm" >
				<div class="container  bg-dark mt-5 pb-5 text-center">
					<div class="row">
						<div class="col p-5">
							<div class="form-bg">
								<h1>Odd/Even</h1>
								<p>Enter any number</p>
								<input type="text" id="number" name="numeric">
								<br/>
								<input type="submit" id="submit"   name="submit" value="submit" onclick="return validateForm()">
							</div>
								<br/>
    					</div>
					</div>
				<cfif isDefined("form.submit")>
						<span class="title">Odd numbers are in blue and even numbers are in green</span>
					<cfset res = form.numeric>
						<cfloop index="i" from="1" to="#numeric#">
							<cfif i MOD 2 EQ 0>
								<p id="even">#i#</p>
							<cfelse>
								<p id="odd">#i#</p>
						</cfif>	
						</cfloop>			
					</cfif>
				</div>
			</form>	
		</body>
	</html>
</cfoutput>