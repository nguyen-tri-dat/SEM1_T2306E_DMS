
create database SINHVIEN
use SINHVIEN


CREATE TABLE SinhVien (
    MaSV INT PRIMARY KEY,
    TenSV VARCHAR(50),
    NgaySinh DATE
);


CREATE TABLE LopHoc (
    MaLop INT PRIMARY KEY,
    TenLop VARCHAR(50)
);


CREATE TABLE MonHoc (
    MaMonHoc INT PRIMARY KEY,
    TenMonHoc VARCHAR(50)
);


CREATE TABLE DiemHoc (
    MaSV INT,
    MaMonHoc INT,
    Diem FLOAT,
    PRIMARY KEY (MaSV, MaMonHoc),
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV),
    FOREIGN KEY (MaMonHoc) REFERENCES MonHoc(MaMonHoc)
);

INSERT INTO SinhVien VALUES
(1,'TRINH VAN SON','1997-7-16')
,(2,'TRINH VAN LINH', '1999-7-6')
,(3,'NGUYEN VAN TUAN','1998-8-1')
ALTER TABLE SinhVien ADD MaLop INT;

Update SinhVien set  MaLop = 2306 where MaSV = 1
Update SinhVien set  MaLop = 2307 where MaSV = 2
Update SinhVien set  MaLop = 2308 where MaSV = 3
Alter table SinhVien add foreign key (MaLop) references LopHoc(MaLop)

INSERT INTO LopHoc VALUES
(2306,'E')
,(2307,'F')
,(2308,'H')

INSERT INTO MonHoc VALUES
(1111,'JAVASCRIP')
,(2222,'PHP')

INSERT INTO DiemHoc VALUES 
(1,1111,8.2)
,(2,2222,9.5)
,(3,1111,7.8)

USE SINHVIEN

select * from SinhVien
select * from LopHoc



