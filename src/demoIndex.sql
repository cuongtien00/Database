use classicmodels;
explain select * from customers where customerName = 'Land of Toys Inc.';
alter table customers add index customerIndex (customerName);
explain select * from customers where customerName = 'Land of Toys Inc.';
alter table customers add index index_full_name(contactFirstName,contactLastName);
explain select * from  customers where contactFirstName = 'Jean'or  contactFirstName = 'King';

create procedure findALlCustomers()
begin
    select * from customers;
end;

call findALlCustomers();

drop procedure findALlCustomers;
create procedure findAllCustomers()
begin
    select * from customers where customerNumber = 175;
end;

call findALlCustomers();
# tham so loai IN
create procedure getCusById(IN cusNum int(11))
begin
    select * from customers where customerNumber = cusNum;
end;

call getCusById(175);

# tham so loai OUT
create procedure getCustomerByCity(
in in_city varchar(50),
out total int
)
begin
    select count(customerNumber)
        into total
    from customers
        where city = in_city;
end;

call getCustomerByCity('Lyon',@tongcong);
select @tongcong;

# tham so inout

create procedure setCounter(
inout counter int,
in inc int

)
begin
    set counter = counter + inc;
end;
set @counter = 1;
call setCounter(@counter,1);
select @counter;
call setCount(@counter,1);
select @counter;

# them view
create view customers_view as
    select customerNumber,customerName,phone from customers;

# cap nhap view
create or replace view customer_view as
    select customerNumber,customerName,contactFirstName,contactLastName,phone from customers
where city = 'nantes';
select * from customer_view;

# xoa view

drop view customer_view;