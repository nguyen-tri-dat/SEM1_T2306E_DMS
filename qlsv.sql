Create Database quanlisinhvien
go
use quanlisinhvien
go
create table SinhVien(
MaSinhVien int not null ,
HoTen nvarchar(30) not null,
DiaChi nvarchar(30) not null,
SoDienThoai nvarchar(30) not null,
primary key(MaSinhVien)
)

go

Create table Lophoc(
TenLop char(20) not null,
MaLop Char(20) not null,
Khoa char(20) not null,
MonHoc char(20) not null,
primary key(MaLop)
)

Go

Create table MonHoc(
TenMonHoc nvarchar(20) not null,
MaMonHoc char(20) not null
Primary key (MaMonHoc)
)

Go

Create table DiemThi(
MaSinhVien int not null ,
MonHoc char(20) not null,
MaLop char(20) not null,
Diem int not null,
primary key(Diem))

Go

Create table NgheNghiep(
MaNgheNghiep char(20) not null,
TenNgheNGhiep nvarchar(20) not null,
Primary Key(MaNgheNghiep)
)
Go
Insert into NgheNghiep

Values
('It','Sinh Vien')

Insert into SinhVien

Values ('1','Cam Trong Hoan','Linh Nam','0866570091')


Insert into Lophoc 
Values ('LOP 1','111','1','IT')

insert into DiemThi 
Values('1','IT','111','8')

insert into MonHoc
Values('IT', '111')