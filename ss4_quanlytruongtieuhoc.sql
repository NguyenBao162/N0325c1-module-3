create database quan_ly_truong_tieu_hoc;
use quan_ly_truong_tieu_hoc;

-- tạo bảng giáo viên --
create table giao_vien(
ma_gv char(5) primary key,
ho_ten_gv nvarchar(50)
);
-- add dữ liệu --
insert into giao_vien(ma_gv, ho_ten_gv)
values
('GV001', 'Nguyễn Bảo'),
('GV002', 'Nguyễn Văn Thành Tài'),
('GV003', 'Lưu Văn Hiền'),
('GV004', 'Nguyễn Quốc Long'),
('GV005', 'Phan Long'),
('GV006', 'Nguyễn Trần Trung Quân'),
('GV007', 'Nguyễn Sơn Tùng'),
('GV008', 'Nguyễn Bảo Khánh'),
('GV009', 'Trịnh Trần Phương Tuấn'),
('GV010', 'Nguyễn Trúc Thuỷ Tiên');
-- tạo bảng lớp --
create table lop(
ma_lop char(5) primary key,
ten_lop nvarchar(50),
ma_gvcn char(5),
nam_hoc varchar(40),
foreign key (ma_gvcn) references giao_vien(ma_gv)
);
-- add dữ liệu -- 
insert into lop(ma_lop, ten_lop, ma_gvcn, nam_hoc)
values 
('L001', ' Lớp 1A' , 'GV001', '2025-2026'),
('L002', ' Lớp 2A' , 'GV009', '2025-2026'),
('L003', ' Lớp 3A' , 'GV008', '2025-2026'),
('L004', ' Lớp 4A' , 'GV006', '2025-2026'),
('L005', ' Lớp 5A' , 'GV005', '2025-2026'),
('L006', ' Lớp 1B' , 'GV003', '2025-2026'),
('L007', ' Lớp 2B' , 'GV007', '2025-2026'),
('L008', ' Lớp 3B' , 'GV010', '2025-2026'),
('L009', ' Lớp 4B' , 'GV002', '2025-2026'),
('L010', ' Lớp 5B' , 'GV004', '2025-2026');
-- tạo bảng học sinh --
create table hoc_sinh(
ma_hs char(5) primary key,
ho_ten_hs nvarchar(255),
ho_ten_ph nvarchar(255),
gioi_tinh enum('nam', 'nữ'),
dia_chi nvarchar(255),
ma_lop char(5),
foreign key (ma_lop) references lop(ma_lop)
);
-- add dữ liệu --
insert into hoc_sinh(ma_hs, ho_ten_hs, ho_ten_ph, gioi_tinh, dia_chi, ma_lop)
values 
('HS001', 'Trịnh Trần Phương Tuấn j97 bến tre he he he he he ', '', 'nam', 'Hải Châu ', 'L001'),	
('HS002', 'nNguyễn Nhật Minh Thư thư heee', 'Phan Long', 'nữ', 'Thanh Khê', 'L002'),	
('HS003', 'Dương Quốc Hoàng', 'Phạm Quang Minh', 'nam', 'Sơn Trà', 'L003'),	
('HS004', 'Nguyễn Lê Gia Hân', 'Trần Trung Trực', 'nữ', 'Ngũ Hành Sơn', 'L004'),	
('HS005', 'Lê Bảo Bình', 'Nguyễn Lê Viết Dũng', 'nam', 'Thanh Khê', 'L005'),	
('HS006', 'Tôn Nguyễn Huế Trân', 'Phạm Nhật Vượng', 'nữ', 'Hải Châu ', 'L006'),	
('HS007', 'Nguyễn Lê Gia Kỳ', 'Nguyễn Văn Nam', 'nam', 'Ngũ Hành Sơn', 'L007'),	
('HS008', 'Nguyễn Ngọc Kiều Trinh', 'Trương Phát Đạt', 'nữ', 'Sơn Trà', 'L008'),	
('HS009', 'Huỳnh Trương Gia Kỳ', 'Phạm Ngọc Thạch', 'nam', 'Liên Chiểu', 'L009'),	
('HS010', 'Phương Mỹ Chi', 'Phạm Phương Nam', 'nữ', 'Hải Châu', 'L010'),	
('HS011', 'Nguyễn Thanh Tùng', 'Nguyễn Thanh Sơn', 'nam', 'Sơn Trà', 'L005'),	
('HS012', 'Phan Thị Mỹ Tâm', 'Phạm Minh Quang', 'nữ', 'Hải Châu', 'L007'),	
('HS013', 'Hà Anh Tuấn', 'Cao Thái Sơn', 'nam', 'Cẩm Lệ', 'L009'),	
('HS014', 'Hồ Ngọc Hà', 'Noo Phước Thịnh', 'nữ', 'Liên Chiểu', 'L003'),	
('HS015', 'Võ Trang', 'Bà Đặng Ngọc', 'nữ', 'Sơn Trà', 'L001'),
('HS016', 'Trần Anh', 'Bà Lê Hoa', 'nữ', 'Sơn Trà', 'L005'),
('HS017', 'Nguyễn Bình', 'Ông Phạm Vương', 'nam', 'Thanh Khê', 'L001'),
('HS018', 'Lê Diệu', 'Mẹ Huỳnh Hương', 'nữ', 'Ngũ Hành Sơn', 'L009'),
('HS019', 'Phạm Hùng', 'Ba Võ Minh', 'nam', 'Hải Châu', 'L003'),
('HS020', 'Võ Hoa', 'Bà Đặng Ngọc', 'nữ', 'Cẩm Lệ', 'L007'),
('HS021', 'Đặng Khánh', 'Ông Bùi An', 'nam', 'Liên Chiểu', 'L002'),
('HS022', 'Bùi Hương', 'Mẹ Đỗ Bích', 'nữ', 'Sơn Trà', 'L010'),
('HS023', 'Đỗ Long', 'Ba Hồ Cường', 'nam', 'Thanh Khê', 'L004'),
('HS024', 'Hồ Lan', 'Bà Nguyễn Diệu', 'nữ', 'Ngũ Hành Sơn', 'L008'),
('HS025', 'Nguyễn Minh', 'Ông Trần Hùng', 'nam', 'Hải Châu', 'L006'),
('HS026', 'Trần Liên', 'Mẹ Lê Hoa', 'nữ', 'Cẩm Lệ', 'L001'),
('HS027', 'Lê Nam', 'Ba Phạm Vương', 'nam', 'Liên Chiểu', 'L009'),
('HS028', 'Phạm Mai', 'Bà Huỳnh Hương', 'nữ', 'Sơn Trà', 'L003'),
('HS029', 'Huỳnh Phong', 'Ông Võ Minh', 'nam', 'Thanh Khê', 'L007'),
('HS030', 'Võ Ngọc', 'Mẹ Đặng Ngọc', 'nữ', 'Ngũ Hành Sơn', 'L002'),
('HS031', 'Đặng Quang', 'Ba Bùi An', 'nam', 'Hải Châu', 'L010'),
('HS032', 'Bùi Như', 'Bà Đỗ Bích', 'nữ', 'Cẩm Lệ', 'L005'),
('HS033', 'Đỗ Sơn', 'Ông Hồ Cường', 'nam', 'Liên Chiểu', 'L001'),
('HS034', 'Hồ Phượng', 'Mẹ Nguyễn Diệu', 'nữ', 'Sơn Trà', 'L009'),
('HS035', 'Nguyễn Thành', 'Ba Trần Hùng', 'nam', 'Thanh Khê', 'L003'),
('HS036', 'Trần Quỳnh', 'Bà Lê Hoa', 'nữ', 'Ngũ Hành Sơn', 'L007'),
('HS037', 'Lê Trung', 'Ông Phạm Vương', 'nam', 'Hải Châu', 'L002'),
('HS038', 'Phạm Thảo', 'Mẹ Huỳnh Hương', 'nữ', 'Cẩm Lệ', 'L010'),
('HS039', 'Huỳnh Vương', 'Ba Võ Minh', 'nam', 'Liên Chiểu', 'L005'),
('HS040', 'Võ Trang', 'Bà Đặng Ngọc', 'nữ', 'Sơn Trà', 'L001'),
('HS041', 'Đặng Yến', 'Ông Bùi An', 'nam', 'Thanh Khê', 'L009'),
('HS042', 'Bùi Anh', 'Mẹ Đỗ Bích', 'nữ', 'Ngũ Hành Sơn', 'L003'),
('HS043', 'Đỗ Bình', 'Ba Hồ Cường', 'nam', 'Hải Châu', 'L007'),
('HS044', 'Hồ Bích', 'Bà Nguyễn Diệu', 'nữ', 'Cẩm Lệ', 'L002'),
('HS045', 'Nguyễn Cường', 'Ông Trần Hùng', 'nam', 'Liên Chiểu', 'L010'),
('HS046', 'Trần Diệu', 'Mẹ Lê Hoa', 'nữ', 'Sơn Trà', 'L005'),
('HS047', 'Lê Dương', 'Ba Phạm Vương', 'nam', 'Thanh Khê', 'L001'),
('HS048', 'Phạm Hà', 'Bà Huỳnh Hương', 'nữ', 'Ngũ Hành Sơn', 'L009'),
('HS049', 'Huỳnh Đức', 'Ông Võ Minh', 'nam', 'Hải Châu', 'L003'),
('HS050', 'Võ Hoa', 'Mẹ Đặng Ngọc', 'nữ', 'Cẩm Lệ', 'L007'),
('HS051', 'Đặng Hùng', 'Ba Bùi An', 'nam', 'Liên Chiểu', 'L002'),
('HS052', 'Bùi Hương', 'Bà Đỗ Bích', 'nữ', 'Sơn Trà', 'L010'),
('HS053', 'Đỗ Khánh', 'Ông Hồ Cường', 'nam', 'Thanh Khê', 'L004'),
('HS054', 'Hồ Lan', 'Mẹ Nguyễn Diệu', 'nữ', 'Ngũ Hành Sơn', 'L008'),
('HS055', 'Nguyễn Long', 'Ba Trần Hùng', 'nam', 'Hải Châu', 'L006'),
('HS056', 'Trần Liên', 'Bà Lê Hoa', 'nữ', 'Cẩm Lệ', 'L001'),
('HS057', 'Lê Minh', 'Ông Phạm Vương', 'nam', 'Liên Chiểu', 'L009'),
('HS058', 'Phạm Mai', 'Mẹ Huỳnh Hương', 'nữ', 'Sơn Trà', 'L003'),
('HS059', 'Huỳnh Nam', 'Ba Võ Minh', 'nam', 'Thanh Khê', 'L007'),
('HS060', 'Võ Ngọc', 'Bà Đặng Ngọc', 'nữ', 'Ngũ Hành Sơn', 'L002'),
('HS061', 'Đặng Phong', 'Ông Bùi An', 'nam', 'Hải Châu', 'L010'),
('HS062', 'Bùi Như', 'Mẹ Đỗ Bích', 'nữ', 'Cẩm Lệ', 'L005'),
('HS063', 'Đỗ Quang', 'Ba Hồ Cường', 'nam', 'Liên Chiểu', 'L001'),
('HS064', 'Hồ Phượng', 'Bà Nguyễn Diệu', 'nữ', 'Sơn Trà', 'L009'),
('HS065', 'Nguyễn Sơn', 'Ông Trần Hùng', 'nam', 'Thanh Khê', 'L003'),
('HS066', 'Trần Quỳnh', 'Mẹ Lê Hoa', 'nữ', 'Ngũ Hành Sơn', 'L007'),
('HS067', 'Lê Thành', 'Ba Phạm Vương', 'nam', 'Hải Châu', 'L002'),
('HS068', 'Phạm Thảo', 'Bà Huỳnh Hương', 'nữ', 'Cẩm Lệ', 'L010'),
('HS069', 'Huỳnh Trung', 'Ông Võ Minh', 'nam', 'Liên Chiểu', 'L005'),
('HS070', 'Võ Trang', 'Mẹ Đặng Ngọc', 'nữ', 'Sơn Trà', 'L001'),
('HS071', 'Đặng Vương', 'Ba Bùi An', 'nam', 'Thanh Khê', 'L009'),
('HS072', 'Bùi Yến', 'Bà Đỗ Bích', 'nữ', 'Ngũ Hành Sơn', 'L003'),
('HS073', 'Đỗ Anh', 'Ông Hồ Cường', 'nam', 'Hải Châu', 'L007'),
('HS074', 'Hồ Bích', 'Mẹ Nguyễn Diệu', 'nữ', 'Cẩm Lệ', 'L002'),
('HS075', 'Nguyễn Bình', 'Ba Trần Hùng', 'nam', 'Liên Chiểu', 'L010'),
('HS076', 'Trần Diệu', 'Bà Lê Hoa', 'nữ', 'Sơn Trà', 'L005'),
('HS077', 'Lê Cường', 'Ông Phạm Vương', 'nam', 'Thanh Khê', 'L001'),
('HS078', 'Phạm Hà', 'Mẹ Huỳnh Hương', 'nữ', 'Ngũ Hành Sơn', 'L009'),
('HS079', 'Huỳnh Đức', 'Ba Võ Minh', 'nam', 'Hải Châu', 'L003'),
('HS080', 'Võ Hoa', 'Bà Đặng Ngọc', 'nữ', 'Cẩm Lệ', 'L007'),
('HS081', 'Đặng Hùng', 'Ông Bùi An', 'nam', 'Liên Chiểu', 'L002'),
('HS082', 'Bùi Hương', 'Mẹ Đỗ Bích', 'nữ', 'Sơn Trà', 'L010'),
('HS083', 'Đỗ Khánh Nở', 'Ba Hồ Cường', 'nam', 'Thanh Khê', 'L004'),
('HS084', 'Hồ Lan', 'Bà Nguyễn Diệu', 'nữ', 'Ngũ Hành Sơn', 'L008'),
('HS085', 'Nguyễn Long', 'Ông Trần Hùng', 'nam', 'Hải Châu', 'L006'),
('HS086', 'Trần Liên', 'Mẹ Lê Hoa', 'nữ', 'Cẩm Lệ', 'L001'),
('HS087', 'Lê Minh', 'Ba Phạm Vương', 'nam', 'Liên Chiểu', 'L009'),
('HS088', 'Phạm Mai', 'Bà Huỳnh Hương', 'nữ', 'Sơn Trà', 'L003'),
('HS089', 'Huỳnh Nam', 'Ông Võ Minh', 'nam', 'Thanh Khê', 'L007'),
('HS090', 'Võ Ngọc', 'Mẹ Đặng Ngọc', 'nữ', 'Ngũ Hành Sơn', 'L002'),
('HS091', 'Đặng Phong', 'Ba Bùi An', 'nam', 'Hải Châu', 'L010'),
('HS092', 'Bùi Như', 'Bà Đỗ Bích', 'nữ', 'Cẩm Lệ', 'L005'),
('HS093', 'Đỗ Quang', 'Ba Hồ Cường', 'nam', 'Liên Chiểu', 'L001'),
('HS094', 'Hồ Phượng', 'Bà Nguyễn Diệu', 'nữ', 'Sơn Trà', 'L009'),
('HS095', 'Nguyễn Sơn', 'Ông Trần Hùng', 'nam', 'Thanh Khê', 'L003'),
('HS096', 'Trần Quỳnh', 'Mẹ Lê Hoa', 'nữ', 'Ngũ Hành Sơn', 'L007'),
('HS097', 'Lê Thành', 'Ba Phạm Vương', 'nam', 'Hải Châu', 'L002'),
('HS098', 'Phạm Thảo', 'Bà Huỳnh Hương', 'nữ', 'Cẩm Lệ', 'L010'),
('HS099', 'Huỳnh Trung', 'Ông Võ Minh', 'nam', 'Liên Chiểu', 'L005'),
('HS100', 'NGUYỄN BẢO', 'PHẠM NHẬT VƯỢNG', 'nam', 'Sơn Trà', 'L001');
-- tạo bảng môn học --
create table mon_hoc(
ma_mh char(5) primary key,
ten_mh nvarchar(255)
);
-- add dữ liệu --
insert into mon_hoc(ma_mh, ten_mh)
values
('MH001', 'Toán Học'),
('MH002', 'Vật lý'),
('MH003', 'Hoá Học'),
('MH004', 'Ngữ Văn'),
('MH005', 'Lịch Sử'),
('MH006', 'Địa Lý'),
('MH007', 'Tiếng Anh'),
('MH008', 'Giáo Dục Công Dân'),
('MH009', 'Sinh Học'),
('MH010', 'Tin Học');
-- tạo bảng kết quả học tập --
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
-- add dữ liệu -- 
insert into ket_qua_hoc_tap(ma_hs, hoc_ky, ma_mh, diem_thi_giua_ky, diem_thi_cuoi_ky, ngay_gio_thi_cuoi_ky)
values 
('HS001', 'Học Kỳ 1', 'MH001', 8.5, 9.0, '2025-02-16 08:00:00'),
('HS002', 'Học Kỳ 2', 'MH005', 6.2, 7.8, '2025-02-16 08:45:00'),
('HS003', 'Học Kỳ 1', 'MH009', 9.1, 8.7, '2025-02-16 09:15:00'),
('HS004', 'Học Kỳ 2', 'MH002', 5.5, 6.9, '2025-02-16 08:20:00'),
('HS005', 'Học Kỳ 1', 'MH007', 7.9, 9.3, '2025-02-16 08:55:00'),
('HS006', 'Học Kỳ 2', 'MH004', 8.8, 7.5, '2025-02-16 09:05:00'),
('HS007', 'Học Kỳ 1', 'MH003', 6.7, 8.1, '2025-02-16 08:30:00'),
('HS008', 'Học Kỳ 2', 'MH010', 9.4, 5.2, '2025-02-16 09:25:00'),
('HS009', 'Học Kỳ 1', 'MH006', 5.8, 7.1, '2025-02-16 08:10:00'),
('HS010', 'Học Kỳ 2', 'MH001', 7.3, 8.9, '2025-02-16 09:00:00'),
('HS011', 'Học Kỳ 1', 'MH008', 8.2, 6.5, '2025-02-16 08:35:00'),
('HS012', 'Học Kỳ 2', 'MH003', 9.0, 7.9, '2025-02-16 09:20:00'),
('HS013', 'Học Kỳ 1', 'MH002', 6.5, 8.4, '2025-02-16 08:05:00'),
('HS014', 'Học Kỳ 2', 'MH009', 7.7, 5.9, '2025-02-16 08:50:00'),
('HS015', 'Học Kỳ 1', 'MH004', 9.3, 8.1, '2025-02-16 09:10:00'),
('HS016', 'Học Kỳ 2', 'MH007', 5.1, 7.6, '2025-02-16 08:25:00'),
('HS017', 'Học Kỳ 1', 'MH010', 8.9, 9.5, '2025-02-16 09:00:00'),
('HS018', 'Học Kỳ 2', 'MH006', 7.0, 6.3, '2025-02-16 08:40:00'),
('HS019', 'Học Kỳ 1', 'MH005', 6.3, 8.7, '2025-02-16 09:25:00'),
('HS020', 'Học Kỳ 2', 'MH008', 9.5, 7.2, '2025-02-16 08:15:00'),
('HS021', 'Học Kỳ 1', 'MH001', 5.9, 8.5, '2025-02-16 09:05:00'),
('HS022', 'Học Kỳ 2', 'MH003', 8.1, 6.8, '2025-02-16 08:30:00'),
('HS023', 'Học Kỳ 1', 'MH007', 7.4, 9.1, '2025-02-16 09:20:00'),
('HS024', 'Học Kỳ 2', 'MH002', 9.2, 5.6, '2025-02-16 08:00:00'),
('HS025', 'Học Kỳ 1', 'MH009', 6.8, 7.9, '2025-02-16 08:45:00'),
('HS026', 'Học Kỳ 2', 'MH004', 5.3, 9.3, '2025-02-16 09:15:00'),
('HS027', 'Học Kỳ 1', 'MH010', 8.7, 6.1, '2025-02-16 08:20:00'),
('HS028', 'Học Kỳ 2', 'MH006', 7.9, 8.4, '2025-02-16 08:55:00'),
('HS029', 'Học Kỳ 1', 'MH005', 9.0, 7.0, '2025-02-16 09:05:00'),
('HS030', 'Học Kỳ 2', 'MH008', 6.1, 8.8, '2025-02-16 08:35:00'),
('HS031', 'Học Kỳ 1', 'MH002', 8.4, 5.3, '2025-02-16 09:20:00'),
('HS032', 'Học Kỳ 2', 'MH009', 7.6, 7.7, '2025-02-16 08:05:00'),
('HS033', 'Học Kỳ 1', 'MH004', 5.0, 9.2, '2025-02-16 08:50:00'),
('HS034', 'Học Kỳ 2', 'MH010', 9.4, 6.6, '2025-02-16 09:10:00'),
('HS035', 'Học Kỳ 1', 'MH006', 6.7, 8.0, '2025-02-16 08:25:00'),
('HS036', 'Học Kỳ 2', 'MH005', 8.2, 9.5, '2025-02-16 09:00:00'),
('HS037', 'Học Kỳ 1', 'MH008', 7.1, 6.0, '2025-02-16 08:40:00'),
('HS038', 'Học Kỳ 2', 'MH001', 9.1, 8.3, '2025-02-16 09:25:00'),
('HS039', 'Học Kỳ 1', 'MH003', 5.6, 7.5, '2025-02-16 08:15:00'),
('HS040', 'Học Kỳ 2', 'MH007', 8.6, 9.0, '2025-02-16 09:05:00'),
('HS041', 'Học Kỳ 1', 'MH009', 7.9, 6.4, '2025-02-16 08:30:00'),
('HS042', 'Học Kỳ 2', 'MH002', 6.4, 8.7, '2025-02-16 09:20:00'),
('HS043', 'Học Kỳ 1', 'MH004', 9.3, 5.1, '2025-02-16 08:00:00'),
('HS044', 'Học Kỳ 2', 'MH010', 5.2, 7.8, '2025-02-16 08:45:00'),
('HS045', 'Học Kỳ 1', 'MH006', 8.8, 9.4, '2025-02-16 09:15:00'),
('HS046', 'Học Kỳ 2', 'MH005', 7.3, 6.9, '2025-02-16 08:20:00'),
('HS047', 'Học Kỳ 1', 'MH008', 6.0, 8.2, '2025-02-16 08:55:00'),
('HS048', 'Học Kỳ 2', 'MH001', 9.5, 7.5, '2025-02-16 09:05:00'),
('HS049', 'Học Kỳ 1', 'MH003', 5.7, 8.9, '2025-02-16 08:30:00'),
('HS050', 'Học Kỳ 2', 'MH007', 8.1, 5.8, '2025-02-16 09:25:00');
-- tạo bảng phụ trách bộ môn --
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
-- add dữ liệuu --
insert into phu_trach_bo_mon(ma_gvpt,ma_lop,ma_mh,hoc_ky)
values
('GV001', 'L003', 'MH007', 'Học kỳ 1'),
('GV002', 'L008', 'MH001', 'Học kỳ 1'),
('GV003', 'L001', 'MH005', 'Học kỳ 1'),
('GV004', 'L006', 'MH009', 'Học kỳ 1'),
('GV005', 'L002', 'MH002', 'Học kỳ 1'),
('GV006', 'L009', 'MH006', 'Học kỳ 1'),
('GV007', 'L004', 'MH010', 'Học kỳ 1'),
('GV008', 'L007', 'MH003', 'Học kỳ 1'),
('GV009', 'L005', 'MH008', 'Học kỳ 1'),
('GV010', 'L010', 'MH004', 'Học kỳ 1'),
('GV001', 'L005', 'MH002', 'Học kỳ 2'),
('GV002', 'L001', 'MH007', 'Học kỳ 2'),
('GV003', 'L009', 'MH004', 'Học kỳ 2'),
('GV004', 'L007', 'MH008', 'Học kỳ 2'),
('GV005', 'L004', 'MH001', 'Học kỳ 2'),
('GV006', 'L010', 'MH005', 'Học kỳ 2'),
('GV007', 'L002', 'MH009', 'Học kỳ 2'),
('GV008', 'L008', 'MH003', 'Học kỳ 2'),
('GV009', 'L006', 'MH010', 'Học kỳ 2'),
('GV010', 'L003', 'MH006', 'Học kỳ 2');

-- select không dùng where --
-- liệt kê toàn bộ thông tin giáo viên trong trường--
select * from giao_vien;
-- họ tên học, giới tính, họ tên phụ huynh của toàn bộ hs --
select hs.ho_ten_hs, hs.gioi_tinh, hs.ho_ten_ph from hoc_sinh hs;
-- toàn bộ thông tin của all các lớp --
select * from lop;

-- select dùng where --
-- a. học sinh có giới tính nam --
select * from hoc_sinh where gioi_tinh = 'nam';
-- b. học sinh chưa có tên phụ huynh --
select ho_ten_hs, gioi_tinh, dia_chi from hoc_sinh where ho_ten_ph is null;
-- c. những lớp chưa có gvcn --
select * from lop where ma_GVcn is null;
-- d. học sinh chưa được phân lớp --
select * from hoc_sinh where ma_lop is null;
-- e. học sinh nữ có địa chỉ thanh khê --
select * from hoc_sinh where gioi_tinh = 'nữ' and dia_chi like'%Thanh Khê%';
-- f. hs nam ở hải châu hoặc hs nữ ở thanh khê --
select * from hoc_sinh where(gioi_tinh = 'Nam' and dia_chi like '%Hải Châu%') or (gioi_tinh = 'nữ' and dia_chi like '%Thanh Khê%');
-- g. hs nam chưa có tên ph và hs nữ chưa được phân lớp --
select * from hoc_sinh where(gioi_tinh = 'nam' and ho_ten_ph is null) or (gioi_tinh = 'nữ' and ma_lop is null);
-- h. hs nam chưa được phân lớp và chưa có tên ph
select * from hoc_sinh where gioi_tinh = 'nam' and (ma_lop is null or ho_ten_ph is null);
-- i. mã môn học của những môn được dạy trong hk2 -- 
select distinct ma_mh from phu_trach_bo_mon where hoc_ky = 'Học kỳ 2';

-- LIKE --
-- a. hs có tên bắt đầu bằng từ Nguyễn
select * from hoc_sinh where ho_ten_hs like 'Nguyễn %';
-- b. hs có họ tên kết thúc bằng từ Nở
select * from hoc_sinh where ho_ten_hs like '% Nở';
-- c. hs có họ tên chứa từ thị
select * from hoc_sinh where ho_ten_hs like '%thị%';
-- d. hs chứa từ thị ở giữa 
select * from hoc_sinh where ho_ten_hs like '%thị%' and ho_ten_hs not like 'thị%' and ho_ten_hs not like '%thị';
-- e. hs có họ tên với độ dài 30 ký tự 
select * from hoc_sinh where char_length(ho_ten_hs) = 30;
-- f. hs có họ tên tối đa 30 ký tự
select * from hoc_sinh where char_length(ho_ten_hs) <= 30;
-- g. hs có họ tên với độ dài tối đa là 30 ký tự và bắt đầu bằng ký tự N
select * from hoc_sinh where char_length(ho_ten_hs) <=30 and ho_ten_hs like 'n%';
-- h hs có họ tên bắt đầu bằng N, T, V
select * from hoc_sinh where ho_ten_hs like 'n%' or ho_ten_hs like 'v%' or ho_ten_hs like 't%';
-- i. hs có tên không được bắt đầu bằng n t v
select * from hoc_sinh where ho_ten_hs like '%n' and ho_ten_hs not like'n%';
-- j hs có họ tên với phần họ có 4 ký tự
select * from hoc_sinh where ho_ten_hs like '____%';

-- orderbyte
-- a. thông tin toàn bộ hs, sắp xếp tăng dần theo họ tên hs
select * from hoc_sinh order by ho_ten_hs asc ;
-- b. sắp xếp giảm dần theo địa chỉ
select * from hoc_sinh order by dia_chi desc;
-- c. sắp xếp tăng dần theo họ tên hs và giảm theo địa chỉ
select * from hoc_sinh order by ho_ten_hs asc, dia_chi desc;
-- d. họ tên hs tăng dần, địa chỉ tăng dần
select * from hoc_sinh order by ho_ten_hs asc, dia_chi asc;
-- e. họ tên giảm, dịa chỉ giảm
select * from hoc_sinh order by ho_ten_hs desc, dia_chi desc;
-- f. họ tên hs , địa chỉ giảm, họ tên ph tăng
select *  from hoc_sinh order by ho_ten_hs desc, dia_chi desc, ho_ten_ph asc;
-- trả lời thêm, trong orderbyte từ khoá ASC không nhất thiết phải ghi trong select vì nó ngầm mặc định như vậy rồi

-- join 2 bảng
-- a. 
select * from hoc_sinh inner join lop on hoc_sinh.ma_lop = lop.ma_lop;
-- b.
select * from hoc_sinh inner join ket_qua_hoc_tap on hoc_sinh.ma_hs = ket_qua_hoc_tap.ma_hs;
-- c.
select * from phu_trach_bo_mon inner join giao_vien on phu_trach_bo_mon.ma_GVpt = giao_vien.ma_gv;
-- d. nếu chưa phân lớp thì sẽ không hiện ra trừ khi chúng ta thay inner join bằng left join để lấy ra giá trị bên trái 
-- e. nếu chưa có kq thi, thì sẽ không hiện ra
-- f. nếu có giáo viên nào ch phụ trách thì sẽ không hiện ra giáo viên đó


-- join nhiều bảng
-- a.
select ma_hs, ho_ten_hs, gioi_tinh, lop.ma_lop, ten_lop, nam_hoc, ma_GVcn, ho_ten_GV from lop 
inner join hoc_sinh on lop.ma_lop = hoc_sinh.ma_lop
inner join giao_vien on lop.ma_GVcn = giao_vien.ma_GV;
-- b 
select hoc_sinh.ma_hs, ho_ten_hs, hoc_ky, mon_hoc.ma_mh, ten_mh, diem_thi_giua_ky, diem_thi_cuoi_ky from hoc_sinh
inner join ket_qua_hoc_tap on hoc_sinh.ma_hs = ket_qua_hoc_tap.ma_hs
inner join mon_hoc on p.ma_mh = mon_hoc.ma_mh;

-- distinct
select distinct ho_ten_hs from hoc_sinh;
select distinct ma_lop from lop;

-- group by 
-- tính điểm tb cuối kỳ theo  mã mh
select ma_mh, max(diem_thi_cuoi_ky) as diemthicuoiky
from ket_qua_hoc_tap
group by ma_mh;
 
-- group by having 
-- a.liệt kê những địa chỉ khác nhau trong bảng học sinh bằng 2 cách
-- cách 1
select dia_chi 
from hoc_sinh
group by dia_chi;
-- cách 2 
select distinct dia_chi from hoc_sinh;
-- b. liệt kê ho_ten_hs, gioi_tinh 
select ho_ten_hs, gioi_tinh 
from hoc_sinh
group by ho_ten_hs, gioi_tinh ;
-- c.
select ho_ten_hs 
from hoc_sinh
group by ho_ten_hs;


-- bt subquery
-- a học sinh chưa từng thi môn nào --
select ho_ten_hs 
from hoc_sinh 
where ma_hs not in 
(select distinct ma_hs from ket_qua_hoc_tap);
-- b giáo viên chưa từng phụ trách bộ môn nào
select ho_ten_GV
from giao_vien
where ma_gv not in
(select distinct ma_gvpt from phu_trach_bo_mon );
-- c. giáo viên chưa từng chủ nhiệm lớp 
select ho_ten_GV 
from giao_vien
where ma_GV not in
(select distinct ma_GVcn from lop);
-- d. môn học chưa từng thi lần nào
select ten_mh
from mon_hoc
where ma_mh not in
(select distinct ma_mh from ket_qua_hoc_tap);
-- e. đếm sl địa chỉ, 

-- union
-- a. hs nam ở thanh khê và nữ ở hải châu
select ho_ten_hs, gioi_tinh, dia_chi 
from hoc_sinh
where gioi_tinh = 'nam' and dia_chi like '%Thanh Khê%'

union 

select ho_ten_hs, gioi_tinh, dia_chi
from hoc_sinh
where gioi_tinh = 'nữ' and dia_chi like '%Hải Châu%';

-- b. họ tên của học sinh và gv trong toàn trường
select ho_ten_hs as ho_ten, null as ho_ten_gv
from hoc_sinh

union 

select null as ho_ten, ho_ten_GV
from giao_vien;

-- c. họ tên, nghề nghiệp của hs và gv (nghề nghiệp bao gồm : hs và gv)
select ho_ten_hs as ho_ten, 'học sinh' as nghe_nghiep
from hoc_sinh
union
select ho_ten_Gv as ho_ten, 'giáo viên' as nghe_nghiep
from giao_vien;
-- d. những học sinh đang học ở 2019-2020 và hs chưa từng thi toán và tiếng việt
select ma_hs, 'năm học' as ngay_gio_thi_cuoi_ky
from ket_qua_hoc_tap
union
select ma_hs, 'chưa từng thi toán và tiếng việt' 
from ket_qua_hoc_tap;

-- limit and limit offset
select * from hoc_sinh limit 10 offset 1;

-- exists
select ho_ten_hs
from hoc_sinh hs
where exists(
	select 1
    from ket_qua_hoc_tap kq
    where kq.ma_hs = hs.ma_hs and kq.ma_mh = 'MH002');
    
-- in
select ho_ten_hs
from hoc_sinh hs
where ma_hs in (
	select ma_hs 
    from ket_qua_hoc_tap
    where ma_mh = 'MH002');




drop table giao_vien;
drop table hoc_sinh;
drop table ket_qua_hoc_tap;
drop table lop;
drop table mon_hoc;
drop table phu_trach_bo_mon;
