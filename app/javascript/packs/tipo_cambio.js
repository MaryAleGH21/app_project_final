document.addEventListener('turbolinks:load', () => {
 
  var compra = document.querySelector("#compra")
  var venta = document.querySelector("#venta");
  var fecha = document.querySelector("#fecha");
    
  fetch('https://tipodecambio.paginasweb.cr/api')
  .then(respuesta => respuesta.json())
  .then(divisas => {
    const precioCompra = divisas.compra;
    const precioVenta = divisas.venta;
    const fechaActual = divisas.fecha;
    compra.textContent = precioCompra;
    venta.textContent = precioVenta;
    fecha.textContent = fechaActual;
  }); 
})
