$(function(){

var create_style = function () {
  var name = $('#name').val();
  var shoe = $('#shoe').val();
  var beard = $('#beard').val();
  var drink = $('#drink').val();
  var browser = $('#browser').val();
  var token = $('input[name=authenticity_token]').val() //required to pass in so rails doesn't think you are hacker

  $.ajax({
      dataType: 'json',
      type: "POST", //sending info to rails means using post instead of get - this requires a create method
      url: "/styles", //the url we are sending to rails
      data: {'authenticity_token': token, 'name':name, 'shoe':shoe, 'beard':beard, 'drink':drink, 'browser':browser}  //need to send to rails a JSON object of the values we created for style
    }).done(function( msg ) {
      alert( "Data Saved: " + msg );
    });

      return false;
    };

var new_style = function () {
if ($('.form').is(':hidden'))
    toggle_form();

 $('#create_style').show();
//  $('#update_style').hide(); //need to do this function still
}

 var toggle_form = function () {
 $('#new_style').toggle();
$('.form').toggleClass('invisible');

clear_form();

return false;
 }

var clear_form = function () {
     // Clear out the form values.
     $('#name').val('');
     $('#shoe').val('');
     $('#beard').val('');
     $('#drink').val('');
     $('#browser').val('');
   }


$('#cancel_style').click(toggle_form);
$('#create_style').click(create_style);


})