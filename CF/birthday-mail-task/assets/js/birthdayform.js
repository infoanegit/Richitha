$(document).ready(function() {
    $("#myForm").submit(function(event) {
        let isValid = true;

        // Validate name
        let name = $("#name").val();
        if (name.length < 1) {
            $("#nameError").text("Birthday Celebrant Name is required.");
            isValid = false;
        } else {
            $("#nameError").text("");
        }

        // Validate email
        let email = $("#email").val();
        if (!isValidEmail(email)) {
            $("#emailError").text("Please fill the email address.");
            isValid = false;
        } else {
            $("#emailError").text("");
        }

        let comment = $("#comment").val();
        if (comment.length < 1) {
            $("#commentError").text("Please enter your wishes to Birthday Celebrant");
            isValid = false;
        } else {
            $("#commentError").text("");
        }

        let file = $("#image").val();
        if (!file) {
            $("#imageError").text("Please upload an image.");
            isValid = false;
        } else {
            let fileExtension = file.split('.').pop().toLowerCase();
            if (fileExtension !== "jpg" && fileExtension !== "jpeg" && fileExtension !== "png" && fileExtension !== "gif") {
                $("#imageError").text("Invalid file type. Please upload a JPG, JPEG, PNG, or GIF image.");
                isValid = false;
            } else {
                $("#imageError").text("");
            }
        }

        if (!isValid) {
            event.preventDefault();
        }
    });

    function isValidEmail(email) {
        // Simple email validation
        return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
    }
});