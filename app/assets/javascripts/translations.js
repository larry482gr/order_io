$(document).ready(function() {
  $('input.translate-input').on('change', function() {
    if($(this).val().length == 0) {
        return;
    }

    var fields = {};
    fields[$(this).data("field")] = $(this).val();
    $.ajax({
      url: "/translations",
      type: "post",
      dataType: "json",
      data: {
              translation: {
                  table_name: $(this).data("table"),
                  reference_id: $(this).data("reference"),
                  locale: $(this).data("locale"),
                  fields: fields
              }
            },
      success: function(result) {
        console.log(result);
      },
      error: function(result) {
        console.log(result);
      }
    });
  });
});
