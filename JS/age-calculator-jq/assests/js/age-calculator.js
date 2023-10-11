
$(document).ready(function () {
    var weekday = ["Sunday","Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" ];
    const months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
        $('#myBtn').click(function () {
            var date = $('#givenInput').val();
                var d = new Date(date);
                var today = new Date();
                var age = Math.floor((today - d) / (365.25 * 24 * 60 * 60 * 1000));
                
                if (today.getDate() >= d.getDate()) {
                    var days = today.getDate() - d.getDate();
                }
                else {
                    month--
                    var days = 31 + today.getDate() - d.getDate();
                }
                if (today.getMonth() >= d.getMonth()) {
                    var month = today.getMonth() - d.getMonth();
                }
                else {
                    days--;
                    var month = 12 + today.getMonth() - d.getMonth();                }
                if (month < 0) {
                month = 11;
                    age--;
                }
            $('#givenDate').text("you were born on " + weekday[d.getDay()] + " " + months[d.getMonth()] + " " + [d.getDate()] + " " + d.getFullYear());
            $('#givenDate1').text("you are" + age + "years " + month + "months " + days + "days old");

        });

    });

