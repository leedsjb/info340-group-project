'use strict'

$(function(){
    $.get("/ping", function(data){
        if(data.error == "true"){
            $("#results").prepend("<div class='alert alert-danger'><strong>Error!</strong> "+ data.message +"</div>");
        }
    }, "json")

    $.get("/query1", function(data){
        $("#firstQuery").append(data);
    }, "html")

    $.get("/query2", function(data){
        $("#secondQuery").append(data);
    }, "html")

    $.get("/query3", function(data){
        $("#thirdQuery").append(data);
    }, "html")

    // $("#clickMe").click(function() {
    //     console.log("Clicked! ************");
    // });


    $(document).ready(function() {
        console.log("Loaded!"); 
        $(".clickMe").click(function() {
            console.log("Clicked! ************");
        });
    }); 
})


