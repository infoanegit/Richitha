$(document).ready(function(){
    $(document).on("click", ".div", function (event){
    event.stopImmediatePropagation();
        var color = $(this).css('background-color');
        var id = $(this).attr('id');
            if($("#bg-color").attr('data-id') == "")
            {        
                $("#bg-color").attr('data-id',id);
                $("#bg-color").attr("data-color",color);
            }
            else
            {
                $(this).css('background-color',$("#bg-color").attr("data-color"))
                var divId = $("#bg-color").attr("data-id")
                $(`#${divId}`).css("background-color", color);
                $("#bg-color").attr('data-id',"");
                $("#bg-color").attr("data-color",""); 
            }
    });

});