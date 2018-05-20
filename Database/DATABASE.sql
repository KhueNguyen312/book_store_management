drop database QUAN_LI_NHA_SACH
CREATE DATABASE QUAN_LI_NHA_SACH
GO
USE QUAN_LI_NHA_SACH
GO

 SET DATEFORMAT DMY
 GO
CREATE TABLE KHACHHANG(
MAKH INT NOT NULL IDENTITY(1, 1),
TENKH NVARCHAR(40) NOT NULL,
MALOAIKH CHAR(4) NOT NULL,
GIOITINH NVARCHAR(20),
NGAYSINH DATETIME,
DIACHI TEXT ,
SĐT CHAR(20),
CMND CHAR(20),
NGAYDK DATETIME NOT NULL,
DIEMTICHLUY INT NOT NULL
PRIMARY KEY (MAKH))




GO


CREATE TABLE LOAIKH(
MALOAIKH CHAR(4) NOT NULL,
TENLOAIKH NVARCHAR(40) NOT NULL
PRIMARY KEY (MALOAIKH))


GO
CREATE TABLE HOADON(
SOHD INT NOT NULL IDENTITY(1, 1),
MAKH INT NOT NULL,
MANV INT NOT NULL,
NGAYHD DATETIME NOT NULL,
TONGTIEN MONEY NOT NULL,
SOTIENNHAN MONEY NOT NULL,
SOTIENTHUA MONEY NOT NULL
PRIMARY KEY (SOHD))

GO
CREATE TABLE KHUYENMAI(
MAKM INT NOT NULL IDENTITY(1, 1),
TENKM NVARCHAR(100) NOT NULL,
NGAYBD DATETIME NOT NULL,
NGAYKT DATETIME NOT NULL
PRIMARY KEY (MAKM))

GO
CREATE TABLE CTKHUYENMAI(
MAKM INT NOT NULL,
MALOAIKH CHAR(4) NOT NULL,
MALOAISACH INT NOT NULL,
SOLUONGGIAM INT NOT NULL,
GHICHU TEXT
PRIMARY KEY (MAKM, MALOAIKH, MALOAISACH))

GO
CREATE TABLE LOAISACH(
MALOAISACH INT NOT NULL IDENTITY(1, 1),
TENLOAISACH NVARCHAR(100) NOT NULL,
CHUDE TEXT 
PRIMARY KEY (MALOAISACH))

GO
CREATE TABLE SACH(
MASACH INT NOT NULL IDENTITY(1, 1),
TENSACH NVARCHAR(100) NOT NULL,
MALOAISACH INT NOT NULL,
MATACGIA INT NOT NULL,
NXB INT NOT NULL,
SOLUONGHIENTAI INT NOT NULL,
DONGIA MONEY NOT NULL,
NOIDUNG TEXT
PRIMARY KEY (MASACH))

GO


CREATE TABLE CTHOADON(
SOHD INT NOT NULL,
MASACH INT NOT NULL,
SOLUONG INT NOT NULL,
DONGIA MONEY,
THANHTIEN MONEY
PRIMARY KEY (SOHD, MASACH))


GO


ALTER TABLE dbo.CTHOADON
ADD DONGIA MONEY
CREATE TABLE NHANVIEN(
MANV INT NOT NULL IDENTITY(1, 1),
TENNV NVARCHAR(30) NOT NULL,
GIOITINH NVARCHAR(20) NOT NULL,
NGAYSINH DATETIME NOT NULL,
DIACHI TEXT NOT NULL,
NGAYVL DATETIME NOT NULL
PRIMARY KEY (MANV))

GO
CREATE TABLE LUONG(
MALUONG INT NOT NULL IDENTITY,
LUONGCOBAN MONEY NOT NULL,
HESO INT NOT NULL
PRIMARY KEY (MALUONG))

GO
CREATE TABLE CTLUONG(
MANV INT NOT NULL,
MALUONG INT NOT NULL,
NGAYPHAT DATETIME NOT NULL,
LUONG MONEY
PRIMARY KEY (MANV, MALUONG))

GO


CREATE TABLE BAOCAOTHANG(
SOBAOCAO INT NOT NULL IDENTITY(1, 1),
MANV INT NOT NULL,
TONGDOANHTHU MONEY NOT NULL,
NGAYBAOCAO DATETIME NOT NULL,
GHICHU TEXT
PRIMARY KEY (SOBAOCAO))

GO
CREATE TABLE CTBAOCAO(
SOBAOCAO INT NOT NULL,
MASACH INT NOT NULL,
SOLUONGBAN INT NOT NULL,
GIABAN MONEY NOT NULL,
DOANHTHU MONEY
PRIMARY KEY (SOBAOCAO, MASACH))
GO
CREATE TABLE PHIEUNHAPSACH(
MAPHIEUNHAP INT NOT NULL IDENTITY(1, 1),
MANV INT NOT NULL,
TONGCHI MONEY NOT NULL, 
NGAYNHAP DATETIME NOT NULL
PRIMARY KEY (MAPHIEUNHAP))
GO
CREATE TABLE CTPHIEUNHAP(
MAPHIEUNHAP INT NOT NULL,
MASACH INT NOT NULL,
SOLUONG INT NOT NULL,
DONGIA MONEY NOT NULL
PRIMARY KEY (MAPHIEUNHAP, MASACH))
GO
CREATE TABLE NHAXUATBAN(
MANXB INT NOT NULL IDENTITY,
TENNXB NVARCHAR(30) NOT NULL,
DIACHI TEXT NOT NULL
PRIMARY KEY (MANXB))
GO
CREATE TABLE TACGIA(
MATACGIA INT NOT NULL IDENTITY(1, 1),
TENTACGIA NVARCHAR(30) NOT NULL
PRIMARY KEY (MATACGIA))




ALTER TABLE KHACHHANG ADD CONSTRAINT F_K_KH_LOAIKH FOREIGN KEY (MALOAIKH) REFERENCES LOAIKH (MALOAIKH)
GO
ALTER TABLE HOADON ADD CONSTRAINT F_K_HD_KH FOREIGN KEY (MAKH) REFERENCES KHACHHANG (MAKH)
GO

ALTER TABLE CTKHUYENMAI ADD CONSTRAINT F_K_CTKM_KM FOREIGN KEY (MAKM) REFERENCES KHUYENMAI (MAKM)
GO
ALTER TABLE CTKHUYENMAI ADD CONSTRAINT F_K_CTKM_LOAIKH FOREIGN KEY (MALOAIKH) REFERENCES LOAIKH (MALOAIKH)
GO
ALTER TABLE CTKHUYENMAI ADD CONSTRAINT F_K_CTKM_LOAISACH FOREIGN KEY (MALOAISACH) REFERENCES LOAISACH (MALOAISACH)
GO
ALTER TABLE SACH ADD CONSTRAINT F_K_SACH_LAOISACH FOREIGN KEY (MALOAISACH) REFERENCES LOAISACH (MALOAISACH)
GO
ALTER TABLE SACH ADD CONSTRAINT F_K_SACH_TACGIA FOREIGN KEY (MATACGIA) REFERENCES TACGIA (MATACGIA)
GO
ALTER TABLE SACH ADD CONSTRAINT F_K_SACH_NXB FOREIGN KEY (NXB) REFERENCES NHAXUATBAN (MANXB)
GO
ALTER TABLE CTHOADON ADD CONSTRAINT F_K_CTHD_HD FOREIGN KEY (SOHD) REFERENCES HOADON (SOHD)
GO
ALTER TABLE CTHOADON ADD CONSTRAINT F_K_CTHD_SACH FOREIGN KEY (MASACH) REFERENCES SACH (MASACH)
GO
ALTER TABLE CTLUONG ADD CONSTRAINT F_K_CTLUONG_NHANVIEN FOREIGN KEY (MANV) REFERENCES NHANVIEN (MANV)
GO
ALTER TABLE CTLUONG ADD CONSTRAINT F_K_CTLUONG_LUONG FOREIGN KEY (MALUONG) REFERENCES LUONG (MALUONG)
GO
ALTER TABLE BAOCAOTHANG ADD CONSTRAINT F_K_BCT_NV FOREIGN KEY (MANV) REFERENCES NHANVIEN (MANV)
GO
ALTER TABLE CTBAOCAO ADD CONSTRAINT F_K_CTBC_BCT FOREIGN KEY (SOBAOCAO) REFERENCES BAOCAOTHANG (SOBAOCAO)
GO
ALTER TABLE CTBAOCAO ADD CONSTRAINT F_K_CTBC_SACH FOREIGN KEY (MASACH) REFERENCES SACH (MASACH)
GO
ALTER TABLE PHIEUNHAPSACH ADD CONSTRAINT F_K_PNS_NV FOREIGN KEY (MANV) REFERENCES NHANVIEN (MANV)
GO
ALTER TABLE CTPHIEUNHAP ADD CONSTRAINT F_K_CTPN_PNS FOREIGN KEY (MAPHIEUNHAP) REFERENCES PHIEUNHAPSACH (MAPHIEUNHAP)
GO
ALTER TABLE CTPHIEUNHAP ADD CONSTRAINT F_K_CTPN_SACH FOREIGN KEY (MASACH) REFERENCES SACH 
 GO



ALTER TABLE dbo.KHACHHANG
ADD CONSTRAINT DF_KHACHHANG DEFAULT 0 FOR DIEMTICHLUY

GO



--DANH SÁCH CÁC TRIGGER:




GO
--1. CẬP NHẬT ĐIỂM TÍCH LŨY 
CREATE TRIGGER I_U_HOADON_DTL
ON dbo.KHACHHANG
FOR INSERT, UPDATE
AS
	DECLARE @MAKH INT
	DECLARE @TONGTIEN MONEY	
	SELECT @MAKH = MAKH FROM Inserted
	SELECT @TONGTIEN = TONGTIEN FROM dbo.HOADON
	WHERE @MAKH = MAKH

	IF(@TONGTIEN >= 1000000)
		BEGIN
			UPDATE dbo.KHACHHANG
			SET DIEMTICHLUY += 7
			WHERE @MAKH = MAKH
		END
	ELSE
		IF(@TONGTIEN >= 500000)
		BEGIN
			UPDATE dbo.KHACHHANG
			SET DIEMTICHLUY += 5
			WHERE @MAKH = MAKH
		END
	ELSE
		IF(@TONGTIEN >= 200000)
		BEGIN
			UPDATE dbo.KHACHHANG
			SET DIEMTICHLUY += 3
			WHERE @MAKH = MAKH
		END
	ELSE
		IF(@TONGTIEN >= 50000)
		BEGIN
			UPDATE dbo.KHACHHANG
			SET DIEMTICHLUY += 1
			WHERE @MAKH = MAKH
		END
GO


--2. CẬP NHẬT LOẠI KHÁCH HÀNG
CREATE TRIGGER UPDATE_LOAIKHACHHANG_KH
ON dbo.KHACHHANG
FOR UPDATE
AS
IF UPDATE(DIEMTICHLUY)
BEGIN
	DECLARE @DIEMTL INT
	DECLARE @MALOAIKH CHAR(4)
	SELECT @DIEMTL = DIEMTICHLUY FROM Inserted
	SELECT @MALOAIKH = MALOAIKH FROM Inserted
	IF(@DIEMTL > 50 AND @MALOAIKH = 'T')
	BEGIN
		UPDATE dbo.KHACHHANG
		SET MALOAIKH = 'V'
	END
END



--TAO TRIGGER DIEMTICHLUY >= 0
 CREATE TRIGGER INSERT_UPDATE
 ON KHACHHANG
 FOR INSERT, UPDATE
 AS
 DECLARE @DIEMTICHLUY INT
 SELECT @DIEMTICHLUY = DIEMTICHLUY FROM inserted
 IF(@DIEMTICHLUY < 0)
 BEGIN
 PRINT'DIEM TICH LUY PHAI LON HON HOAC BANG 0'
 ROLLBACK TRAN
 END
 GO


 
 --TẠO CHECK CHO LOẠI KHÁCH HÀNG
ALTER TABLE LOAIKH 
ADD CONSTRAINT CKECK_TENLOAIKH CHECK (TENLOAIKH  IN (N'Thường' , 'Vip'))
 GO

 

 GO
 --TẠO CHECK CHO MÃ LOẠI KHÁCH HÀNG
 ALTER TABLE LOAIKH 
 ADD CONSTRAINT CKECK_MALOAIKH CHECK (MALOAIKH  IN ('T' , 'V'))
 GO

 --TẠO TRIGGER CHO HOADON: NGAYHD>= NGAYDK
 CREATE TRIGGER HD_NGAYHD_NGAYDK 
 ON HOADON
 FOR INSERT, UPDATE
 AS
 DECLARE @NGAYHD DATETIME, @MAKH INT, @NGAYDK DATETIME
 SELECT @MAKH = MAKH, @NGAYHD = NGAYHD
 FROM INSERTED 
 SELECT @NGAYDK = NGAYDK
 FROM KHACHHANG
 WHERE MAKH = @MAKH
 IF(@NGAYHD < @NGAYDK)
 BEGIN
 PRINT'NGAY HOA DON KHONG DUOC NHO HON NGAY DANG KI KHACH HANG'
 ROLLBACK TRAN
 END
 GO

 --TẠO TRIGGER CHO BANG KHACHHANG: NGAYDK <= NGAYHD
 CREATE TRIGGER KH_NGAYDK_NGAYHD
 ON KHACHHANG
 FOR UPDATE
 AS
 IF UPDATE(NGAYDK)
 BEGIN
 DECLARE @MAKH INT, @NGAYDK DATETIME
 SELECT @MAKH = MAKH, @NGAYDK = NGAYDK
 FROM INSERTED 
 IF(SELECT COUNT(*) FROM HOADON 
	WHERE @MAKH = MAKH
	AND NGAYHD < @NGAYDK) > 0
	BEGIN
	PRINT'NGAY DANG KI KHONG DUOC LON HON NGAY HOA DON'
	ROLLBACK TRAN
	END
 END
 GO
 DBCC CHECKIDENT ('NHANVIEN', RESEED, 0)
GO
--TẠO TRIGGER CHO BẢNG NHANVIEN: NGAYVL<= NGAYHD
CREATE TRIGGER NHANVIEN_NGAYVL_NGAYHD
ON NHANVIEN
FOR UPDATE
AS
IF UPDATE(NGAYVL)
BEGIN
DECLARE @MANV INT, @NGAYVL DATETIME
SELECT @MANV = MANV, @NGAYVL = NGAYVL
FROM INSERTED 
IF(SELECT COUNT(*) FROM HOADON
	WHERE @MANV = MANV
	AND @NGAYVL > NGAYHD) > 0
	BEGIN
	PRINT'NGAY NHAN VIEN VAO LAM KHONG DUOC LON HON NGAY HOA DON'
	ROLLBACK TRAN
	END
END
GO
--TẠO TRIGGER CHO BẢNG HOADON: NGAYHD >= NGAYVL
CREATE TRIGGER HD_NGAYHD_NGAYVL
ON HOADON
FOR INSERT, UPDATE
AS
DECLARE @MANV INT, @NGAYHD DATETIME, @NGAYVL DATETIME
SELECT @MANV = MANV, @NGAYHD = NGAYHD
FROM INSERTED 
SELECT @NGAYVL = NGAYVL
FROM NHANVIEN
WHERE MANV = @MANV
IF(@NGAYHD < @NGAYVL)
BEGIN
PRINT'NGAY HOA DON KHONG DUOC NHO HON NGAY VAO LAM CUA NHAN VIEN'
ROLLBACK TRAN
END
GO


--KIỂM TRA TUỔI CỦA NHÂN VIÊN
CREATE TRIGGER TUOI_NHANVIEN
ON dbo.NHANVIEN
FOR INSERT, UPDATE
AS
DECLARE @NGAYSINH DATETIME 
SELECT @NGAYSINH = NGAYSINH FROM Inserted
IF(YEAR(GETDATE()) - YEAR(@NGAYSINH) < 18)
	BEGIN
	PRINT'NHAN VIEN PHAI TU 18 TUOI TRO LEN'
	ROLLBACK TRAN
	END
GO


--SET DƠN GIÁ VÀ THÀNH TIỀN Ở CTHD KHI NHẬP MÃ SÁCH


CREATE TRIGGER UPDATE_DONGIA_CTHD
ON dbo.CTHOADON
FOR INSERT, UPDATE
AS
DECLARE @MASACH INT
DECLARE @SOLUONG INT
SELECT @MASACH = MASACH FROM Inserted
SELECT @SOLUONG = SOLUONG FROM Inserted
UPDATE dbo.CTHOADON
SET DONGIA = (SELECT DONGIA
			  FROM dbo.SACH
			  WHERE @MASACH = MASACH)
WHERE @MASACH = MASACH
UPDATE dbo.CTHOADON
SET THANHTIEN = @SOLUONG * (SELECT DONGIA
							FROM dbo.CTHOADON
							WHERE @MASACH = MASACH)
WHERE @MASACH = MASACH
GO

-- TRIGGER TỔNG TIỀN Ở HÓA ĐƠN = TỔNG GIÁ TRỊ CỦA CÁC MẶT HÀNG Ở CHI TIẾT HÓA ĐƠN
CREATE TRIGGER UPDATE_TIEN_HD
ON dbo.HOADON
FOR UPDATE
AS
IF UPDATE(TONGTIEN)
BEGIN
DECLARE @SOHD INT
DECLARE @TONGTIEN MONEY
DECLARE @THANHTIEN MONEY
SELECT @SOHD = SOHD FROM Inserted
SELECT @TONGTIEN = TONGTIEN FROM Inserted
SELECT @THANHTIEN = SUM(THANHTIEN)
FROM dbo.CTHOADON
WHERE @SOHD = SOHD
GROUP BY SOHD
IF(@THANHTIEN ) NOT IN (SELECT TONGTIEN
						FROM dbo.HOADON
						WHERE SOHD = @SOHD)
BEGIN
PRINT'TONG TIEN O HOA DON PHAI BANG TONG THANH TIEN O CAC CHI TIET HOA DON CUA HOA DON DO'
ROLLBACK TRAN
END
END

  --CTHD

CREATE TRIGGER U_I




--DANH SÁCH CÁC STORED PROCEDURE


--TÍNH TIỀN HÓA ĐƠN
CREATE PROCEDURE TINHTIEN_HD
@SOHD INT,
@THANHTIEN MONEY
AS
BEGIN
DECLARE @TIEN MONEY
SELECT @THANHTIEN = COUNT(THANHTIEN)
FROM dbo.CTHOADON
WHERE @SOHD = SOHD
GROUP BY SOHD
UPDATE dbo.HOADON
SET TONGTIEN = @TIEN
WHERE @SOHD = SOHD
END


--THÊM NHÂN VIÊN
GO

CREATE PROCEDURE THEM_NV
@TENNV NVARCHAR(30),
@GIOITINH NVARCHAR(20),
@NGAYSINH DATETIME,
@DIACHI TEXT,
@NGAYVL DATETIME
AS
BEGIN
	INSERT INTO dbo.NHANVIEN
	        (TENNV, GIOITINH, NGAYSINH, DIACHI, NGAYVL )
	VALUES  (
	          @TENNV, -- TENNV - nvarchar(30)
			  @GIOITINH, -- GIOITINH - nvarchar(20)
	          @NGAYSINH, -- NGAYSINH - datetime
	          @DIACHI, -- DIACHI - text
	          @NGAYVL  -- NGAYVL - datetime
	          )
END
GO
	       
--rồi

--xem thông tin và lương của 1 nhân viên
CREATE PROCEDURE TIM_NHANVIEN
@MNV INT
AS
BEGIN
SELECT NV.MANV, TENNV, NGAYSINH, DIACHI, NGAYVL, L.LUONG
FROM NHANVIEN NV, CTLUONG L
WHERE NV.MANV = @MNV
END
GO

--xem tổng tiền của 1 khách hàng đã mua
CREATE FUNCTION TONGTIEN_KHACHHANG( @MAKH INT )
RETURNS MONEY
AS
BEGIN
DECLARE @LUONG MONEY
SELECT @LUONG = SUM(TONGTIEN)
FROM HOADON
WHERE @MAKH IN (SELECT MAKH
				FROM HOADON
				WHERE @MAKH = MAKH)
RETURN @LUONG
END
GO
--xem thông tin của 1 khách hàng
CREATE PROCEDURE TIM_KHACHAHNG
@MAKH INT
AS
BEGIN
	SELECT* FROM dbo.KHACHHANG
	WHERE @MAKH = MAKH
END


GO
ALTER TRIGGER TAO_LUONG
ON dbo.CTLUONG
FOR INSERT
AS
DECLARE @HESO INT
DECLARE @LUONGCOBAN INT
DECLARE @MALUONG INT
SELECT @MALUONG = MALUONG 
FROM Inserted
SELECT @HESO = HESO, @LUONGCOBAN = LUONGCOBAN 
FROM dbo.LUONG
WHERE @MALUONG = MALUONG

UPDATE CTLUONG
SET LUONG = @HESO * @LUONGCOBAN


--SỬA NHÂN VIÊN


--XÓA NHÂN VIÊN


--TRA CỨU NHÂN VIÊN


--THÊM KHÁCH HÀNG


--SỬA KHÁCH HÀNG


--XÓA KHÁCH HÀNG


--TRA CỨU KHÁCH HÀNG


--THÊM SÁCH