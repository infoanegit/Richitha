function selectAll(){
    var items=document.getElementsByName('check_list');
        for(var i=0; i<items.length; i++){
            if(items[i].type=='checkbox')
                items[i].checked=true;
            }
        }
function UnSelectAll(){
  var items=document.getElementsByName('check_list');
        for(var i=0; i<items.length; i++){
            if(items[i].type=='checkbox')
                items[i].checked=false;
            }
        }	
function  Toggle(){
  var items=document.getElementsByName('check_list');
        for(var i=0; i<items.length; i++){
            if(items[i].type=='checkbox'){
                if(items[i].checked==true){
        items[i].checked=false;
      }
      else 
        if(items[i].checked==false){
          items[i].checked=true;
      }
    }
  }
}