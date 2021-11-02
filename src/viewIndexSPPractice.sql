create database viewIndexSP;
use  viewIndexSP;
create table products (
    id int primary key not null,
    pCode varchar(20),
    pName varchar(20),
    pPrice float ,
    pAmount int ,
    pDescription varchar(20),
    pStatus boolean
);
create unique index products_Index on products(pCode);
create index compositeIndex on products(pName,pPrice);

explain select pCode from products;
explain select pName,pPrice from products;

create view productsView as
    select pCode,pName,pPrice,pStatus from products;

create or replace view productsView as
    select pCode,pName,pPrice,pAmount,pStatus from viewindexsp.products;

drop view productsview;
