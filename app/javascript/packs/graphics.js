$( document ).on('turbolinks:load', function() {
  $("#graphics").click(function(){
      $('#mostrar-graficos').toggle(1000,function() {
      });
  });
});