create database quanlydulich;
use quanlydulich;
create table city(
    cID int primary key not null,
    cName varchar(20)
);
create table tourType(
    tTID int primary key not null ,
    typeCode varchar(20) ,
    typeName varchar(20)
);
