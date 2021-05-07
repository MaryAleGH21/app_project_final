$(document).on('turbolinks:load', function(){
  $('[name=q]').on('keyup', function(){
    //filtra
    var q = $(this).val()
    if (q.length > 2){
      $.ajax({
        type: "GET",
        url: "/customers",
        data: { q: q },
        dataType: "script"
      });
    };
    //Libera
    if (q.length == 0){
      $.ajax({
        type: "GET",
        url: "/customers",
        dataType: "script"
      });
    };
  });
    $("#customer_edit").click(function(){
      $('#show_customer').toggle(1000,function() {
          console.log('Ya funca')
      });
    });
});  