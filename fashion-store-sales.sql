USE shopping_trends;

select * from sales;

########################################## CONSULTAS BÁSICAS ##########################################
# Cantidad de registros
select count(*) as "Registros" from sales;

# Cantidad de clientes Hombre
select count(Gender) as "Clientes Hombre"
from sales
where Gender = "Male";

# Cantidad de clientes Mujer
select count(Gender) as "Clientes Mujer"
from sales
where Gender = "Female";

# Edad media de los clientes Hombre
select format(round(avg(Age)),0) as "Edad Media Clientes Hombre"
from sales
where Gender = "Male";

# Edad media de los clientes Mujer
select format(round(avg(Age)),0) as "Edad Media Clientes Mujer"
from sales
where Gender = "Female";

# Productos vendidos por categoria de producto
select category as "Categoría de producto",count(*) as "Productos vendidos"
from sales
group by category
order by 2 desc;

# Ventas totales por tipo de producto
select `Item Purchased` as "Producto", count(*) as "Ventas totales"
from sales
group by `Item Purchased`
order by 2 desc;

# Productos comprados por género
select Gender, count(`Item Purchased`) as "Productos comprados"
from sales
group by Gender;

# Productos más vendidos por género
select Gender, `Item Purchased` as "Producto", count(*) as "Productos comprados"
from sales
group by Gender, `Item Purchased`
order by 1,3 desc;

# Ventas totales en (USD)
select sum(`Purchase Amount (USD)`) as "Ventas totales (USD)"
from sales;

# Ventas totales en (USD) por categoria de producto
select category as "Categoría de producto", sum(`Purchase Amount (USD)`) as "Ventas totales (USD)"
from sales
group by category
order by 2 desc;

# Ventas totales en (USD) por producto
select `Item Purchased` as "Producto", sum(`Purchase Amount (USD)`) as "Ventas totales (USD)"
from sales
group by`Item Purchased`
order by 2 desc;

# Ventas totales en (USD) por género
select Gender, sum(`Purchase Amount (USD)`) as "Ventas totales (USD)"
from sales
group by Gender;

# Clientes por Localidad
select Location as "Localidad", count(*) as "Número de clientes"
from sales
group by Location
order by 2 desc;

# Ventas totales en (USD) por localidad
select Location as "Localidad", sum(`Purchase Amount (USD)`) as "Ventas totales (USD)"
from sales
group by Location
order by 2 desc;

# Ventas totales según temporada
select Season as "Temporada", count(*) as "Productos vendidos"
from sales
group by Season
order by 2 desc;

# Ventas totales en (USD) según temporada
select Season as "Temporada", sum(`Purchase Amount (USD)`) as "Ventas totales (USD)"
from sales
group by Season
order by 2 desc;

# Método de pago más utilizado
select `Payment Method` as "Método de pago", count(*) as "Cantidad de veces utilizado"
from sales
group by 1
order by 2 desc;

# Cantidad de clientes suscritos y no suscritos
select Gender, `Subscription Status` as "Cliente suscrito", count(*) as "Cantidad de clientes"
from sales
group by 1,2;

# Cantidad de compras utilizando códigos promocionales
select Gender, `Promo Code Used` as "Código promocional utilizado", count(*) as "Cantidad de códigos utilizados"
from sales
group by 1,2;

# Cantidad de compras con descuento aplicado
select Gender, `Discount Applied` as "Descuento aplicado", count(*) as "Productos vendidos"
from sales
group by 1,2;

# Productos vendidos por tipo de envío
select `Shipping Type` as "Tipo de envío", count(*) as "Productos vendidos"
from sales
group by 1
order by 2 desc;

# Frecuencia de compras
select `Frequency of Purchases` as "Frecuencia de compras", count(*) as "Cantidad de clientes"
from sales
group by 1
order by 2 desc;

# Productos vendidos por color
select Color, count(*) as "Productos vendidos"
from sales
group by 1
order by 2 desc;

# Productos vendidos por talla
select Size as "Talla", count(*) as "Productos vendidos"
from sales
group by 1
order by 2 desc;

# Rating medio de nuestros productos
select round(avg(`Review Rating`),2) as "Review Rating Medio"
from sales;

# Rating medio por producto ordenad en orden decreciente
select `Item Purchased`, round(avg(`Review Rating`),2) as "Valoracion media"
from sales
group by 1
order by 2 desc;

########################################## CONSULTAS COMPLEJAS ##########################################

# Cantidad de productos vendidos por categoría y rangos de edad
select
	case
		when Age between 15 and 24 then "Entre 15 y 24"
        when Age between 25 and 34 then "Entre 25 y 34"
        when Age between 35 and 44 then "Entre 35 y 44"
        when Age between 45 and 54 then "Entre 45 y 54"
        when Age between 55 and 64 then "Entre 55 y 64"
        else "65 o más"
	end as "Rango de edad",
    Category as "Categoría de producto",
    count(*) as "Cantidad de productos vendidos"
from sales
group by 1, 2
order by 1;

# Cantidad de productos vendidos por tipo de producto y rangos de edad
select
	case
		when Age between 15 and 24 then "Entre 15 y 24"
        when Age between 25 and 34 then "Entre 25 y 34"
        when Age between 35 and 44 then "Entre 35 y 44"
        when Age between 45 and 54 then "Entre 45 y 54"
        when Age between 55 and 64 then "Entre 55 y 64"
        else "65 o más"
	end as "Rango de edad",
    `Item Purchased` as "Tipo de producto",
    count(*) as "Cantidad de productos vendidos"
from sales
group by 1, 2
order by 1;

# Cantidad de clientes por rango de edad
select
	case
		when Age between 15 and 24 then "Entre 15 y 24"
        when Age between 25 and 34 then "Entre 25 y 34"
        when Age between 35 and 44 then "Entre 35 y 44"
        when Age between 45 and 54 then "Entre 45 y 54"
        when Age between 55 and 64 then "Entre 55 y 64"
        else "65 o más"
	end as "Rango de edad",
    count(*) as "Cantidad de clientes"
from sales
group by 1
order by 1 desc;

# Cantidad de clientes por rango de edad y gasto medio
select
	case
		when Age between 15 and 24 then "Entre 15 y 24"
        when Age between 25 and 34 then "Entre 25 y 34"
        when Age between 35 and 44 then "Entre 35 y 44"
        when Age between 45 and 54 then "Entre 45 y 54"
        when Age between 55 and 64 then "Entre 55 y 64"
        else "65 o más"
	end as "Rango de edad",
    count(*) as "Cantidad de clientes",
    round(avg(`Purchase Amount (USD)`),2) as "Gasto medio (USD)"
from sales
group by 1
order by 1 desc;

# Cantidad de ventas por categoría de producto según Localidad del consumidor
select Location as "Localidad", Category as "Categoría de producto", COUNT(*) AS "Cantidad de ventas"
from sales
group by Location, Category
order by Location, Category;

# TOP100 Clientes con mayor gasto
select `Customer ID` as "ID Cliente", Age, `Purchase Amount (USD)` AS "Gasto (USD)"
from sales
group by 1, 2, 3
order by 3 desc limit 100;

# TOP 3 más comprado por categoría
select Category, `Item Purchased` as "Producto", Compras
from (
    select Category, `Item Purchased`, COUNT(*) as Compras, ROW_NUMBER() OVER (PARTITION BY Category ORDER BY COUNT(*) DESC) AS rn
    from sales
    group by Category, `Item Purchased`
) as subquery
where rn <= 3
order by Category;