function initializeJS() {

  //tool tips
  jQuery('.tooltips').tooltip();

  //popovers
  jQuery('.popovers').popover();

  //custom scrollbar
  //for html
  jQuery("html").niceScroll({
    styler: "fb",
    cursorcolor: "#007AFF",
    cursorwidth: '6',
    cursorborderradius: '10px',
    background: '#F7F7F7',
    cursorborder: '',
    zindex: '1000'
  });
  //for sidebar
  jQuery("#sidebar").niceScroll({
    styler: "fb",
    cursorcolor: "#007AFF",
    cursorwidth: '3',
    cursorborderradius: '10px',
    background: '#F7F7F7',
    cursorborder: ''
  });
  // for scroll panel
  jQuery(".scroll-panel").niceScroll({
    styler: "fb",
    cursorcolor: "#007AFF",
    cursorwidth: '3',
    cursorborderradius: '10px',
    background: '#F7F7F7',
    cursorborder: ''
  });

  //sidebar dropdown menu
  jQuery('#sidebar .sub-menu > a').click(function () {
    var last = jQuery('.sub-menu.open', jQuery('#sidebar'));
    jQuery('.menu-arrow').removeClass('arrow_carrot-right');
    jQuery('.sub', last).slideUp(200);
    var sub = jQuery(this).next();
    if (sub.is(":visible")) {
      jQuery('.menu-arrow').addClass('arrow_carrot-right');
      sub.slideUp(200);
    } else {
      jQuery('.menu-arrow').addClass('arrow_carrot-down');
      sub.slideDown(200);
    }
    var o = (jQuery(this).offset());
    diff = 200 - o.top;
    if (diff > 0)
      jQuery("#sidebar").scrollTo("-=" + Math.abs(diff), 500);
    else
      jQuery("#sidebar").scrollTo("+=" + Math.abs(diff), 500);
  });

  // sidebar menu toggle
  jQuery(function () {
    function responsiveView() {
      var wSize = jQuery(window).width();
      if (wSize <= 768) {
        jQuery('#container').addClass('sidebar-close');
        jQuery('#sidebar > ul').hide();
      }

      if (wSize > 768) {
        jQuery('#container').removeClass('sidebar-close');
        jQuery('#sidebar > ul').show();
      }
    }

    jQuery(window).on('load', responsiveView);
    jQuery(window).on('resize', responsiveView);
  });

  jQuery('.toggle-nav').click(function () {
    if (jQuery('#sidebar > ul').is(":visible") === true) {
      jQuery('#main-content').css({
        'margin-left': '0px'
      });
      jQuery('#sidebar').css({
        'margin-left': '-180px'
      });
      jQuery('#sidebar > ul').hide();
      jQuery("#container").addClass("sidebar-closed");
    } else {
      jQuery('#main-content').css({
        'margin-left': '180px'
      });
      jQuery('#sidebar > ul').show();
      jQuery('#sidebar').css({
        'margin-left': '0'
      });
      jQuery("#container").removeClass("sidebar-closed");
    }
  });

  //bar chart
  if (jQuery(".custom-custom-bar-chart")) {
    jQuery(".bar").each(function () {
      var i = jQuery(this).find(".value").html();
      jQuery(this).find(".value").html("");
      jQuery(this).find(".value").animate({
        height: i
      }, 2000)
    })
  }

  //Default jQuery validator
  $.validator.messages.required = 'Ingrese un valor.';

  if ($("#id_rol_usuario").val() == ROL_ADMINISTRADOR_REPORTES) {
    $(".breadcrumb").children().each(function () {
      var remove = false;
      $(this).children().each(function (index) {
        if (index === 1) {
          //if ($(this).attr("id") == "plantillasBC" || $(this).attr("id") == "plantillaBC") {
          if ($(this).attr("id") == "plantillaBC") {
            remove = true;
          }
        }
      });
      if (remove) {
        $(this).remove();
      }
    });
  }

  //UTILS

  $.inputToDates = function(inputVal){
    var fechas = inputVal.split(" - ");
    var inicio = fechas[0];
    var fin = fechas[1];
    inicio = inicio.split("/");
    fin = fin.split("/");

    var periodoJSON = {
      inicio: {
        dia: inicio[0],
        mes: inicio[1],
        anio: inicio[2]
      },
      fin: {
        dia: fin[0],
        mes: fin[1],
        anio: fin[2]
      }
    };

    inicio = new Date(periodoJSON.inicio.anio, parseInt(periodoJSON.inicio.mes) - 1, periodoJSON.inicio.dia);
    fin = new Date(periodoJSON.fin.anio, parseInt(periodoJSON.fin.mes) - 1, periodoJSON.fin.dia);

    var periodoDate = {
      periodoJSON : periodoJSON,
      inicio: inicio,
      fin: fin
    };

    return periodoDate;

  };

  $.fixCeroDate = function(date, separator){
    var dateFixed = "";
    var dates = date.split(separator);
    for(var i=0; i<dates.length; i++){
      if(dates[i].length < 2){
        dateFixed += "0"+dates[i];
      }else{
        dateFixed += dates[i];
      }
      if(i<dates.length-1){
        dateFixed += "/";
      }
    }
    return dateFixed;
  };

  $.reverse = function(s) {
    return s.split("").reverse().join("");
  };

  $.parseInteger = function(integer) {
    try {
      return parseInt(integer);
    } catch (e) {
      return false;
    }
  };

  $.sortBy = function(property){
    var sortOrder = 1;
    if(property[0] === "-") {
      sortOrder = -1;
      property = property.substr(1);
    }
    return function (a,b) {
      var result = (a[property] < b[property]) ? -1 : (a[property] > b[property]) ? 1 : 0;
      return result * sortOrder;
    }
  };

}

jQuery(document).ready(function () {
  initializeJS();
});

String.prototype.replaceAll = function (find, replace) {
  var str = this;
  return str.replace(new RegExp(find.replace(/[-\/\\^$*+?.()|[\]{}]/g, '\\$&'), 'g'), replace);
};

if (typeof String.prototype.startsWith != 'function') {
  // see below for better implementation!
  String.prototype.startsWith = function (str) {
    return this.indexOf(str) === 0;
  };
}