use quanlydonhang;
select OrderID,OrderDate,OrderTotalPrice from order1;
select CustomerName,ProductName from orderdetail
join order1 o on orderdetail.oID = o.OrderID
join product p on p.ProductID = orderdetail.pID
join customer c on c.CustomerID = o.CustomerID;
select CustomerName, OrderID from order1
right join customer c on c.CustomerID = order1.CustomerID
where OrderID is null ;
select OrderID as mahoadon, OrderDate as ngaymua, o.odQTY*p.ProductPrice as grandtotal  from order1
join orderdetail o on order1.OrderID = o.oID
join product p on p.ProductID = o.pID
