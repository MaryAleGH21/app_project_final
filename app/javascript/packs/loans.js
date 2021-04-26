document.addEventListener('DOMContentLoaded', function(){
var boton = document.querySelector('#add_product')
var count = 0
boton.addEventListener('click', function(event){
  event.preventDefault()
  count++ 
  addProductFields(count)
})
})

function addProductFields(count){
  var product_form = document.querySelector('#product_fields')
  var fields = `  <div>
                                        <div class="field">
                                          <label for="loan_loan_products_attributes_${count}_product_id">Product</label>
                                          <select name="loan[loan_products_attributes][${count}][product_id]" id="loan_loan_products_attributes_0_product_id"><option value="">Seleccione un producto</option>
<option value="9">Bistec de Res</option>
<option value="10">Costilla de Res</option>
<option value="11">Trozos Especiales de Res</option>
<option value="12">Bistec de Cerdo</option>
<option value="13">Chuleta de Cerdo </option>
<option value="14">Costilla de Cerdo</option>
<option value="15">Filete de Pollo</option>
<option value="16">Salchichon</option>
<option value="25">Chicharrones</option>
<option value="27">Bisteeeeek</option></select>
                                        </div>

                                        <div class="field">
                                          <label for="loan_loan_products_attributes_${count}_product_quantity">Product quantity</label>
                                          <input type="text" value="1.0" name="loan[loan_products_attributes][${count}][product_quantity]" id="loan_loan_products_attributes_0_product_quantity" />
                                        </div>
                                      </div>`
  var div = document.createElement('div')
  div.innerHTML = fields
  product_form.appendChild(div)
}
