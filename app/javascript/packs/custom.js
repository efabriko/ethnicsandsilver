
// Below jQuery functionnalities to fade out the alert message
$(document).on('turbolinks:load', function(){
    $( "div.alert" ).delay( 2000 ).fadeOut( 1000 );
})
