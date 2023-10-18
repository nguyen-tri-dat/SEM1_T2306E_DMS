USE QLSV
GO
INSERT INTO [dbo].[ThongTinSV] 
( 
 [maSV], [tenSV], [date],[nghe_nghiep]
)
VALUES
( 
    '001',N'Lê Chung Dũng','19981118','Leader'
),
( 
    '002',N'Đỗ Minh Tiến','19981020','Member'
),
( 
    '003',N'Nguyễn Văn Nam','19970505','Member'
),
( 
    '004',N'Phạm Nam Anh','19980606','Member'
)

INSERT INTO [dbo].[Lop]
(
 [maLop], [tenLop]
)
VALUES
( 
 'TH2306E', 'TH2306E'
)
GO

INSERT INTO [dbo].[SVandL]
( 
 [maSV], [maLop]
)
VALUES
( 
 '001','TH2306E'
),
( 
  '002','TH2306E'
),
( 
  '003','TH2306E'
),
( 
  '004','TH2306E'
)
GO


INSERT INTO [dbo].[MonHoc]
( 
 [maMonHoc], [tenMonHoc]
)
VALUES
(
 'sql','SQL Server'
),
(
 'HTML','HTML'
)
GO

INSERT INTO [dbo].[Diem]
(
 [maSV], [maMonHoc],[Diem]
)
VALUES
( 
 '001','HTML',8.5
),
( 
 '001','sql',8.5
),
( 
 '002','HTML',8.5
),
( 
 '002','sql',8.5
),
( 
 '003','HTML',7.5
),
( 
 '003','sql',7.5
),
( 
 '004','HTML',7.5
),
( 
 '004','sql',7.5
)
GO

INSERT INTO [dbo].[MHandL]
(
 [maLop], [maMonHoc]
)
VALUES
( 
    'Th2306E', 'HTML'
),
(
    'TH2306E' ,'sql'
)
GO

SELECT * FROM ThongTinSV
SELECT * FROM Lop
SELECT * FROM MonHoc
SELECT * FROM Diem
SELECT * FROM SVandL
SELECT * FROM MHandL


