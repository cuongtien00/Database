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