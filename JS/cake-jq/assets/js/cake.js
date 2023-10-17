$(document).ready(function () {
    let optradio = 0, flavour = 0,checkbox=0;
        $('input[name="optradio"]').change(function() {
        optradio = parseInt($('input[name="optradio"]:checked').val());
        let sum = optradio + flavour +  checkbox;
        $("#total-amount").text("$"+sum);
});            
$("select.dropdown").change(function() {  
        flavour = parseInt($(("option:selected")).val()); 
        let sum = optradio + flavour +  checkbox;
        $("#total-amount").text("$"+sum);
}); 
$('input[type="checkbox"]').change(function()  {  
        checkbox = parseInt($(('input[type="checkbox"]:checked')).val()); 
        let sum = optradio + flavour +  checkbox;
        $("#total-amount").text("$"+sum);
});
$('input[type="checkbox"]').change(function()  {  
        checkbox = parseInt($(('input[type="checkbox"]:checked')).val()); 
        let sum = optradio + flavour +  checkbox;
        $("#total-amount").text("$"+sum);
});
$(function () {
$("#chkInscription").click(function () {
        if ($(this).is(":checked")) {
        $("#inscription").removeAttr("disabled");
        $("#inscription").focus();
        } 
        else {
            $("#inscription").attr("disabled", "disabled");
        }
        });
    });
});