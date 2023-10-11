var array = [];
    function replaceFunction() {
        element = document.getElementById("input1").value;
            var array = element.split(',');
                document.getElementById("output1").innerText = "Given Array : " + array.toString();
                    position = document.getElementById("input2").value;
                    replace = document.getElementById("input3").value;
            let text = document.getElementById("input2").value;
                if ( isNaN(text)||text <  1||text > array.length) {
                let displayError = "The position value is with in the range of an array";
                alert(displayError);
                }
                    array.splice(position-1 , 1, replace);
                    document.getElementById("output2").innerText = "Modified Array : " + array.toString();
                   return false;
}
    function resetFunction(){
    document.getElementById("form").reset();
}