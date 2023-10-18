use Quanlysinhvien
go
CREATE TABLE KHOA
(
  MaKhoa varchar(6) primary key,
  TenKhoa nvarchar(30),
) 
go
CREATE TABLE NGHANH
(
  MaNghanh varchar(6) primary key,
  TenNghanh nvarchar(30),
  MaKhoa varchar(6) foreign key (MaKhoa) references KHOA(MaKhoa)
)
go
CREATE TABLE LOP
(
  MaLop varchar(6) primary key ,
  TenLop nvarchar (30) not null,
  MaNghanh varchar(6) foreign key (MaNghanh) references NGHANH(MaNghanh),
  KhoaHoc int not null,
  NamNhapHoc int default 1990
)
go
CREATE TABLE SINHVIEN
(
  MaSV varchar(6) primary key,
  HoTen nvarchar(30) not null,
  MaLop varchar(6) foreign key (MaLop) references LOP(MaLop),
  NgaySinh date default getdate(),
  GioiTinh nvarchar(5) default N'Nam',
  DiaChi nvarchar(70)
   
)
go
CREATE TABLE HOCPHAN
(
  MaHP varchar(6) primary key,
  TenHP nvarchar(30) not null,
  MaNghanh varchar(6) foreign key (MaNghanh) references NGHANH(MaNghanh),
  HocKy int
)
go
CREATE TABLE DIEMHP
(
   MaSV varchar(6) not null,
   MaHP varchar(6) not null,
   DiemHP int,
   primary key (MaSV,MaHP),
   foreign key (MaSV) references SINHVIEN(MaSV),
   foreign key (MaHP) references HOCPHAN(MaHP)
)
go
alter table DIEMHP 
alter column DIEMHP real
insert into KHOA values ('CNTT', N'Công Nghệ Thông Tin')
insert into KHOA values ('SP', N'Sư Pham')
insert into KHOA values ('KT', N'Ke Toan')
select * from KHOA
go
insert into NGHANH values ('1234', N'Su Pham Toan Tin', 'SP')
insert into NGHANH values ('2345', N'Lap Trinh', 'CNTT')
insert into NGHANH values ('3456', N'Ke Toan Thue', 'KT')
select * from NGHANH
go
insert into LOP values ('A1', N'Tin Hoc can ban','2345', '1', 2021)
insert into LOP values ('B1', N'Su Pham Toan','1234', '2', 2022)
insert into LOP values ('C1', N'Ke Toan Can Ban','3456', '3', 2023)
select * from LOP
go
insert into SINHVIEN values ('01', N'Mai Anh Tu','A1', '1/1/1986','Nam', 'Ha Noi')
insert into SINHVIEN values ('02', N'Dinh Thu Huong','B1', '3/3/1979','Nu', 'Thai Binh')
insert into SINHVIEN values ('03', N'Lam Quang Huy','C1', '1/1/1984','Nam', 'Nghe An')
select * from SINHVIEN
go
insert into HOCPHAN values ('9', N'HTML,CSS','2345', '1')
insert into HOCPHAN values ('8', N'Van hoc ','1234', '1')
insert into HOCPHAN values ('7', N'Toan Nang Cao','3456', '1')
select * from HOCPHAN
go
insert into DIEMHP values ('01', '6', '9')
insert into DIEMHP values ('02', '8', '8')
insert into DIEMHP values ('03', '7', '7')
select * from DIEMHP







 
