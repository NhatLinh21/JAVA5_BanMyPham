create database SKIN1004

use  SKIN1004

--Bảng nhân viên

create table NhanVien(
	MaNV varchar(10) primary key,
	HoTen nvarchar(50),
	Email varchar(50),
	Matkhau varchar(30),
	SDT char(10),
	DiaChi nvarchar(255),
	Admin bit
)
CREATE TABLE KhachHang (
    MaKH INT identity PRIMARY KEY,
    TenKH NVARCHAR(50) NOT NULL,
    Email VARCHAR(50),
    Pass NVARCHAR(30),
    SDT VARCHAR(10)
);

create table DanhMuc(
	MaDM varchar(10) primary key,
	TenDM nvarchar(30)
)
CREATE TABLE Size (
    ID INT identity PRIMARY KEY,
    TenSize NVARCHAR(5),
	Gia DECIMAL(10, 2),
	SoLuong int
);
create table DiaChi(
	ID int identity primary key,
	DiaChi text,
	MaKH INT,
	CONSTRAINT fk_diachi FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH)
)
CREATE TABLE SanPham (
    MaSP varchar(10) PRIMARY KEY,
    ID INT,
    TenSP NVARCHAR(30),
    Hinh VARCHAR(30),
    Anh varchar(max),
    MoTa TEXT,
    SoLuong INT,
    CONSTRAINT fk_s_sp FOREIGN KEY (ID) REFERENCES Size(ID)
);




CREATE TABLE DonHang (
    MaDH varchar(10) PRIMARY KEY,
    MaTT INT,
    MaKH INT,
	MaNV varchar(10),
    NgayDat DATETIME,
    NgayGiaoDuKien DATETIME,
	DiaChi NVARCHAR(255),
	TrangThai bit,
    CONSTRAINT fk_makh_dh FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
	CONSTRAINT fk_manv_dh FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);


CREATE TABLE CTDonHang (
    CTDH INT identity PRIMARY KEY,
    MaDH varchar(10),
	MaSP varchar(10),
    SoLuong INT NOT NULL,
    DonGia DECIMAL(10, 2) NOT NULL,
    CONSTRAINT fk_madh_ctdh FOREIGN KEY (MaDH) REFERENCES DonHang(MaDH),
	CONSTRAINT fk_sp_ctdh FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP)
);

CREATE TABLE DanhGia (
    MaDG VARCHAR(20) PRIMARY KEY,
    ID int,
    SoSao INT,
    BinhLuan NVARCHAR(500),
    NgayDG DATETIME,
    Likes BIT,
    Dislikes BIT,
	CTDH INT,
	CONSTRAINT fk_ctdh_dg FOREIGN KEY (CTDH) REFERENCES CTDonHang(CTDH)
);

create table DanhMuc_SanPham(
	ID int identity PRIMARY KEY,
    MaSP varchar(10),
    MaDM varchar(10),
    FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP),
    FOREIGN KEY (MaDM) REFERENCES DanhMuc(MaDM)
)

create table TinTuc (
	MaTT int identity primary key,
	TieuDe nvarchar(50),
	NoiDung text,
	Anh varchar(50),
	NgayDang datetime
)
-- Thêm dữ liệu vào bảng NhanVien
INSERT INTO NhanVien (MaNV, HoTen, Email, Matkhau, SDT, DiaChi)
VALUES
('NV01', 'Phạm Thị Thuý Huyền', 'huyenpttps35245@fpt.edu.vn', 'thuyhuyen123', '0912345678', '456 Đường Trần Hưng Đạo, Quận 5, TP.HCM', 1),
('NV02', 'Nguyễn Nhật Linh', 'linhnnps35276@fpt.edu.vn', 'nhatlinh123', '0912345679', '789 Đường Lý Thường Kiệt, Quận 10, TP.HCM', 1),
('NV03', 'Lê Hải Anh', 'anhlh35305@fpt.edu.vn', 'haianh123', '0912345680', '123 Đường Lê Lợi, Quận 1, TP.HCM', 0),
('NV04', 'Nguyễn Thế Sang', 'sangnt35275@fpt.edu.vn', 'thesang123', '0912345681', '456 Đường Nguyễn Huệ, Quận 3, TP.HCM', 0),
('NV05', 'Phạm Lê Minh Châu', 'chauplm@fpt.edu.vn', 'minhchau123', '0912345682', '789 Đường Trường Chinh, Quận Tân Bình, TP.HCM', 0)


-- Thêm dữ liệu vào bảng KhachHang
INSERT INTO KhachHang (TenKH, Email, Pass, SDT)
VALUES
('Nguyễn Thị Bích', 'nguyenthibich@gmail.com', 'bichnt123', '0912345678'),
('Trần Văn Bình', 'tranvanbinh@gmail.com', 'binhtv123', '0912345679'),
('Lê Thị Hoa', 'lethihoa@gmail.com', 'hoalt123', '0912345680'),
('Phạm Quốc Anh', 'phamquocanh@gmail.com', 'anhpq123', '0912345681'),
('Hoàng Thị Minh', 'hoangthiminh@gmail.com', 'minhht123', '0912345682'),
('Ngô Văn Dũng', 'ngovandung@gmail.com', 'dungnv123', '0912345683'),
('Đỗ Thị Thanh', 'dothithanh@gmail.com', 'thanhdt123', '0912345684'),
('Bùi Văn Sơn', 'buivanson@gmail.com', 'sonbv123', '0912345685'),
('Vũ Thị Mai', 'vuthimai@gmail.com', 'maivt123', '0912345686'),
('Dương Văn Nam', 'duongvannam@gmail.com', 'namdv123', '0912345687'),
('Nguyễn Văn Nam', 'Nguyenvannam@gmail.com', 'namnv123', '0893728905'),
('Nguyễn Thu Hậu', 'nguyenthuhau@gmail.com', 'haunt123', '083275894'),
('Nguyễn Thị Thanh', 'nguyenthithanh@gmail.com', 'thanhnt123', '0327584934'),
('Nguyễn Khánh Huyền', 'nguyenkhanhhuyen@gmail.com', 'huyennk123', '0956378479'),
('Hà Thị Phượng', 'hathiphuong@gmail.com', 'phuonght123', '0342745124'),
('Dương Mai Nghĩa', 'duongmainghia@gmail.com', 'nghiadm123', '09327854839'),
('Nguyễn Ngọc Trâm', 'nguyenngoctram@gmail.com', 'tramnn123', '0839384756'),
('Bùi Trọng Đức', 'buitrongduc@gmail.com', 'ducbt123', '0341843789'),
('Nguyễn Văn Chiến', 'nguyenvanchien@gmail.com', 'chiennv123', '0823427854');



-- Thêm dữ liệu vào bảng DanhMucSP
INSERT INTO DanhMucSP (MaDM, TenDM)
VALUES
('DM001','CENTELLA'),
('DM002','HYALU-CICA'),
('DM003','TONE BRIGHTENING'),
('DM004','POREMIZING'),
('DM005','TEA-TRICA'),
('DM006','Sữa rửa mặt'),
('DM007','Tẩy trang'),
('DM008','Kem chống nắng'),
('DM009','Toner'),
('DM010','TEA-TRICA'),
('DM011','TEA-TRICA'),
('DM012','TEA-TRICA'),
('DM013','TEA-TRICA'),
('DM014','TEA-TRICA'),
('DM015','TEA-TRICA');



-- Thêm dữ liệu vào bảng SanPham
INSERT INTO SanPham (MaSP, MaDM, TenSP, MoTa, SoLuong)
VALUES
-- CENTELLA
('SP01', 'CENTELLA', 'Centella Cream', 'Kem dưỡng Centella làm dịu da', 5),
('SP02', 'CENTELLA', 'Centella Toner', 'Nước hoa hồng Centella cân bằng da', 5),
('SP03', 'CENTELLA', 'Centella Serum', 'Tinh chất Centella phục hồi da', 5),
('SP04', 'CENTELLA', 'Centella Ampoule', 'Ampoule Centella tăng cường dưỡng chất', 5),
('SP05', 'CENTELLA', 'Centella Mask', 'Mặt nạ Centella làm dịu da', 5),

-- HYALU-CICA
('SP06', 'HYALU-CICA', 'Hyalu-Cica Cream', 'Kem dưỡng Hyalu-Cica cấp ẩm sâu', 5),
('SP07', 'HYALU-CICA', 'Hyalu-Cica Toner', 'Nước hoa hồng Hyalu-Cica dưỡng ẩm', 5),
('SP08', 'HYALU-CICA', 'Hyalu-Cica Serum', 'Tinh chất Hyalu-Cica phục hồi da', 5),
('SP09', 'HYALU-CICA', 'Hyalu-Cica Ampoule', 'Ampoule Hyalu-Cica chống lão hóa', 5),
('SP10', 'HYALU-CICA', 'Hyalu-Cica Mask', 'Mặt nạ Hyalu-Cica cấp ẩm', 5),

-- TONE BRIGHTENING
('SP11', 'TONE BRIGHTENING', 'Brightening Cream', 'Kem dưỡng làm sáng da', 5),
('SP12', 'TONE BRIGHTENING', 'Brightening Toner', 'Nước hoa hồng làm sáng da', 5),
('SP13', 'TONE BRIGHTENING', 'Brightening Serum', 'Tinh chất làm sáng da', 5),
('SP14', 'TONE BRIGHTENING', 'Brightening Ampoule', 'Ampoule làm sáng da', 5),
('SP15', 'TONE BRIGHTENING', 'Brightening Mask', 'Mặt nạ làm sáng da', 5),

-- POREMIZING
('SP16', 'POREMIZING', 'Poremizing Cream', 'Kem dưỡng thu nhỏ lỗ chân lông', 5),
('SP17', 'POREMIZING', 'Poremizing Toner', 'Nước hoa hồng thu nhỏ lỗ chân lông', 5),
('SP18', 'POREMIZING', 'Poremizing Serum', 'Tinh chất thu nhỏ lỗ chân lông', 5),
('SP19', 'POREMIZING', 'Poremizing Ampoule', 'Ampoule thu nhỏ lỗ chân lông', 5),
('SP20', 'POREMIZING', 'Poremizing Mask', 'Mặt nạ thu nhỏ lỗ chân lông', 5),

-- TEA-TRICA
('SP21', 'TEA-TRICA', 'Tea-Trica Cream', 'Kem dưỡng Tea-Trica trị mụn', 5),
('SP22', 'TEA-TRICA', 'Tea-Trica Toner', 'Nước hoa hồng Tea-Trica trị mụn', 5),
('SP23', 'TEA-TRICA', 'Tea-Trica Serum', 'Tinh chất Tea-Trica trị mụn', 5),
('SP24', 'TEA-TRICA', 'Tea-Trica Ampoule', 'Ampoule Tea-Trica trị mụn', 5),
('SP25', 'TEA-TRICA', 'Tea-Trica Mask', 'Mặt nạ Tea-Trica trị mụn', 5),

-- PROBIO-CICA
('SP26', 'PROBIO-CICA', 'Probio-Cica Cream', 'Kem dưỡng Probio-Cica tái tạo da', 5),
('SP27', 'PROBIO-CICA', 'Probio-Cica Toner', 'Nước hoa hồng Probio-Cica tái tạo da', 5),
('SP28', 'PROBIO-CICA', 'Probio-Cica Serum', 'Tinh chất Probio-Cica tái tạo da', 5),
('SP29', 'PROBIO-CICA', 'Probio-Cica Ampoule', 'Ampoule Probio-Cica tái tạo da', 5),
('SP30', 'PROBIO-CICA', 'Probio-Cica Mask', 'Mặt nạ Probio-Cica tái tạo da', 5);




-- Thêm dữ liệu vào bảng Size với MaSP tương ứng
INSERT INTO Size (ID, MaSP, TenSize, Gia)
VALUES
-- CENTELLA
(1, 'SP01', N'S', 10.99),
(2, 'SP01', N'M', 12.99),
(3, 'SP01', N'L', 14.99),
(4, 'SP02', N'S', 9.99),
(5, 'SP02', N'M', 11.99),
(6, 'SP02', N'L', 13.99),
(7, 'SP03', N'S', 8.99),
(8, 'SP03', N'M', 10.99),
(9, 'SP03', N'L', 12.99),
-- HYALU-CICA
(10, 'SP06', N'S', 11.99),
(11, 'SP06', N'M', 13.99),
(12, 'SP06', N'L', 15.99),
(13, 'SP07', N'S', 10.99),
(14, 'SP07', N'M', 12.99),
(15, 'SP07', N'L', 14.99),
(16, 'SP08', N'S', 9.99),
(17, 'SP08', N'M', 11.99),
(18, 'SP08', N'L', 13.99),
-- TONE BRIGHTENING
(19, 'SP11', N'S', 12.99),
(20, 'SP11', N'M', 14.99),
(21, 'SP11', N'L', 16.99),
(22, 'SP12', N'S', 11.99),
(23, 'SP12', N'M', 13.99),
(24, 'SP12', N'L', 15.99),
(25, 'SP13', N'S', 10.99),
(26, 'SP13', N'M', 12.99),
(27, 'SP13', N'L', 14.99),
-- POREMIZING
(28, 'SP16', N'S', 9.99),
(29, 'SP16', N'M', 11.99),
(30, 'SP16', N'L', 13.99),
(31, 'SP17', N'S', 8.99),
(32, 'SP17', N'M', 10.99),
(33, 'SP17', N'L', 12.99),
(34, 'SP18', N'S', 7.99),
(35, 'SP18', N'M', 9.99),
(36, 'SP18', N'L', 11.99),
-- TEA-TRICA
(37, 'SP21', N'S', 10.99),
(38, 'SP21', N'M', 12.99),
(39, 'SP21', N'L', 14.99),
(40, 'SP22', N'S', 9.99),
(41, 'SP22', N'M', 11.99),
(42, 'SP22', N'L', 13.99),
(43, 'SP23', N'S', 8.99),
(44, 'SP23', N'M', 10.99),
(45, 'SP23', N'L', 12.99),
-- PROBIO-CICA
(46, 'SP26', N'S', 11.99),
(47, 'SP26', N'M', 13.99),
(48, 'SP26', N'L', 15.99),
(49, 'SP27', N'S', 10.99),
(50, 'SP27', N'M', 12.99),
(51, 'SP27', N'L', 14.99),
(52, 'SP28', N'S', 9.99),
(53, 'SP28', N'M', 11.99),
(54, 'SP28', N'L', 13.99);





-- Thêm dữ liệu vào bảng DonHang
INSERT INTO DonHang (MaDH, MaTT, MaKH, MaNV, NgayDat, NgayGiaoDuKien, DiaChi, TrangThai)
VALUES
('DH001', 1, 1, 'NV01', '2024-05-27 10:00:00', '2024-05-30 10:00:00', N'123 Đường Lê Lợi, Quận 1, TP.HCM', 0),
('DH002', 1, 2, 'NV02', '2024-05-28 11:30:00', '2024-06-01 11:30:00', N'456 Đường Nguyễn Huệ, Quận 3, TP.HCM', 0),
('DH003', 2, 3, 'NV03', '2024-05-29 09:45:00', '2024-06-02 09:45:00', N'789 Đường Nguyễn Thị Minh Khai, Quận 3, TP.HCM', 0);


-- Thêm dữ liệu vào bảng CTDonHang
INSERT INTO CTDonHang (MaDH, MaSP, ID, SoLuong, DonGia)
VALUES
-- Đơn hàng 1
('DH001', 'SP01', 1, 1, 10.99),
('DH001', 'SP02', 2, 1, 9.99),
-- Đơn hàng 2
('DH002', 'SP03', 7, 2, 8.99),
('DH002', 'SP04', 8, 1, 12.99),
-- Đơn hàng 3
('DH003', 'SP05', 13, 1, 11.99);


-- Thêm dữ liệu vào bảng DanhGia
INSERT INTO DanhGia (MaDG, ID, MaKH, SoSao, BinhLuan, NgayDG, Likes, Dislikes, CTDH)
VALUES
-- Đánh giá 1
('DG001', 1, 1, 5, N'Sản phẩm rất tốt!', '2024-05-30 08:00:00', 1, 0, 1),
-- Đánh giá 2
('DG002', 2, 2, 4, N'Khá ổn', '2024-06-01 09:30:00', 1, 0, 3),
-- Đánh giá 3
('DG003', 3, 3, 5, N'Yêu thích sản phẩm này', '2024-06-02 11:45:00', 1, 0, 5);
