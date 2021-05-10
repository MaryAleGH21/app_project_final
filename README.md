# README
Nombre del proyecto: Registro de Préstamos basado en la compra de productos.

Introducción:
El proyecto se basa en solucionar algunos problemas administrativos que se presentan en un negocio de una carnicería que lleva mucho tiempo en el mercado y, a los clientes de confianza o fieles al negocio, se les da un un servicio extra que consiste en que, puedan adquirir los productos de manera “fiada” o a créditos, y cada fin de mes o fecha de pago, llegan a realizar los pagos u abonos correspondientes al monto que adeudan. Los clientes son administrados en una página de Excel, que contiene fecha, nombre del cliente, cantidad que lleva por día, saldo total, saldo de abono, cantidad total. No obstante, estos registros desde Excel en ocasiones genera problemas porque no hay un control con los clientes a los que se otorgan préstamos, y se borran registros o archivos con los datos de los clientes.

El objetivo de la aplicación es facilitar el manejo administrativo del negocio, generando un mayor orden con los préstamos y abonos que los clientes solicitan, y con con el registro de los datos de los clientes. 

Dependencias:

La aplicación es creada con Ruby version 2.7.2 

Se utiliza la Rails versión 6.1.3

La gem devise se instala para roles o permisos a los administradores.

Se hace uso de la gema chartkick y groupdate para la realizar y mostrar el balance préstamos de clientes en gráficos.

Se instala gem bullet para corregir las queries N + 1 y de esta manera mejorar eficiencia de la página web.

Creación Base de Datos:

El proyecto se crea con postgresql por ello se debe aplicar los siguientes comando pata inicializar la base de datos:
  * rails db:create
  * rails db:migrate

Una vez inicializada la base de datos se procede a crear los modelos que, para el caso de esta aplicación ocupa seis que se definirá a continuación:

 * Admin: Este modelo se crea con la gem devise y es únicamente para administradores los cuales tienen que loguearse para poder acceder a la información y modificar datos en la app.
 * Customers: En el modelo clientes se encuentran los registros de cada uno de los clientes.
 * Payments: Este modelo refleja los pagos-abonos que realizan los clientes a los préstamos. 
 * Loans: En este modelo se encuentran los préstamos que los clientes obtienen según la cantidad y el precio de producto. 
 * Products: Contiene la cantidad y el precio de los productos.
 * Loans-products: En este modelo se encuentra una tabla intermedia donde se relacionan los productos y los préstamos.

Luego, para instalar la app en el computador se debe ejecutar los siguientes comandos:

* bundle install
* yarn install

Finalmente, para levantar el servidor se ejecuta el siguiente comando:

* rails s


