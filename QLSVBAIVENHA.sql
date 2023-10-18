Create Database QLSV
GO
use QLSV
GO

CREATE TABLE KHOA
(
  KHOAID varchar(6) primary key,
  TENKHOA nvarchar(30),
) 
go
CREATE TABLE NGANHHOC
(
  NGANHID varchar(8) primary key,
  TENNGANH nvarchar(20),
  KHOAID varchar(6) foreign key (KHOAID) references KHOA(KHOAID),
)
go
CREATE TABLE TTLOP
(
  LOPID varchar(8) primary key ,
  TENLOP nvarchar (20) default 'T2306E-FPT Aptech' not null,
  NGANHID varchar(8) foreign key (NGANHID) references NGANHHOC(NGANHID),
  KHOAHOC int not null,
  NAMHOC int default 2023
)
go
CREATE TABLE TTSV
(
  SVID varchar(8) primary key,
  HOTEN nvarchar(25) not null,
  LOPID varchar(8) foreign key (LOPID) references TTLOP(LOPID),
  NGAYSINHSV date default getdate(),
  GIOITINHSV nvarchar(8) default N'Khác',
  DIACHISV nvarchar(60) 
)
go
CREATE TABLE HOCPHAN
(
  HPID varchar(8) primary key,
  TENHP nvarchar(30) not null,
  NGANHID varchar(8) foreign key (NGANHID) references NGANHHOC(NGANHID),
  KYTHU int
)
go
CREATE TABLE DIEMHP
(
   SVID varchar(8) not null,
   HPID varchar(8) not null,
   DIEMHP float,
   primary key (SVID,HPID),
   foreign key (SVID) references TTSV(SVID),
   foreign key (HPID) references HOCPHAN(HPID)
)
go


Insert into KHOA(
	KHOAID, TENKHOA)
Values ('01TK',N'Thiết kế'),
		('01CN',N'Chăn Nuôi'),
		('01HKVT',N'HK Vũ Trụ'), 
		('01VLD', N'CN Vật Liệu Đúc'),
		('01VCT',N'Võ Cổ Truyền');
GO

insert into NGANHHOC (
  NGANHID,
  TENNGANH,
  KHOAID)
values ('N01T',N'TK Thời Trang','01TK'),
		('01TS',N'Thủy Sản','01CN'),
		('01DTVT',N'Đóng Tàu VT','01HKVT'), 
		('01NCVL', N'NC Vật Liệu','01VLD'),
		('01DS',N'Dưỡng Sinh','01VCT');
GO

insert TTLOP(
		  LOPID,TENLOP,NGANHID,KHOAHOC)
Values	('001TKTT',N'TKTT01','N01T','1'),
		('002TS',N'TS02','01TS','2'),
		('003DTVT',N'DTVT03','01DTVT','3'),
		('004NCVL',N'NCVL04','01NCVL','4'),
		('001DSNQ',N'DSNQ01','01DS','1')
GO

INSERT TTSV(
		  SVID,HOTEN,LOPID,DIACHISV)
VALUES	('6688TKTT',N'Lò A Tú','001TKTT',N'Phố Lò Vôi, Hà Nội, VIệt Nam'),
		('6789TS',N' Dàng Thị Hường','002TS',N'Phố Hàng Hiệu, Hà Nội, VIệt Nam'),
		('6666DTVT',N'Nông Tuấn Anh','003DTVT',N'Phố Lò Đúc, Hà Nội, VIệt Nam'),
		('6868NCVL',N'Đới Hoàng Tùng','004NCVL',N'Phố Hàng Hành, Hà Nội, VIệt Nam'),
		('8899DSNQ',N'Lò Văn Dé','001DSNQ',N'Phố Hàng Hiệu, Hà Nội, VIệt Nam');
GO

INSERT HOCPHAN(
		  HPID,TENHP,NGANHID,KYTHU)
VALUES	('TKCB01',N'Thiết Kế Căn Bản','N01T','1'),
		('TSUD01',N'Địa Lý Tả Ao','01TS','2'),
		('DTVTCB01',N'ĐTVT Cơ Bản','01DTVT','1'),
		('NCVLUD01',N'NC Vật Liệu Cơ Bản','01NCVL','2'),
		('DSNQTC01',N'Quyền Tại Chỗ','01DS','1')
GO

INSERT  DIEMHP(
		   SVID,HPID,DIEMHP)
VALUES	('6688TKTT','TKCB01','9.5'),
		('6789TS','TSUD01','10'),
		('6666DTVT','DTVTCB01','9.75'),
		('6868NCVL','NCVLUD01','10'),
		('8899DSNQ','DSNQTC01','9.5');
GO

SELECT * FROM TTSV
WHERE HOTEN like N'Lò%' or DIACHISV like N'%Hiệu%' or DIACHISV like N'%Hành%'
GO


SELECT * FROM TTSV 
WHERE HOTEN LIKE N'Dàng Thị Hường' or HOTEN LIKE N'Lò A Tú'
GO

SELECT * FROM TTSV