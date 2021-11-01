create database quanlydulich;
use quanlydulich;
create table thanhpho(
    tpID int primary key not null,
    tpName varchar(20)
);
create table loaiTour(
    ltID int primary key not null ,
    maLoai varchar(20) ,
    tenLoai varchar(20)
);
create table khachhang(
    khID int primary key not null,
    khName varchar(20),
    cccd varchar(20),
    namSinh varchar(20),
    tpID int,
    foreign key (tpID)references thanhpho(tpID)
);
create table diemDuLich(
    ddlID int primary key not null,
    ddlName varchar(20),
    mota varchar(20),
    giaTB float(20),
    tpID int,
    foreign key (tpID) references thanhpho(tpID)
);
create table tour(
    tourID int primary key not null,
    maTour varchar(20),
    loaiTourID int(20),
    foreign key (loaiTourID)references loaiTour(ltID),
    giaDDDL float(20),
    startDate Datetime,
    endDate DATETIME
);
create table Orders(
    id int primary key not null,
    tourID int,
    khID int,
    foreign key (tourID)references tour(tourID),
    foreign key (khID)references khachhang(khID),
    status boolean
);
alter table diemDuLich
add column tourID int ;
alter table diemDuLich
add constraint foreign key (tourID) references tour(tourID);
alter table orders
drop column status;
alter table orders
add column status boolean;
ALTER TABLE orders
MODIFY COLUMN status boolean;
select tpName,count(tpName) as 'so tour cua thanh pho'from thanhpho
group by tpName;
select tenLoai, count(startDate)as sotuatrongthang3 from tour
join loaiTour lT on lT.ltID = tour.loaiTourID
where year(startDate)=2020 and month(startDate) = 3;
SELECT tenLoai, count(endDate)as sotourketthuctrongthang4 from tour
join loaiTour lT on lT.ltID = tour.loaiTourID
where year(endDate)= 2020 and month(endDate) = 4;