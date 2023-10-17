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
    </cfquery>
    
    <body>
        <div class="container mt-3">        
            <div class="row">
                <div class="col offset-4 ">
                    <table class="table table-dark w-50  bg-thumbnail text-center">
                        <thead>
                            <tr>
                                <th>Image Name</th>
                                <th>Thumbnail</th>
                            </tr>
                        </thead>
                        <tbody>
                            <cfoutput query="getImageData">
                                <tr>
                                    <td><a href="imagedetails.cfm?imgid=#getImageData.imgid#">#getImageData.imagename#</a></td>
                                    <td><cfimage source="C:\ColdFusion2021\cfusion\wwwroot\ColdFusion\imagefunction-task\images\#getImageData.imagefile#" action="writetobrowser" width="20" height="20"></td>
                                </tr>
                            </cfoutput>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
