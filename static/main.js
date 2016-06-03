'use strict'

$(document).ready(function(){

    $.get("/ping", function(data){
        if(data.error == "true"){
            $("#results").prepend("<div class='alert alert-danger'><strong>Error!</strong> "+ data.message +"</div>");
        }
    }, "json")

    $.get("/query1", function(data){
        $("#firstQuery").append(data);
    }, "html")
        .then(() => { // callback function, do not execute until $.get completes
            $(".btn").click(function(e){

                console.log("CLICKED");

                $.get("/edit", function(data){

                    console.log(data.dogName);
                    document.getElementById('name').value = data.dogName;
                    document.getElementById('location').value = data.shelterName;
                    document.getElementById('weight').value = data.weight;
                    document.getElementById('age').value = data.age;
                    document.getElementById('breed').value = data.breed;
                    document.getElementById('license').value = data.petLicense;

                }, "json")


             });
        })

        $.get("/location", function(data){
         //   .then(() => {
         //
         //  })
        })

    $.get("/query2", function(data){
        $("#secondQuery").append(data);
    }, "html")
