create table NHANVIEN(
MaNV int primary key not null auto_increment,
HoNV varchar(100),
TenNV varchar(100),
GioiTinh tinyint,
NgaySinh datetime,
DiaChi varchar(255),
DienThoai varchar(10)
);
create table KHACHHANG(
MaKH int primary key not null auto_increment,
HoTenKH varchar(100),
DiaChi varchar(255),
DienThoai varchar(10)
);
create table HOADON(
MaHD int primary key not null auto_increment,
MaKH int,
MaNV int,
NgayLapHD datetime,
NgayNhanHang datetime,
foreign key (MaKH) references KHACHHANG(MaKH),
foreign key (MaNV) references NHANVIEN(MANV)
)