USE QuanLySinhVien
CREATE TABLE LOP
(
  MaLop varchar(6) primary key ,
  TenLop nvarchar (30) not null,
  )
  go

CREATE TABLE SINHVIEN
(
  MaSV varchar(6) primary key,
  HoTen nvarchar(30) not null,
  MaLop varchar(6) foreign key (MaLop) references LOP(MaLop),
  NgaySinh date,
  GioiTinh nvarchar(5),
  DiaChi nvarchar(70)
   
)
go
CREATE TABLE DIEMTB
(
   MaSV varchar(6) not null,
   MaLop varchar(6) not null,
   DiemTB real,
   primary key (MaSV,MaLop),
   foreign key (MaSV) references SINHVIEN(MaSV),
   foreign key (MaLop) references LOP(MaLop)
   )
go
insert into LOP values ('A1', N'Lập trình')
insert into LOP values ('B1', N'kế toán')
insert into LOP values ('C1', N'Tin học')
insert into LOP values ('D1', N'Quan trị kinh doanh')

insert into SINHVIEN values ('A111', N'Nguyễn Văn A','A1','01/01/2003','nam','Ninh Bình')
insert into SINHVIEN values ('B122', N'Nguyễn Văn B','A1','01/02/2003','nam','Nam Định')
insert into SINHVIEN values ('C133', N'Nguyễn Văn C','A1','01/03/2003','nam','Hà Tây')
insert into SINHVIEN values ('D144', N'Nguyễn Văn A','A1','01/04/2003','nam','Thanh Hóa')
go

insert into DIEMTB values ('A111','A1','9')
insert into DIEMTB values ('B122','A1','8')
insert into DIEMTB values ('C133','A1','7')
insert into DIEMTB values ('D144','A1','6')
 
SELECT * from LOP 
select * from SINHVIEN 
select * from DIEMTB
select * from LOP A left join DIEMTB B ON A.MaLop = B.MaLop 


