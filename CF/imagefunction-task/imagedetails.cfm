<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="./assets/css/imagefunction.css">
    </head>

    <cfquery name="getImageData" datasource="crud_opera">
        SELECT *
        FROM image_thumbnail
        WHERE imgid = <cfqueryparam value="#url.imgid#" cfsqltype="cf_sql_integer">
    </cfquery>
    
    <body>
        <div class="container mt-3">       
            <table class="table table-bordered text-center bg-details">
                <thead>
                    <tr class="table-dark">
                        <th>Image Name</th>
                        <th>Description</th>
                        <th>Original Image</th>
                    </tr>
                </thead>
                <tbody>
                    <cfoutput query="getImageData">
                        <tr class="table-info">
                            <td>#getImageData.imagename#</td>
                            <td>#getImageData.imagedesc#</td>
                            <td><cfimage source="C:\ColdFusion2021\cfusion\wwwroot\ColdFusion\imagefunction-task\images\#getImageData.imagefile#" action="writetobrowser"></td>
                        </tr>
                    </cfoutput>
                </tbody>
            </table>
        </div>
    </body>
</html>
