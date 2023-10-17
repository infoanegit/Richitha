<cfoutput>
  	<html lang="en">
		<head>
			<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>Document</title>
			<link rel="stylesheet" href="./assets/css/list-function.css">
		</head>
		<body>

		<form action="" name="myForm" method="post" id="myForm" >
			<div class="bg">
				<h1>List Function(divisible by 3)</h1>
				<label>Enter a list : </label>
				<input type="text" id="list" name="flist">
				<br/>
				<input type="submit" id="submitBtn" name="submit" value="Submit" onclick="return validateForm()"/>
			</div>
		</form>

		<cfif isDefined("form.submit")>
			<cfset res = form.flist>
			<cfset out = "">
			<cfloop list="#res#" item="item">
				<cfif item MOD 3 EQ 0>
					<cfset out = listAppend(out, item)>
				</cfif>
			</cfloop>
			<p id="demo">#out#</p>
		</cfif>

			<script>
				function  validateForm(){
				var validate=document.getElementById("list").value;
				if(validate==""){
					alert("Enter a list with numeric values");
				}
				}
			</script>
		</body>
	</html>
</cfoutput>


