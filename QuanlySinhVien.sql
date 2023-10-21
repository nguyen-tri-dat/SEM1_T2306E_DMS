use SinhVien

Create table SinhVien
(
	MaSV char(15) primary key,
   TenSV nvarchar(20) ,
   GioiTinh bit ,
   NgaySinh datetime ,
   QueQuan nvarchar(50) ,
   MaLop char(5) 
)

Create table LopHoc
(
	MaLop char(5) primary key,
	TenLop nvarchar(30) not null,
	MaKhoa char(5) ,
	MaKhoaHoc char(5) ,
)

Create table MonHoc
(
	MaMH char(5) primary key,
	TenMH nvarchar(30) not null,
	SoTrinh int not null check ( (SoTrinh>0)and (SoTrinh<7) )
)

Create Table DiemThi
 (
   MaSV char(15) foreign key references SinhVien(MaSV),
   MaMH char(5) foreign key references MonHoc (MaMH),
   HocKy int check(HocKy>0) not null,
   DiemLan1 int ,
   DiemLan2 int
)

Create Table ThongTinKhoaHoc
(
	MaKhoaHoc char(5) primary key,
	MaKhoa char(5) ,
	TenKhoa nvarchar(30) not null,
	TenKhoaHoc nvarchar(20) not null,
	DiaChi nvarchar(100) not null,
	DienThoai varchar(20) not null
)

insert into DiemThi
(
	MaSV,
	MaMH,
	HocKy,
	DiemLan1,
	DiemLan2
)
Values
('0241060518','SQL',5,4,6),
('0241060218','Mang',5,4,5),
('0241060218','JV',5,4,4),
('0241060518','JV',5,4,6),
('0241060218','PTHT',4,2,5)

select * from DiemThi

insert into SinhVien values('0241060218',N'Nguyễn Minh Một',1,'08/27/1989','Hải Dýõng','MT3')
insert into SinhVien values('0241060318',N'Nguyễn Minh Hai',1,'2/08/1989','Nam Dinh','MT1')
insert into SinhVien values('0241060418',N'Nguyễn Minh Ba',1,'7/04/1989','Ninh Binh','MT2')
insert into SinhVien values('0241060518',N'Nguyễn Minh Bốn',1,'7/08/1989','Ninh Binh','MT1')
insert into SinhVien values('0241060618',N'Nguyễn Minh Nãm',0,'7/08/1989','Nam Dinh','MT3')
insert into SinhVien values('0241060718',N'Nguyễn Minh Sáu',1,'7/08/1989','Ha Noi','MT3')
insert into SinhVien values('0241060818',N'Nguyễn Minh Bảy',1,'7/08/1989','Ha Noi','MT3')
insert into SinhVien values('0241060918',N'Nguyễn Minh Tám',1,'7/08/1989','Hai Duong','MT2')
insert into SinhVien values('0241060128',N'Nguyễn Minh Chín',1,'7/08/1989','Hai Duong','MT2')
insert into SinhVien values('0241060138',N'Nguyễn Minh Mýời',1,'7/08/1989','Ha Nam','MT2')
insert into SinhVien values('0241060148',N'Nguyễn Minh Mýời Một',0,'7/08/1989','Bac Giang','MT4')
insert into SinhVien values('0241060158',N'Nguyễn Minh Mýời Hai',0,'7/08/1989','Ha Noi','MT4')
insert into SinhVien values('0241060168',N'Nguyễn Minh Mýời Ba',1,'7/08/1989','Hai Duong','MT4')
insert into SinhVien values('0241060178',N'Nguyễn Minh Mýời Bốn',1,'7/08/1989','Nam Dinh','MT1')
insert into SinhVien values('0241060978',N'Nguyễn Minh Mýời Nãm',1,'7/08/1989','Nam Dinh','KT1')

select * from SinhVien

insert into MonHoc values('SQL','SQL',5)
insert into MonHoc values('JV','Java',6)
insert into MonHoc values('CNPM','Công Nghệ phần mềm',4)
insert into MonHoc values('PTHT','Phân tích hệ thống',4)
insert into MonHoc values('Mang','Mạng máy tính',5)


insert into ThongTinKhoaHoc
(
	MaKhoaHoc,
	MaKhoa,
	TenKhoa,
	TenKhoaHoc,
	DiaChi,
	SoDienThoaiKhoa
)
Values
('K1','CNTT',N'Công nghệ thông tin',N'Ðại học khóa 1',N'Tầng 4 nhà B','043768888'),
('K2','CK',N'Cơ Khí',N'Ðại học khóa 2',N'Tầng 5 nhà B','043768888'),
('K3','DT',N'Ðiện tử',N'Ðại học khóa 3',N'Tằng 6 nhà B','043768888'),
('K4','KT',N'Kinh Tế',N'Ðại học khóa 4',N'Tầng 2 nhà C','043768888')

