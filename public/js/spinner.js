(function($){

    var $_spinner;

    $.showSpinner = function() {
        if(!$('#spinner').is(":visible")){
            $("#spinner").modal({
                show: 'true',
                backdrop: 'static',
                keyboard: false
            });
            $_spinner = $("#spinner");
        }
    }

    $.hideSpinner = function() {
        $_spinner.modal('hide');
    }

})(jQuery);