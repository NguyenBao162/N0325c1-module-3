create database quan_ly_truong_tieu_hoc;
use quan_ly_truong_tieu_hoc;

create table giao_vien(
ma_gv char(5) primary key,
ho_ten_gv nvarchar(50)
);

create table lop(
ma_lop char(5) primary key,
ten_lop nvarchar(50),
ma_gvcn char(5),
nam_hoc varchar(40),
foreign key (ma_gvcn) references giao_vien(ma_gv)
);

create table hoc_sinh(
ma_hs char(5) primary key,
ho_ten_hs nvarchar(255),
ho_ten_ph nvarchar(255),
gioi_tinh enum('nam', 'nữ'),
dia_chi nvarchar(255),
ma_lop char(5),
foreign key (ma_lop) references lop(ma_lop)
);

create table mon_hoc(
ma_mh char(5) primary key,
ten_mh nvarchar(255)
);

create table ket_qua_hoc_tap(
ma_hs char(5),
hoc_ky varchar(15),
ma_mh char(5),
diem_thi_giua_ky float,
diem_thi_cuoi_ky float,
ngay_gio_thi_cuoi_ky datetime,
primary key (ma_hs, hoc_ky, ma_mh),
foreign key (ma_hs) references hoc_sinh(ma_hs),
foreign key (ma_mh) references mon_hoc(ma_mh)
);

create table phu_trach_bo_mon(
ma_gvpt char(5),
ma_lop char(5),
ma_mh char(5),
hoc_ky varchar(15),
primary key (ma_gvpt, ma_lop, ma_mh),
foreign key (ma_gvpt) references giao_vien(ma_gv),
foreign key (ma_lop) references lop(ma_lop),
foreign key (ma_mh) references mon_hoc(ma_mh)
);















drop table giao_vien;
