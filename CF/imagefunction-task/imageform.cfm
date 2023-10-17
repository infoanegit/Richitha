<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <link rel="stylesheet" href="./assets/css/imagefunction.css">
        <script src="./assets/js/imagefunction.js"></script>
    </head>

    <cfif structKeyExists(form, "imagefile")>
        <cfset relativePath = "./images/">
        <cfset absolutePath = "#expandPath(relativePath)#">
        <cffile action="upload"  destination="#absolutePath#"  filefield="form.imagefile" result="upload" nameconflict="makeunique">
        <cfset uploading="#upload.serverFile#">
            <cfquery name="insertImage" datasource="crud_opera">
                INSERT INTO image_thumbnail (imagename, imagedesc, imagefile)
                VALUES (
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#imagename#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#imagedesc#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#uploading#">
                )
            </cfquery>
    </cfif>

    <body>
        <div class="container mt-3 bg-color bg-light">
            <h2 class="bg-dark text-light text-center p-3 mb-3">Image Function and Upload Validation</h2>
                <form action="" method="post" enctype="multipart/form-data" id="uploadForm">
                    <div class="row">
                        <div class="col offset-2">
                            <label for="img" class="form-label">Image Name:</label>
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Enter image name" name="imagename" id="imgname">
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col offset-2">
                            <label for="img" class="form-label">Description:</label>
                        </div> 
                        <div class="col">
                            <textarea class="form-control" rows="3" id="comment"  name="imagedesc" id="imgdesc"></textarea>
                            <span id="validate-name" style="color: red;"></span>
                        </div>     
                    </div>   
                    <div class="row mt-3">
                        <div class="col">
                            <span id="errorText" style="color: red;"></span>
                            <input type="file" id="fileInput"  accept=".jpg, .png, .gif"  name="imagefile"/>
                            <button type="button" class="btn btn-warning"><a href="imagethumbnail.cfm" id="list">List</a></button>
                            <input type="submit"  class="btn btn-success offset-4" value="Sumbit"/>
                        </div>
                    </div>
                </form>
            </div>
    </body>
</html>