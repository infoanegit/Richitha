$(document).ready(function() {
    $('form').submit(function(e) {
        e.preventDefault();
        var first_name = $('#fname').val();
        var last_name = $('#lname').val();
        var email = $('#email').val();
        var password = $('#pswd1').val();
        var pswd = $('#pswd2').val();
        var gender = $('#gender').val();
        var checkbox = $('#checkbox ').val();
        var age = $('#age').val();
        var bio = $('#bio').val();
        $(".error").remove();
    
        if (first_name.length < 1) {
            $('#fname').after('<span class="error">Enter Your First-Name</span>');
        }
        if (last_name.length < 1) {
            $('#lname').after('<span class="error">Enter Your Last-Name</span>');
        }
        if (email.length < 1) {
            $('#email').after('<span class="error">Enter a valid email</span>');
        } else {
            var regEx =  /^\b[A-Z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b$/i;
            var validEmail = regEx.test(email);
            if (!validEmail) {
            $('#email').after('<span class="error">Enter a valid email</span>');
            }
        }
        if (password.length < 8) {
            $('#pswd1').after('<span class="error">Password must be at least 8 characters long</span>');
        }
        if (pswd.length < 1) {
            $('#pswd2').after('<span class="error">Enter Confirm Password</span>');
        }
        else{
            var pw1 = document.getElementById("pswd1").value;  
            var pw2 = document.getElementById("pswd2").value;  
            if(pw1 != pw2)  {
                $('#pswd2').after('<span class="error">Password did not match</span>');
            }
        }
        if( $('#radio').is(':checked') ){
            $('#dis').after('<span class="error">Please choose a gender</span>');
        }
        if( $('#checkbox').is(':checked') ){
            alert("");
        }
        if (age.length < 1) {
            $('#age').after('<span class="error">This field is required</span>');
        }
        if (bio.length < 1) {
            $('#bio').after('<span class="error">This field is required</span>');
        }
    });
});