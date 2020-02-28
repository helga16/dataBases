Coздана новая база с каталогом детских товаров, в ней сущности: продукты, категории, производители(бренды), заказы. 3 таблицы связей


Запросы:

--Выводим всю инфу из 4 таблиц

select p.name as product, price, pr.name as brand,cat.name as category, order_id, quantity from products p left join product_producer using(product_id) left join producers pr using(producer_id) left join product_category using(product_id) left join categories cat using(category_id) left join product_order using(product_id) left join orders using(order_id);

--Выводим всю инфу из 4 таблиц, исключая товары без брендов

select p.name as product, price, pr.name as brand,cat.name as category, order_id, quantity from products p inner join product_producer using(product_id) inner join producers pr using(producer_id) inner join product_category using(product_id) inner join categories cat using(category_id) inner join product_order using(product_id) inner join orders using(order_id);

--выводим хиты продаж

select product_id,name, count(order_id) as sold_points from products left join product_order using(product_id) left join orders using(order_id) group by product_id having sold_points >2;

--выводим кол-во наименований товаров в категориях

select count(product_id) as product_count,cat.name as category from categories cat left join product_category using(category_id) left join products using(product_id) group by cat.name;

--выводим кол-во наименований товаров в брендах, отсортировывая по названию бренда в обратном порядке;
select pr.name as brand, count(product_id) as product_names from producers pr left join product_producer using (producer_id) left join products using(product_id) group by pr.name order by pr.name desc;

--выводим кол-во наименований товаров в брендах, отсортировывая по кол-ву наименований в обратном порядке;

select pr.name as brand, count(product_id) as product_names from producers pr left join product_producer using (producer_id) left join products using(product_id) group by pr.name order by product_names desc;

//Добавлено 28.02 запросы с group_concat;
--выводим товары с категориями
select p.name as product, group_concat(distinct cat.name separator "/ ") as category from products p left join product_category on(p.product_id=product_category.product_id) left join categories cat using(category_id) group by product;

--выводим товары с категориями и количеством заказов

select p.name as product, group_concat(distinct cat.name separator "/ ") as category, count(distinct o.order_id) as orders from products p left join product_category on(p.product_id=product_category.product_id) left join categories cat using(category_id) left join product_order o on(p.product_id = o.product_id) group by p.product_id;
