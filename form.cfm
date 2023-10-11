<html>
<style>
div{
    border:2px solid aqua;
    height:500px;
    width:500px;
    margin-left:550px;
    background-color:aqua;
    margin-top:20px;
}
h1{
    font-size:60px;
    font-weight:900;
    text-align:center;
    color:red;
}
#username{
padding:5px;
}
b{
    padding-left:100px;
    font-size:30px;
    color:black;
}
#submit{
    font-size:20px;
    border:2px solid blue;
    background-color:blue;
    color:white;
    padding:10px 20px ;
     margin-left:175px;
     margin-top:50px;
}
</style>
<body>
<cfoutput>
<div>
<h1>Form</h1>
<form action="submit.cfm" method="post">
<b>Your Name : </b><input type="text" name="UserName" id="username"><br><br>
<b>Your Birthday :</b> <input type="date" name="Birthday"  id="username" value="#dateformat(now(),"mm-dd-yyyy")#"><br><br>
 <input type="submit" value="Click to submit" id="submit">
</form>
</div>
</cfoutput>
<body>
</html>

