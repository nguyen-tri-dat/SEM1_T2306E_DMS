use CustomerBangSinhVien
go
Create Table SinhVien
(
MaSv char(15) Primary Key not null,
HoTen nvarchar(30) not null, 
NgaySinh date,
GioiTinh nvarchar(10) not null,
DiaChi nvarchar(20) not null,
MaLop char(15) not null
)
Create Table Lop
(
MaLop char(15) primary key not null,
TenLop nvarchar(20) not null,
MaKhoa char(20) not null
)
Create Table Khoa 
(
MaKhoa char(20) primary key not null,
TenKhoa nvarchar(30) not null
)
Create table Mon
(
MaMon char(20) primary key not null,
TenMon nvarchar(30) not null,
)
Create Table DiemTHi
(
MaSv char(15) not null,
MaMon char(20) not null,
LanThi char(10) not null,
DiemThi char(15) not null
)
Create Table GiangVien
(
MaGv char(20) not null,
TenGv nvarchar(30) not null,
MaKhoa char(20) not null,
ChuyenNganh nvarchar(30) not null
)
alter table dbo.GiangVien add foreign key(MaKhoa) references dbo.Khoa(MaKhoa)
alter table dbo.Lop add foreign key(MaKhoa) references dbo.Khoa(MaKhoa)
alter table dbo.DiemTHi add foreign key(MaSv) references dbo.SinhVien(MaSv)
alter table dbo.DiemTHi add foreign key(MaMon) references dbo.Mon(MaMon)
alter table dbo.SinhVien add foreign key(MaLop) references dbo.Lop(MaLop)

insert dbo.SinhVien
values ('2221030068',N'Nguyễn Ngọc Minh','20040511',N'Nữ',N'Ninh Bình','DCTDDH67')

insert dbo.Mon
values('7050450',N'Đo đạc địa chính')

insert dbo.Lop
values('DCTDDH68',N'Địa tin học','TĐBĐ')

insert dbo.Khoa
values('CNTT',N'Công Nghệ Thông Tin')

insert dbo.GiangVien
values('01',N'Nguyễn Văn A','CNTT','Công nghệ thông tin')

insert dbo.DiemTHi
values('2221030050','7010104','1','8')

alter table DiemThi add primary key(MaSv,MaMon)
Alter table GiangVien add primary key(MaGv)


