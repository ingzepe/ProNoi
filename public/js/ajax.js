(function ($) {

  $.executePost = function (postModel, sync, hideSpinner) {
    if (!hideSpinner) {
      $.showSpinner();
    }
    var request = $.ajax({
      url: postModel.action,
      method: postModel.method,
      data: postModel.data,
      async: sync !== 1,
      //contentType:"application/json; charset=utf-8",
      dataType: postModel.dataType
    });
    request.done(function (response) {
      if (!hideSpinner) {
        $.hideSpinner();
      }
      if (response.status) {
        if (typeof response.data === "string") {
          response.data = JSON.parse(response.data);
        }
        if (postModel.successMsg) {
          $.showMsg("success", postModel.successMsg, postModel.success(response.data));
        }else{
          postModel.success(response.data);
        }
      } else {
        if (response.message) {
          $.showMsg("error", response.message);
        } else if (postModel.errorMsg) {
          $.showMsg("error", postModel.errorMsg);
        } else {
          $.showMsg("error", "Ocurrió un error en la transacción.");
        }
      }
    });
    request.fail(function (jqXHR, textStatus) {
      if (!hideSpinner) {
        $.hideSpinner();
      }
      $.showMsg("error", jqXHR.responseText);
    });
  }

  $.executePostValid = function (postModel) {
    postModel.data = $(postModel.form).serialize();
    //console.log($(postModel.form).valid());
    if ($(postModel.form).valid() && $(postModel.form).valid()) {
      $.executePost(postModel);
    }
  }

  $.preparePostValid = function (postModel) {
    $(postModel.btn).click(function (e) {
      $.executePostValid(postModel);
    });
  }

  $.executeFetch = function (postModel) {
    $.executePost(postModel);
  }

  $.executeSyncFetch = function (postModel) {
    $.executePost(postModel, 1, true);
  }

})(jQuery);