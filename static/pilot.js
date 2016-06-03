$(document).ready(function(){
   $("#show").click(function() {
     $("#secondQuery").toggle();
     console.log($("#zipcode").val())
     console.log($("#distance").val())
   });
});
