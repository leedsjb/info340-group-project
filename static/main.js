'use strict'

$(document).ready(function(){

    $.get("/ping", function(data){
        if(data.error == "true"){
            $("#results").prepend("<div class='alert alert-danger'><strong>Error!</strong> "+ data.message +"</div>");
        }
    }, "json")

    $.get("/query1", function(data){

            // TABLE STUFF
            // $('#firstQuery').append('<thead><th>Pet ID</th></thead>');
            $('#firstQuery').append("<th class='text-center'>Name</th><th class='text-center'>Shelter</th>" +
                "<th class='text-center'>Weight</th><th class='text-center'>Age</th><th class='text-center'>Breed</th></thead>");
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

                    var btnId = $(this).attr('id');
                    console.log("BtnId =" + btnId);

                    var fillForm = function(data) {
                        console.log(data);
                        for (var i = 0; i < data.pets.length; i++) {
                            if (data.pets[i].petId == btnId) {
                                console.log(data.pets[i]);
                                document.getElementById('name').value = data.pets[i].dogName;
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



        $.get("/location", function(data){
         //   .then(() => {
         //
         //  })
        })

    $.get("/query2", function(data){
        $("#secondQuery").append(data);
    }, "html")

    // $.get("/query3", function(data){
    //     $("#thirdQuery").append(data);
    // }, "html")
});
