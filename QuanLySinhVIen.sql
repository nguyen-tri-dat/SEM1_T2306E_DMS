--QUẢN LÍ SINH VIÊN--

/*=====================Create DataBase======================*/
use master
go
if exists(select name from sysdatabases where name='QuanLyDiemSV')
drop Database QuanLyDiemSV
go
Create Database QuanLyDiemSV
go
use QuanLyDiemSV
go
/*=============DANH MUC KHOA==============*/
Create table DMKhoa
(
MaKhoa char(2) primary key,
TenKhoa nvarchar(30)not null,
)
/*==============DANH MUC SINH VIEN============*/
Create table DMSV
(
MaSV char(3) not null primary key,
HoSV nvarchar(15) not null,
TenSV nvarchar(7)not null,
Phai nchar(7),
NgaySinh datetime not null,
NoiSinh nvarchar (20),
MaKhoa char(2),
HocBong float,
)
/*===================MON HOC========================*/
create table DMMH
(
MaMH char (2) not null,
TenMH nvarchar (25)not null,
SoTiet tinyint
Constraint DMMH_MaMH_pk primary key(MaMH)
)
/*=====================KET QUA===================*/
Create table KetQua
(
MaSV char(3) not null,
MaMH char (2)not null ,
LanThi tinyint,
Diem decimal(4,2),
Constraint KetQua_MaSV_MaMH_LanThi_pk primary key (MaSV,MaMH,LanThi)
)
/*==========================TAO KHOA NGOAI==============================*/
Alter table dmsv
add Constraint DMKhoa_MaKhoa_fk foreign key (MaKhoa)
References DMKhoa (MaKhoa)
Alter table KetQua
add constraint KetQua_MaSV_fk foreign key (MaSV) references DMSV (MaSV),
constraint DMMH_MaMH_fk foreign key (MaMH) references DMMH (MaMH)

/*==================NHAP DU LIEU====================*/
/*==============NHAP DU LIEU DMMH=============*/
Insert into DMMH(MaMH,TenMH,SoTiet)
values('01',N'Cơ Sở Dữ Liệu',45)
Insert into DMMH(MaMH,TenMH,SoTiet)
values('02',N'Trí Tuệ Nhân Tạo',45)
Insert into DMMH(MaMH,TenMH,SoTiet)
values('03',N'Truyền Tin',45)
Insert into DMMH(MaMH,TenMH,SoTiet)
values('04',N'Đồ Họa',60)
Insert into DMMH(MaMH,TenMH,SoTiet)
values('05',N'Văn Phạm',60)
/*==============NHAP DU LIEU DMKHOA=============*/
Insert into DMKhoa(MaKhoa,TenKhoa)
values('AV',N'Anh Văn')
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TH',N'Tin Học')
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TR',N'Triết')
Insert into DMKhoa(MaKhoa,TenKhoa)
values('VL',N'Vật Lý')
/*==============NHAP DU LIEU DMSV=============*/
SET DATEFORMAT DMY
GO
Insert into DMSV
values('A01',N'Nguyễn Thị',N'Hải',N'Nữ','23/02/1990',N'Hà Nội','TH',130000)
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)

values('A02',N'Trần Văn',N'Chính',N'Nam','24/12/1992',N'Bình Định','VL',150000)

Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A03',N'Lê Thu Bạch',N'Yến',N'Nữ','21/02/1990',N'TP Hồ Chí Minh','TH',170000)
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A04',N'Trần Anh',N'Tuấn',N'Nam','20/12/1990',N'Hà Nội','AV',80000)
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B01',N'Trần Thanh',N'Mai',N'Nữ','12/08/1991',N'Hải Phòng','TR',0)
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B02',N'Trần Thị Thu',N'Thủy',N'Nữ','02/01/1991',N'TP Hồ Chí Minh','AV',0)
/*==============NHAP DU LIEU BANG KET QUA=============*/
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',1,3)
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',2,6)
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','02',2,6)
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','03',1,5)
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',1,4.5)
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',2,7)
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','03',1,10)
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','05',1,9)
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',1,2)
Insert into KetQua(MaSV,MaMH,LanThi,Diem)


/*===============CAP NHAT THONG TIN=================*/
update dmmh
set sotiet=45
where mamh='05'

update dmsv
set tensv=N'Kỳ',phai ='Nam'
where masv='b01'

/*===============SHOW CO BAN=================*/
--Danh sách các sinh viên gồm thông tin sau: Mã sinh viên, họ tên sinh viên, Phái, Ngày
--sinh. Danh sách sẽ được sắp xếp theo thứ tự Nam/Nữ.
select masv as 'Mã sinh viên',hosv+' '+tensv as 'họ tên sinh viên',phai as 'Phái',ngaysinh as 'Ngày sinh'
from dmsv
order by phai asc

--Danh sách các môn học có tên bắt đầu bằng chữ T, gồm các thông tin: Mã môn, Tên
--môn, Số tiết.
select mamh as 'Mã môn học',tenmh as 'Tên môn học',sotiet as 'số tiết'
from dmmh
where tenmh like 't%'

-- Danh sách các sinh viên của khoa Anh văn và khoa Vật lý, gồm các thông tin: Mã sinh
--viên, Mã khoa, Phái.
Select MaSV As N'Mã Sinh Viên',MaKhoa As N'Mã Khoa',Phai As N'Phái'
From DMSV
Where MaKhoa='AV' or MaKhoa='VL'