$(document).ready(function() {
    $("#ipAddress").on("input", function() {
        var inputValue = $(this).val();
            if (inputValue.trim() === "") {
                $("#errorText").text("Please Enter IP Address");
            } else {
                $("#errorText").text("");
             }
    });
    $("#myForm").on("submit", function(e) {
        var inputValue = $("#ipAddress").val();
        if (inputValue.trim() === "") {
            e.preventDefault();
            $("#errorText").text("Please Enter IP Address");
        }
    });
});