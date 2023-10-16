$(document).ready(function() {
    $("#basic-form").validate({
       rules: {
            username: 'required',
            pwd: 'required',
       },
       messages: {
            username: 'Please enter your UserName',
            pwd: 'Please enter your Password',
        },
        submitHandler: function(form) {
        form.submit(); 
        }
     });
 });

 