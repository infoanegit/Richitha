$(document).ready(function () {
    $('#uploadForm').submit(function (e) {
        e.preventDefault();
        var imagename=$("#imgname").val();
        var imagedesc=$("#imgdesc").val();
        var fileInput = $('#fileInput')[0];
        var errorText = $('#errorText')[0];
        
        if(imagename==""||imagedesc==""){
            $("#validate-name").text("Please enter the ImageName and ImageDescription");
        }
        if (fileInput.files.length === 0) {
            errorText.textContent = 'Please select a file.';
            return;
        }

        var file = fileInput.files[0];
        var fileSize = file.size; // in bytes
        var fileType = file.type;

        // Check file type
        if (fileType !== 'image/jpeg' && fileType !== 'image/png' && fileType !== 'image/gif') {
            errorText.textContent = 'Please select a valid image file (jpg, png, or gif).';
            return;
        }

        // Check file size (1 MB = 1024 KB = 1024 bytes)
        if (fileSize > 1024 * 1024) {
            errorText.textContent = 'Please select an image smaller than 1 MB.';
            return;
        }

        // If both type and size are valid, submit the form
        this.submit();
    });
});