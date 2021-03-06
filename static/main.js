'use strict'

$(document).ready(function(){

    $.get("/ping", function(data){
        if(data.error == "true"){
            $("#results").prepend("<div class='alert alert-danger'><strong>Error!</strong> "+ data.message +"</div>");
        }
    }, "json")

    var btnId;

    $.get("/query1", function(data){

        $('#firstQuery').append("<thead><tr><th>Name</th><th>Shelter</th>" +
            "<th>Weight</th><th>Age</th><th>Breed</th></tr></thead>");
        $('#firstQuery').append("<tbody>");

        $.each(data.pets, function(i, item) {
            // var row = '<tr><td>'+item.petId+'</td>'
            var row = '<tr><td>'+item.dogName+'</td>'
            +'<td>'+item.shelterName+'</td>'
            +'<td>'+item.weight+'</td>'
            +'<td>'+item.age+'</td>'
            +'<td>'+item.breed+'</td>'
            +'<td><button id="'+item.petId+'" class="btn btn-primary">Edit</button></td>'
            +'</tr>';
            $('#firstQuery').append(row);
        })

        $('#firstQuery').append("</tbody>");

    }).then(function(data) {
        $(".btn").click(function(e){

            btnId = $(this).attr('id'); // GLOBAL VARIABLE
            console.log("BtnId =" + btnId);

            // define function to fill form
            var fillForm = function(data) {
                console.log(data);
                for (var i = 0; i < data.pets.length; i++) { // loop over each pet retrieved from the DB
                    if (data.pets[i].petId == btnId) { // look for the petId matching the edit button that was clicked
                        console.log(data.pets[i]);
                        document.getElementById('name').value = data.pets[i].dogName; // fill the corresponding form field
                        document.getElementById('location').value = data.pets[i].shelterName;
                        document.getElementById('weight').value = data.pets[i].weight;
                        document.getElementById('age').value = data.pets[i].age;
                        document.getElementById('breed').value = data.pets[i].breed;
                        document.getElementById('license').value = data.pets[i].petLicense;
                    }
                }
            };

            fillForm(data);

            var handleClicks = function(e) {
                $.get("/edit?buttonId=" + btnId, fillForm, "json");
            }

            $('btn').click(handleClicks)

        });
    }, "json")

    // event listener for dog edit form submit button
    $("#dog-edit-submit").click(function(){

      console.log("***!***");
      console.log(btnId);

      // build struct from updates made to form
      var formfields = {
        name: $("#name").val(),
        location: $("#location").val(),
        weight: $("#weight").val(),
        age: $("#age").val(),
        breed: $("#breed").val(),
        license: $("#license").val(),
        pet_id: btnId,
      }

      console.log(formfields);
      callGo(formfields);

    });


    function callGo(formfields){

      $.post("/dog-edit", formfields)
        .done(function(data){
            // if(data.result == "failed"){
            //     console.log(data)
            //     $("#result"+index).text("Failed to login! " + data.message);
            // } else {
            //     console.log(data)
            //     $("#result"+index).text("Logged in as: " + data.username + (data.randomCode ? " (CODE: " + data.randomCode + ")" : ""));
            // }
        }.then(location.reload()));

    };

    $.get("/query2", function(data){
        $("#secondQuery").append(data);
    }, "html")

    // $.get("/query3", function(data){
    //     $("#thirdQuery").append(data);
    // }, "html")
});
