USE QLSV

-- tìm mã sinh viên , tên sinh viên của môn HTML
SELECT sv.maSV,sv.tenSV FROM ThongTinSV as sv , Lop , SVandL , MHandL ,MonHoc as mh 
WHERE mh.maMonHoc='HTML' AND sv.maSV = SVandL.maSV AND Lop.maLop=MHandL.maLop AND MHandL.maMonHoc= mh.maMonHoc