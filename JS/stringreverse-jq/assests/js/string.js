$(document).ready(function(){
    $("#givenString").click(function(){
        var str = $("#string").val();
        if(str==""){
            alert("String can't be empty");
        }
        else{          
        var reverse=str.split('').reverse().join('');
        var reverseString= "Reversed string : " + reverse;
            $("#output").text(reverseString);
            $("#input").text("Given string : " + str);
            return false;
            }
        });
    $('#configreset').click(function(){
        $('#configform')[0].reset();
    });
});