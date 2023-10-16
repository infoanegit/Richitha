<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">   
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <link  rel="stylesheet" href="./loginpage.css">
    </head>
    <style>
        .cfoutput-text {
            color: white;
            font-size:30px;
            font-weight: bold;
            padding:20px 0px;
        }
    </style>
<body>
    <div class="container mt-3 bg text-center p-5">
        <div class="mb-3 mt-3">
            <img src="welcome.jpg" id="welcome-img">
        </div>
        <div class="mb-3 mt-3">
            <cfoutput>
                <p class="cfoutput-text">#session.username#</p>
            </cfoutput>
        </div>
        <div class="mb-3 mt-3">
            <a href="loginpage.cfm"><input type="submit" class="btn btn-success" value="Logout"></a>
            </div>
        </div>
    </body>
</html>


