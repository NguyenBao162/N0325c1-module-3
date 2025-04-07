create database doibong;
use doibong;
create table hlv(
id int auto_increment primary key,
ten nvarchar(50),
ngaysinh datetime
);

create table cauthu(
id int auto_increment primary key,
ten nvarchar(50),
ngaysịnh datetime,
doi_id int ,
foreign key (doi_id) references doi(id)
);

create table doi(
id int auto_increment primary key,
doia nvarchar(50),
doib nvarchar(50),
id_cauthu int,
id_hlv int,
foreign key(id_cauthu) references cauthu(id),
foreign key(id_hlv) references hlv(id)
);

create table trandau(
id int auto_increment primary key,
ngaygio datetime,
id_doi int,
foreign key (id_doi) references doi(id)
);

create table cauthu_vitri(
cauthu_id int,
vitri_id int,
foreign key(cauthu_id) references cauthu(id),
foreign key(vitri_id) references vitri(id)
);

create table vitri(
id int auto_increment primary key
);

create table trandau_cauthu(
trandau_id int,
cauthu_id int,
foreign key(trandau_id) references trandau(id),
foreign key(cauthu_id) references cauthu(id)
);
