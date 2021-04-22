Customer.destroy_all

customers = [
    { name: "Jordan ", last_name: "Sandoval", telephone:"84869690", address:"Orotina, 4 esquinas."},
    { name: "Alejandra", last_name: "Serrano", telephone:"84879395",address:"Orotina, 4 esquinas."},
    { name: "Carmen", last_name: "Gonzalez", telephone:"83869659",address:"Orotina, 4 esquinas."},
    { name: "Rafael", last_name: "Sandoval", telephone:"818093298",address:"Orotina, 4 esquinas."},
    { name: "Lucia", last_name: "Sandoval", telephone:"84833691",address:"Orotina, 4 esquinas."},
    { name: "Brayan", last_name: "Gonzalez", telephone:"83868693",address:"Orotina, 4 esquinas."},
    { name: "Carlos", last_name: "Solis", telephone:"81865692",address:"Orotina, 4 esquinas."},
    { name: "Yannin", last_name: "Mora", telephone:"82869655",address:"Orotina, 4 esquinas."},
    { name: "Marcela", last_name: "Brenes", telephone:"86369676",address:"Orotina, 4 esquinas."},
    { name: "Oscar", last_name: "Vega", telephone:"89969654",address:"Orotina, 4 esquinas."},
    { name: "Erick", last_name: "Ramos", telephone:"82149654",address:"Orotina, 4 esquinas."},
    { name: "Javier", last_name: "Quesada", telephone:"86459694",address:"Orotina, 4 esquinas."}
]

customers.each do |customer| 
    customer = Customer.create! name: customer[:name], last_name: customer[:last_name], telephone: customer[:telephone], address: customer[:address]
end
