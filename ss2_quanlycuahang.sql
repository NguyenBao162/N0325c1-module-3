create database store_manager; -- tạo database--
use store_manager; -- truy cập db muốn chỉnh sửa--
create table product( -- tạo bảng trong db--
masanpham int auto_increment primary key, -- id tự động tăng--
tensanpham nvarchar(50) not null,
mota text ,
gia double ,
soluong int 
);
insert into product (tensanpham, mota, gia, soluong) -- add dữ liệu vào bảng--
values 
('iphone 8 plus' , 'nguyên zin', 5000000, 20),
('iphone xs max' , 'nguyên zin', 5000000, 20),
('iphone 11 max' , 'nguyên zin', 6000000, 30),
('iphone 12 max' , 'nguyên zin', 7000000, 40),
('iphone 13 max' , 'nguyên zin', 80000000, 50);
select * from product; -- truy vấn dữ liệu bảng product--
select masanpham, tensanpham, gia from product; --  truy vấn từng cột trong bảng--
select masanpham, tensanpham, gia from product where gia < 10000000; -- truy vấn sản phẩm có giá dưới 10 củ
update product set gia = gia * 1.1; --  update giá trong bảng product lên 10% mà không dùng WHERE
update product set soluong = 55 where masanpham = 3; -- update số lượng của sp có mã là 3 thành 55 dùng WHERE 
set sql_safe_updates = 0;
alter table product add column Barcode nvarchar(50); -- thêm trường barcode vào bảng hiện tại
alter table product add column warranty nvarchar(50) default '6 tháng'; --  thêm trường warranty vào bảng với giá trị mặc định là 6 tháng
delete from product; -- xoá dữ liệu kh dùng where
delete from product where masanpham = 3; -- xoá dữ liệu dùng where 
drop table product ; -- xoá tất cả trong bảng product
drop database store_manager; -- xoá csdl 
drop database if exists store_manager; -- xoá bằng cách ktra xem db đã tồn tại rồi mới xoá



