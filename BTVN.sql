CREATE DATABASE QLHS
GO
IF NOT EXISTS( SELECT* FROM information_schema. tables where TABLE_name='sinhvien' )
CREATE TABLE sinhvien(
    Masv NVARCHAR(30)  NULL ,
    Ten NVARCHAR (40) NOT NULL,
    Namsinh NVARCHAR (30) NOT NULL,
    Dantoc NVARCHAR(20) NOT NULL,
    Malop NVARCHAR(20) NOT NULL
)
INSERT INTO sinhvien(
    Masv,
    Ten,
    Namsinh,
    Dantoc,
    Malop
    
)
VALUES (
    'a121',N'Nguyễn tri đạt',2000,'kinh','th12'
    ),
   (
   'a122',N'phạm nhật vượng',2000,'kinh','th13'
    ),
    (
   'a123',N'trần đình long ',1967,'kinh','th14'
    ),
    (
    'a124',N'trương  gia bình',1947,'kinh','th15'
    ),
    (
    'a125',N'nguyễn thị phương thảo',1978,'kinh','th16'
    )
    GO
    SELECT * FROM [sinhvien]

GO
IF NOT EXISTS( SELECT* FROM information_schema. tables where TABLE_name='monhoc' )
CREATE TABLE monhoc(
    MaMH NVARCHAR(30)  NULL ,
    TENMH NVARCHAR (40) NOT NULL,
    MaNghanh NVARCHAR(20) NOT NULL,
    HocKi NVARCHAR (10) NOT NULL
)
INSERT INTO monhoc(
    MaMH,
    TENMH,
    MaNghanh,
    HocKi
    
)
VALUES(
   'th23',N'toán cao cấp','A12',1
),
(
    'th24',N'triết học','A13',1
),
(
    'th25',N'cấu trúc dữ liệu','A14',1
)
SELECT * FROM monhoc

GO
IF NOT EXISTS( SELECT* FROM information_schema.tables where TABLE_name='diemthi' )
CREATE TABLE diemthi(
    Diem NVARCHAR(10) NOT NULL PRIMARY KEY,
    Masv NVARCHAR(20) NOT NULL,
    MaMH NVARCHAR(20) NOT NULL,
    Lanthi NVARCHAR(10) NOT NULL
    
)
INSERT INTO diemthi(
    Masv,
    MaMH,
    Lanthi,
    Diem
)

VALUES
(
    'a121','th21',2,8.7
),
(
    'a122','th22',1,9.7
),
(
    'a123','th23',1,8.0
),
(
    'a124','th24',3,8.2
)
SELECT*FROM diemthi



GO
IF NOT EXISTS( SELECT* FROM information_schema.tables where TABLE_name='lop' )

CREATE TABLE lop(
  Malop NVARCHAR ( 20) NOT NULL,
  Tenlop NVARCHAR (20) NOT NULL  ,
  MaNghanh NVARCHAR(20) NOT NULL,
  Khoahoc NVARCHAR(20) NOT NULL
  PRIMARY KEY (Malop)
)
INSERT INTO lop(
    Malop,
    Tenlop,
    Manghanh,
    Khoahoc
)
VALUES
(
    'th2306',N'hoctap','A12','CN'
),
(
    'th22307','doanket','A13','CN'
)
SELECT *FROM lop

GO
CREATE TABLE NGHANH(
    MaNghanh NVARCHAR(20) NOT NULL,
    TenNganh NVARCHAR( 20) NOT NULL,
    MaKhoa NVARCHAR(20) NOT NULL
)
INSERT INTO NGHANH(
    MaNghanh,
    TenNganh,
    MaKhoa
)
VALUES
(
    'A12','CNTT','B1'
),
(
    'A13','CNTT','B2'
)
SELECT *FROM NGHANH

CREATE TABLE Khoa(
    Makhoa NVARCHAR (20) NOT NULL,
    Tenkhoa NVARCHAR(20) NOT NULL
)
INSERT INTO Khoa(
    Makhoa,
    Tenkhoa
)
VALUES(
    'B1','CNTT'
),
(
    'B2','CNTT'
)
SELECT * FROM Khoa