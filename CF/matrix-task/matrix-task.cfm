<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <link href="./assests/matrix-task.css" rel="stylesheet">
    </head>
    <body>
        <div class="container text-center">
            <div class="row">
                <div class="col">
                    <cfloop from="1" to="3" index="i">
                        <cfloop index="j" from="#i#" to="9" step="3">
                            <cfoutput>#j#</cfoutput>
                        </cfloop>
                        <br/>
                    </cfloop>
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </body>
</html>




