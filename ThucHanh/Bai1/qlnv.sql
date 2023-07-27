
create table SinhVien(
MaSV int primary key,
HoTen varchar(100),
NamSinh int,
DanToc varchar(20),
MaLop int,
foreign key (MaLop) references Lop(MaLop)
);
create table Lop(
MaLop int primary key,
TenLop varchar(100)
)