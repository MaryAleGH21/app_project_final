Product.destroy_all

products = [
    { name_product: "Bistec de Res", price: 5000},
    { name_product: "Costilla de Res", price: 5000},
    { name_product: "Trozos Especiales de Res", price: 5000},
    { name_product: "Bistec de Cerdo", price: 5000},
    { name_product: "Chuleta de Cerdo ", price: 5000},
    { name_product: "Costilla de Cerdo", price: 5000},
    { name_product: "Filete de Pollo", price: 5000},
    { name_product: "Salchichon", price: 5000} 
]

products.each do |product| 
    prod = Product.create! name_product: product[:name_product], price: product[:price]
end
