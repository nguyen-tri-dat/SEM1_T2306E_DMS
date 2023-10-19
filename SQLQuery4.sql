create database quanly
use quanly
create table sinhvien
(
	masinhvien char(12) primary key,
	hoten nvarchar(34),
	gioitinh char(4),
	ngaysinh char(23),
	quequan char(23),
	email char(45) 
)
create table monhoc
(
	mamonhoc char(12) primary key,
	tenmonhoc char(23)
)
create table dangky
(
	madangky char(12) primary key,
	mamonhoc char(12) foreign key references monhoc(mamonhoc) ,
	masinhvien char(12) foreign key references sinhvien(masinhvien)
)
create table diemthi
(
	madiemthi char(12) primary key,
	masinhvien char(12)foreign key references sinhvien(masinhvien),
	mamonhoc char(12)foreign key references monhoc(mamonhoc),
	diem char(123)
)
insert into sinhvien
values
('102',N'nguyễn đức việt','nam','21/11/1997','ha noi','123'),
('203',N'nguyễn thị A','nu','11/10/2004','ha noi','124'),
('304',N'nguyễn văn B','nam','21/1/2003','ha noi','125')
insert into monhoc
values
('M1','lap trinh co ban'),
('M2','lap trinh wed'),
('M3','cau truc du lieu'),
('M4','lay trinh java')
insert into dangky
values
('21','M1','101'),
('22','M2','101'),
('23','M3','101'),
('24','M4','101'),
('11','M1','102'),
('12','M2','102'),
('13','M3','102'),
('14','M4','103'),
('15','M1','103'),
('16','M2','103')
insert into diemthi
values
('1','101','M1','A'),
('2','101','M2','A'),
('3','101','M3','A'),
('4','101','M4','A'),
('5','102','M1','B'),
('6','102','M2','A'),
('7','102','M3','C'),
('8','103','M1','A'),
('9','103','M2','B'),
('10','103','M4','B')

select hoten,tenmonhoc,diem from sinhvien A left join diemthi B on A.masinhvien = B.masinhvien left join monhoc C on B.mamonhoc=C.mamonhoc  
EXEC sp_rename 'diemthi.diem2', 'diem3', 'COLUMN'
ALTER TABLE diemthi
add   diem2 int
ALTER TABLE diemthi
drop column  diem4 


update diemthi set diem1 = 10 where diem1 ='A' 
update diemthi set diem1 = 8 where diem1 ='B'
update diemthi set diem1 = 6 where diem1 ='C'

select sum(diem2) as tongdiem from diemthi group by masinhvien 
select sum(diem2) as tongdiem from diemthi group by masinhvien having sum(diem2)>25
//xap sep
select top 5 * from diemthi order by diem2 ASC
//tạo store dem so sinh vien trong bang sinh vien
CREATE PROCEDURE getsinhvien
AS
BEGIN
    SELECT COUNT(*) AS sosinhvien FROM sinhvien;
END;

EXEC getsinhvien;
--tao trigger khi update diem
--CREATE TRIGGER my_trigger
--AFTER update ON diemthi
--FOR EACH ROW
--BEGIN
  --  INSERT INTO AuditLog (diem1, diem2, diem3)
    --VALUES ('update', NEW.diem, NOW());
--END;

