
-- Tạo Database
IF Not EXISTS (SELECT name FROM master.sys.databases WHERE name = 'Quanlyhocsinh')
BEGIN
Create Database Quanlyhocsinh
END
GO
-- Tạo Table trong Database
Use Quanlyhocsinh
If Not Exists(select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME ='Hososinhvien')
Begin
Create Table Hososinhvien
(
    Masosinhvien nvarchar(20) not null,
    Hotensinhvien nvarchar(64) null,
    Malopsinhvien nvarchar(10) null,
    Khoahocsinhvien nvarchar(20) null,
    PRIMARY KEY (Masosinhvien)
)
end
Go
If Not Exists( select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME ='Bangdiemsinhvien')
Begin
Create Table Bangdiemsinhvien(
    Mabangdiemsinhvien NVARCHAR(10) not null,
    Bangdiemsinhvien NVARCHAR(48) not null,
    Diemsinhvien NVARCHAR(10) not null
    PRIMARY KEY (Mabangdiemsinhvien)
)
End
Go
If Not Exists( select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME ='Diemdanhsinhvien')
Begin
Create Table Diemdanhsinhvien(
    Madiemdanhsinhvien NVARCHAR(10) not null,
    Sobuoidiemdanhsinhvien NVARCHAR(48) not null
    PRIMARY KEY (Madiemdanhsinhvien)
)
End
Go
If Not Exists( select * from INFORMATION_SCHEMA.TABLES where TABLE_NAME ='Thongtinsinhvien')
Begin
Create Table Thongtinsinhvien(
    Masosinhvien NVARCHAR(10) not null,
    Mabangdiemsinhvien NVARCHAR(48) not null,
    Ketquaxeploaisinhvien NVARCHAR(10) not null
    PRIMARY KEY (Masosinhvien,Mabangdiemsinhvien)
)
End

-- Insert dữ liệu vào Table
Insert into Hososinhvien (
    Masosinhvien,
    Hotensinhvien,
    Malopsinhvien,
    Khoahocsinhvien
)
VALUES(
    'A123',
    N'Đào Viết Đức',
    'A1',
    '2023'
)
,(
    'A124',
    N'Nguyễn Cao Thắng',
    'A2',
    '2023'
)
,(
    'A125',
    N'Nguyễn Đình Nam',
    'A3',
    '2023'
)

Insert Into Bangdiemsinhvien  VALUES('1',N'Lập Trình C','10'),('2','Database','9'),('3','UI/UX','8')
Insert Into Diemdanhsinhvien  VALUES('A1','8'),('A2','8'),('A3','9')
Insert Into Thongtinsinhvien  VALUES('A123','1','A'),('A124','2','A'),('A125','3','B')

-- Select group
Use Quanlyhocsinh
SELECT * from Thongtinsinhvien 
SELECT * from Hososinhvien
SELECT * from Bangdiemsinhvien
SELECT * from Diemdanhsinhvien
-- Group by
Use Quanlyhocsinh
SELECT Masosinhvien AS MaKhachHang,SUM(Ketquaxeploaisinhvien) AS SOLUONG from Thongtinsinhvien GROUP BY (Masosinhvien) ORDER BY MaKhachHang DESC
SELECT Masosinhvien AS MaKhachHang,SUM(Ketquaxeploaisinhvien) AS SOLUONG from Thongtinsinhvien GROUP BY (Masosinhvien)
HAVING  SUM(Ketquaxeploaisinhvien) >6

-- Transaction
Use Quanlyhocsinh
begin transaction
 begin transaction
  select * from Hososinhvien where Masosinhvien = 'A123'
  delete Hososinhvien where Masosinhvien = 'A123'
  select * from Hososinhvien where Masosinhvien = 'A123' 
  commit;
  rollback;
  select * from Hososinhvien where Masosinhvien = 'A123'

-- Left Join
Use Quanlyhocsinh
select * from Hososinhvien A left join Thongtinsinhvien B on A.Masosinhvien=B.Masosinhvien


