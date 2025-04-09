create database test_where;
use test_where;
-- câu a--
create table giao_vien(
id_gv int auto_increment primary key,
ten nvarchar(50),
gioitinh nvarchar(50)
);
insert into giao_vien ( ten, gioitinh) 
values 
('nguyễn bảo', 'nữ'),
('nguyễn khang', 'nam'),
('nguyễn khôi', 'nam');
-- câu b --
create table sinh_vien(
id_sv int auto_increment primary key,
ten nvarchar(50),
gioitinh nvarchar(50),
hotenphuhuynh nvarchar(70),
id_lophoc int,
foreign key (id_lophoc) references lop_hoc(id_lop)
);
insert into sinh_vien( ten, gioitinh, hotenphuhuynh)
values
('nguyễn bảo', 'nam', 'nguyễn a'),
('nguyễn khang', 'nữ', 'nguyễn b'),
('nguyễn khôi', 'nam', 'nguyễn c');
 -- câu c --
create table lop_hoc(
id_lop int auto_increment primary key,
tengvcn nvarchar(50),
sslop int,
thanhtich nvarchar(50),
id_giaovien int,
foreign key (id_giaovien) references giao_vien(id_gv)
);
insert into lop_hoc(tengvcn, sslop, thanhtich)
values
('nguyễn quốc long', 50, ' top 1 duy tân'),
('Lưu văn hiền', 90, ' top 2 duy tân'),
('phan long', 50, ' top 99 duy tân');

drop table giao_vien;
drop table sinh_vien;
drop table lop_hoc;
-- a --
select * from giao_vien;
select * from sinh_vien;
-- b --
select  ten, hotenphuhuynh from sinh_vien;
-- c --
select * from lop_hoc;


