var Script = function () {

    $.validator.setDefaults({
        submitHandler: function() { alert("submitted!"); }
    });

    $().ready(function() {
        // validate signup form on keyup and submit
        $("#plantilla_form").validate({
            rules: {
                unidad_negocio: {
                    required: true
                },
                tipo_empleado: {
                    required: true
                },
                nombre: {
                    required: true,
                    minlength: 5
                },
                descripcion: {
                    required: true,
                    minlength: 5
                }
            },
            messages: {
                unidad_negocio: {
                    required: "Elija una Unidad de Negocio."
                },
                tipo_empleado: {
                    required: "Elija un tipo de empleado."
                },
                nombre: {
                    required: "Ingrese un nombre para la plantilla.",
                    minlength: "El nombre de la plantilla debe contener al menos 5 carácteres."
                },
                descripcion: {
                    required: "Please provide a password.",
                    minlength: "La descripción debe contener al menos 5 carácteres."
                }
            }
        });

        // propose username by combining first- and lastname
        $("#username").focus(function() {
            var firstname = $("#firstname").val();
            var lastname = $("#lastname").val();
            if(firstname && lastname && !this.value) {
                this.value = firstname + "." + lastname;
            }
        });

        //code to hide topic selection, disable for demo
        var newsletter = $("#newsletter");
        // newsletter topics are optional, hide at first
        var inital = newsletter.is(":checked");
        var topics = $("#newsletter_topics")[inital ? "removeClass" : "addClass"]("gray");
        var topicInputs = topics.find("input").attr("disabled", !inital);
        // show when newsletter is checked
        newsletter.click(function() {
            topics[this.checked ? "removeClass" : "addClass"]("gray");
            topicInputs.attr("disabled", !this.checked);
        });
    });


}();