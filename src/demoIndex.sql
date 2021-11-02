use classicmodels;
explain select * from customers where customerName = 'Land of Toys Inc.';
alter table customers add index customerIndex (customerName);
explain select * from customers where customerName = 'Land of Toys Inc.';
alter table customers add index index_full_name(contactFirstName,contactLastName);
explain select * from  customers where contactFirstName = 'Jean'or  contactFirstName = 'King';
