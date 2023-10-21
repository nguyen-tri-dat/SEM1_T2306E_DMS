create database QuanLySV
go
use QuanLySV
go
create table ThongTinSV(
MaSV int not null,
Hoten nvarchar(20) not null,
Diachi nvarchar(20) not null,
Noisinh nvarchar(20) not null,
Dienthoai char(10) not null
constraint PK_ThongTinSV Primary Key(MaSV)
)
go
create table CoVanLop(
Lop char(20) not null,
Covanhoctap nvarchar(20) not null,
constraint PK_CoVanLop Primary Key(Lop)
)
go
create table ThongtinCoVan(
Covanhoctap nvarchar(20) not null,
SDTCV char(10) not null
constraint PK_ThongtinCoVan Primary Key(Covanhoctap)
)
go
create table ThongTinNT(
Nguoithan nvarchar(20) not null,
DiachiNT nvarchar(20) not null,
SDTNT char(10)not null
constraint PK_ThongTinNT Primary Key(Nguoithan)
)
go
create table NTSV(
MaSV int not null,
Nguoithan nvarchar(20) not null
constraint PK_NTSV Primary Key(Nguoithan,MaSV)
)
go
create table ThongTinLop(
Lop char(20) not null,
Khoa char(10) not null,
Bomon char(10) not null
constraint PK_ThongTinLop Primary Key(Lop)
)
go
alter table CoVanLop add Constraint FK_CoVanLop foreign key(Covanhoctap) references ThongtinCoVan(Covanhoctap);
alter table NTSV add Constraint FK_NTSV foreign key(Nguoithan) references ThongtinNT(Nguoithan);
alter table NTSV add Constraint FK_NTSV2 foreign key(MaSV) references ThongtinSV(MaSV);
alter table ThongTinLop add Constraint FK_ThongTinLop foreign key(Lop) references CoVanLop(Lop);

insert into ThongTinSV values(1,N'Trần Hà',N'Nam Từ Liêm',N'Hà Nam','0911556688'),
(2,N'Đoàn Trang',N'Bắc Từ Liêm',N'Hà Nội','0941236784'),
(3,N'Minh Tú',N'Hà Đông',N'Thái Nguyên','0941236785'),
(4,N'Anh Tuấn',N'Cầu Giấy',N'Bắc Giang','0941236786'),
(5,N'Nguyễn Dũng',N'Ba Đình',N'Bắc Ninh','0941236787'),
(6,N'Mai Chương',N'Hoàn Kiếm',N'Hưng Yên','0941236788');
insert into CoVanLop values('CKO1','Thắng'),
('CKO2',N'Minh Hùng'),
('CNTT1',N'Hào'),
('KHMT1',N'Khá'),
('KTMT2',N'Lai'),
('KTDN',N'Cường');
insert into ThongtinCoVan values('Thắng','0977150854'),
(N'Minh Hùng','0977150855'),
(N'Hào','0977150856'),
(N'Khá','0977150857'),
(N'Lai','0977150858'),
(N'Cường','0977150859');
insert into ThongTinNT values('Bình',N'Hà Nam','0123546887'),
(N'Thu',N'Hà Nội','0123546888
'),
(N'Chung',N'Thái Nguyên','0123546889
'),
(N'Minh',N'Bắc Giang','0123546890
'),
(N'Đăng',N'Bắc Ninh','0123546891
'),
(N'Quân',N'Hưng Yên','0123546892
');
insert into NTSV values(1,N'Bình'),
(2,N'Thu'),
(3,N'Chung'),
(4,N'Minh'),
(5,N'Đăng'),
(6,N'Quân');
insert into ThongTinLop values('CKO1','CK','CKO'),
('CKO2','CK','CKO'),
('CNTT1','CNTT','MT'),
('KHMT1','CNTT','KHDL'),
('KTMT2','CNTT','KHDL'),
('KTDN','KT','KTKD');
select * from ThongTinLop