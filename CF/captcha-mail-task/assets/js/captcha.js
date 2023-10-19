function validateUsername(username) {
    var usernameRegex = /^[A-Za-z0-9_]+$/;
    return usernameRegex.test(username);
}
function validateEmail(email) {
    var emailRegex = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/;
    return emailRegex.test(email);
}
function validateCaptcha(captcha) {
    var captchaRegex = /^[A-Za-z0-9_]+$/;
    return captchaRegex.test(captcha);
}

$(document).ready(function() {
    $('#validation-form').submit(function(e) {
		var username = $('#username').val();
		var email = $('#email').val();
		var captcha = $('#captcha').val();

      	$('.error').text('');

      	var isValid = true;

			if (!validateUsername(username)) {
				isValid = false;
				$('#username-error').text('Please enter username');
			}
			if (!validateEmail(email)) {
				isValid = false;
				$('#email-error').text('Please enter email');
			}
			if (!validateCaptcha(captcha)) {
				isValid = false;
				$('#captcha-error').text('Please enter captcha');
			}
      if (!isValid) {
        e.preventDefault(); // Prevent form submission
     		 }
    	});
  });