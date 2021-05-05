$(document).on('turbolinks:load', function(){
  $('[name=q]').on('keyup', function(){
      //filtra
      var q = $(this).val()
      if (q.length > 2){
      $.ajax({
          type: "GET",
          url: "/loans",
          data: { q: q },
          dataType: "script"
      });
      };
      //Libera
      if (q.length == 0){
      $.ajax({
          type: "GET",
          url: "/loans",
          dataType: "script"
      });
      };
  });
});
