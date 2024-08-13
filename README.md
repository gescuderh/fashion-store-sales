# fashion-store-sales

En este proyecto se utiliza el siguiente dataset obtenido de Kaggle 👉​ https://www.kaggle.com/datasets/zeesolver/consumer-behavior-and-shopping-habits-dataset/data?select=shopping_behavior_updated.csv.

Este dataset proporciona información completa sobre las preferencias, tendencias y patrones de los consumidores durante sus experiencias de compra. En este dataset se incluye una amplia gama de variables, incluyendo información demográfica, historial de compras, preferencias de productos o frecuencia de compra. A través del análisis de estas variables podemos ayudar a la dirección de la tienda a diseñar estrategias de marketing específicas, optimizar las ofertas de productos, mejorar la satisfacción general del cliente e impulsar las ventas.

El dataset consta de 3.900 registros donde cada registro es una compra realizada por un consumidor. En este ejemplo, cada registro corresponde a un consumidor diferente por lo que contamos con 3.900 consumidores y cada uno de ellos adquiere un único producto.

## Glosario de conjunto de datos (por columnas):

Edad: la edad del cliente, que proporciona información demográfica para la segmentación y las estrategias de marketing dirigidas.

Género: la identificación de género del cliente, una variable demográfica clave que influye en las preferencias de productos y los patrones de compra.

Artículo comprado: el producto o artículo específico seleccionado por el cliente durante la transacción.

Categoría: la clasificación o el grupo amplio al que pertenece el artículo comprado (por ejemplo, ropa, productos electrónicos, comestibles).

Monto de la compra (USD): el valor monetario de la transacción, expresado en dólares estadounidenses (USD), indica el costo del artículo o los artículos comprados.

Ubicación: la ubicación geográfica donde se realizó la compra, que ofrece información sobre las preferencias regionales y las tendencias del mercado.

Talla: la especificación de talla (si corresponde) del artículo comprado, relevante para prendas de vestir, calzado y ciertos bienes de consumo.

Color: La variante o elección de color asociada con el artículo comprado, que influye en las preferencias del cliente y la disponibilidad del producto.

Temporada: La relevancia estacional del artículo comprado (por ejemplo, primavera, verano, otoño, invierno), que afecta la gestión del inventario y las estrategias de marketing.

Calificación de la revisión: Una evaluación numérica o cualitativa proporcionada por el cliente con respecto a su satisfacción con el artículo comprado.

Estado de la suscripción: Indica si el cliente ha optado por un servicio de suscripción, lo que ofrece información sobre su nivel de lealtad y potencial de ingresos recurrentes.

Tipo de envío: Especifica el método utilizado para entregar el artículo comprado (por ejemplo, envío estándar, entrega exprés), lo que influye en los tiempos y costos de entrega.

Descuento aplicado: Indica si se aplicaron descuentos promocionales a la compra, lo que arroja luz sobre la sensibilidad al precio y la efectividad de la promoción.

Código promocional utilizado: Indica si se utilizó un código promocional o cupón durante la transacción, lo que ayuda a evaluar el éxito de la campaña de marketing.

Compras anteriores: Proporciona información sobre la cantidad o frecuencia de compras anteriores realizadas por el cliente, lo que contribuye a la segmentación de clientes y las estrategias de retención.

Método de pago: especifica el modo de pago empleado por el cliente (por ejemplo, tarjeta de crédito, efectivo) y ofrece información sobre las opciones de pago preferidas.

Frecuencia de compras: indica la frecuencia con la que el cliente realiza actividades de compra, una métrica fundamental para evaluar la lealtad del cliente y el valor de por vida.

## Análisis SQL

Para analizar el dataset en MySQL y proporcionar información valiosa a la dirección de la tienda he propuesto las siguientes preguntas: (Descarga el archivo .sql en el siguiente enlace 👉​

⭐​ Cantidad de registros

⭐​ Cantidad de clientes Hombre

⭐​ Cantidad de clientes Mujer

⭐​ Edad media de los clientes Hombre

⭐​ Edad media de los clientes Mujer

⭐​ Productos vendidos por categoria de producto

⭐​ Ventas totales por tipo de producto

⭐​ Productos comprados por género

⭐​ Productos más vendidos por género

⭐​ Ventas totales en (USD)

⭐​ Ventas totales en (USD) por categoria de producto

⭐​ Ventas totales en (USD) por producto

⭐​ Ventas totales en (USD) por género

⭐​ Clientes por Localidad

⭐​ Ventas totales en (USD) por localidad

⭐​ Ventas totales según temporada

⭐​ Ventas totales en (USD) según temporada

⭐​ Método de pago más utilizado

⭐​ Cantidad de clientes suscritos y no suscritos

⭐​ Cantidad de compras utilizando códigos promocionales

⭐​ Cantidad de compras con descuento aplicado

⭐​ Productos vendidos por tipo de envío

⭐​ Frecuencia de compras

⭐​ Productos vendidos por color

⭐​ Productos vendidos por talla

⭐​ Rating medio de nuestros productos

⭐​ Rating medio por producto ordenad en orden decreciente

⭐​ Cantidad de productos vendidos por categoría y rangos de edad

⭐​ Cantidad de productos vendidos por tipo de producto y rangos de edad

⭐​ Cantidad de clientes por rango de edad

⭐​ Cantidad de clientes por rango de edad y gasto medio

⭐​ Cantidad de ventas por categoría de producto según Localidad del consumidor

⭐​ TOP100 Clientes con mayor gasto

⭐​ TOP 3 más comprado por categoría

## Análisis PowerBI

A partir del análisis realizado en MySQL he procedido a la creación de un dashboard específico para las ventas, otro para los clientes y otro para los productos mediante PowerBI de manera que en cada dashboard se analicen variables específicas para cada campo de conocimiento y generar esa información valiosa para la dirección de la tienda.

Para obtener las visualizaciones necesarias se ha utilizado lenguaje DAX tanto básico como complejo, se ha creado una nueva columna para solucionar un problema con la columna Review Rating ya que al importar nuestro archivo .csv el tratamiento del tipo de dato no era el correcto y se ha aplicado un formato condicional a las visualizaciones en función del filtro de género aplicado (Hombre/Mujer).

Cada visualización dispone de unos filtros determinados para filtrar los resultados:
- **ANÁLISIS DE VENTAS**: disponemos de filtro de género, filtro de temporada y filtro de categoría de producto.
  
  ![Screenshot del dashboard Análisis de Ventas](https://gyazo.com/1cbbb10faf9e510d0ca788455299c531)
  
- **ANÁLISIS DE CLIENTES**: disponemos de filtro de género.
  
  ![Screenshot del dashboard Análisis de Ventas](https://gyazo.com/17dac6e4dea699d95332f24a69f083f4)
  
- **ANÁLISIS DE PRODUCTOS**: disponemos de filtro de género, filtro de temporada, filtro de categoría de producto y filtro por producto.
  
  ![Screenshot del dashboard Análisis de Ventas](https://gyazo.com/04affb89cdd7f469f881618b7566a9c0)

Puedes descargar el proyecto realizado en PowerBI a través del siguiente enlace 👉​

## Insights

- **ANÁLISIS DE VENTAS**:
Se han realizado un total de 3.900 ventas con un beneficio de 233.081 (USD) de las cuales 2.652 corresponden a clientes Hombre.

La categoría de producto que más ventas ha obtenido es "Clothing" y las 3 localidades desde donde más nos compran han sido Montana, California e Idaho aunque Illinois que se sitúa en 4ª posición es la 2ª localidad que mayor beneficio aporta al total obtenido.

Los tres productos más vendidos han sido "Blouse", "Jewelry" y "Pants" con 171 unidades vendidas.

Las mujeres no han utilizado ningún código promocional para obtener descuento en sus compras mientras que en los hombres, de las 2.652 ventas se ha aplicado un código promocional para obtener descuento en 1.677 compras. El producto más comprado por los hombres ha sido "Pants" mientras que las mujeres han optado por "Blouse".

La temporada donde se han realizado un número de ventas mayor ha sido en Primavera con 999 ventas y la que menos Verano con 955.

- **ANÁLISIS DE CLIENTES**:

