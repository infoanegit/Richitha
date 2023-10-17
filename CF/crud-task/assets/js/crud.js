 $(document).ready(function() {
    $("#basic-form").validate({
       rules: {
            fname: 'required',
            lname: 'required',
            email: {
                required: true,
                email: true,
                maxlength: 255,
            },
            gender:{
                required:true
            },
            age: {
                required: true, 
                number: true, 
                min: 18,
                max:50
            },
            loc:{
                required:true,
            }
       },
       messages: {
            fname: 'Please enter your FirstName',
            lname: 'Please enter your LastName',
            email: 'Please enter a valid email',
            gender:
            {
            required:"Please choose gender"
            },
            age:
            {
            required:"Please enter your age"
            },
            loc:{
                required:"Please enter your location"
            }
        },
        errorPlacement: function(error, element) 
        {
            if ( element.is(":radio") ) 
            {
                error.appendTo( element.parents('.gender') );
            }
            else 
            { 
                error.insertAfter( element );
            }
         },
        submitHandler: function(form) {
        form.submit(); 
        }
     });
 });

 