$(document).ready(function() {
    $('.price-check').on('change', function(){
        if($(this).is(':checked')) {
            $(this).parent().parent().next().prop('disabled', false);
        } else {
            $(this).parent().parent().next().prop('disabled', true);
        }
    });
});
