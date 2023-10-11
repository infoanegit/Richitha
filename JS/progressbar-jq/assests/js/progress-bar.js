$(document).ready(function() {
    var progressBar = $(".progress-bar");
    var incrementBtn = $("#increment-btn");
    var decrementBtn = $("#decrement-btn");

    var currentWidth = 0;
    var incrementAmount = 10;
    var decrementAmount = 10;

    incrementBtn.click(function() {
        if( currentWidth<100){
            currentWidth += incrementAmount;
            $("#progress-label").text( currentWidth+'%');
            progressBar.css("width", currentWidth +"%");
        }
        else{
            alert('You Reached max-limit - ' + currentWidth +"%");
        }
    });

    decrementBtn.click(function() {
        if( currentWidth>0){
            currentWidth -= decrementAmount;
            $("#progress-label").text( currentWidth+'%');
            progressBar.css("width", currentWidth + "%");
        }
        else{
            alert('You Reached min-limit - ' + currentWidth +"%");
        }
    });
});