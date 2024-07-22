create database ASM_Java5

use  ASM_Java5

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
create table DiaChi(
	ID int identity primary key,
	DiaChi text,
	MaKH INT,
	CONSTRAINT fk_diachi FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH)
)
CREATE TABLE TrangThai(
	ID int identity(1,1) primary key,
	TênTT nvarchar(10)
)
CREATE TABLE SanPham (
    MaSP varchar(10) PRIMARY KEY,
    TenSP NVARCHAR(255),
    Hinh VARCHAR(30),
	ID int,
	MoTa nvarchar(max),
	CONSTRAINT fk_tt_sp FOREIGN KEY (ID) REFERENCES TrangThai(ID)
);

CREATE TABLE Size (
    ID INT identity PRIMARY KEY,
	MaSP varchar(10),
	KichThuoc int null,
    DonViTinh NVARCHAR(5) null,
	Gia DECIMAL(10, 2),
	SoLuong int,
	CONSTRAINT fk_sp_size FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP)
);

create table Images(
	ID int identity primary key,
	Img  varchar(20) default 'default_value' null,
	MaSP varchar(10),
	CONSTRAINT fk_sp_img FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP)
)
CREATE TABLE DonHang (
    MaDH varchar(10) PRIMARY KEY,
    MaKH INT,
	MaNV varchar(10),
    NgayDat DATETIME,
    NgayGiaoDuKien DATETIME,
	DiaChi NVARCHAR(255),
	TrangThai nvarchar(50),
    CONSTRAINT fk_makh_dh FOREIGN KEY (MaKH) REFERENCES KhachHang(MaKH),
	CONSTRAINT fk_manv_dh FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV)
);

CREATE TABLE CTDonHang (
    CTDH INT identity(1,1) PRIMARY KEY,
    MaDH varchar(10),
	MaSP varchar(10),
    SoLuong INT NOT NULL,
    DonGia DECIMAL(10, 2) NOT NULL,
    CONSTRAINT fk_madh_ctdh FOREIGN KEY (MaDH) REFERENCES DonHang(MaDH),
	CONSTRAINT fk_sp_ctdh FOREIGN KEY (MaSP) REFERENCES SanPham(MaSP)
);

CREATE TABLE DanhGia (
    MaDG VARCHAR(20) PRIMARY KEY,
    SoSao INT,
    NoiDung NVARCHAR(max),
	Images varchar(max) null,
    NgayDG DATETIME,
    Likes BIT,
	CTDH INT,
	CONSTRAINT fk_ctdh_dg FOREIGN KEY (CTDH) REFERENCES CTDonHang(CTDH)
);

INSERT INTO NhanVien VALUES
('NV01', 'Phạm Thị Thuý Huyền', 'huyenpttps35245@fpt.edu.vn', 'thuyhuyen123', '0912345678', '456 Đường Trần Hưng Đạo, Quận 5, TP.HCM', 1),
('NV02', 'Nguyễn Nhật Linh', 'linhnnps35276@fpt.edu.vn', 'nhatlinh123', '0912345679', '789 Đường Lý Thường Kiệt, Quận 10, TP.HCM', 1),
('NV03', 'Lê Hải Anh', 'anhlh35305@fpt.edu.vn', 'haianh123', '0912345680', '123 Đường Lê Lợi, Quận 1, TP.HCM', 0),
('NV04', 'Nguyễn Thế Sang', 'sangnt35275@fpt.edu.vn', 'thesang123', '0912345681', '456 Đường Nguyễn Huệ, Quận 3, TP.HCM', 0),
('NV05', 'Phạm Lê Minh Châu', 'chauplm@fpt.edu.vn', 'minhchau123', '0912345682', '789 Đường Trường Chinh, Quận Tân Bình, TP.HCM', 0)

-- Thêm dữ liệu vào bảng KhachHang
INSERT INTO KhachHang (TenKH, Email, Pass, SDT)
VALUES
(N'Nguyễn Thị Bích', 'nguyenthibich@gmail.com', 'bichnt123', '0912345678'),
(N'Trần Văn Bình', 'tranvanbinh@gmail.com', 'binhtv123', '0912345679'),
(N'Lê Thị Hoa', 'lethihoa@gmail.com', 'hoalt123', '0912345680'),
(N'Phạm Quốc Anh', 'phamquocanh@gmail.com', 'anhpq123', '0912345681'),
(N'Hoàng Thị Minh', 'hoangthiminh@gmail.com', 'minhht123', '0912345682'),
(N'Ngô Văn Dũng', 'ngovandung@gmail.com', 'dungnv123', '0912345683'),
(N'Đỗ Thị Thanh', 'dothithanh@gmail.com', 'thanhdt123', '0912345684'),
(N'Bùi Văn Sơn', 'buivanson@gmail.com', 'sonbv123', '0912345685'),
(N'Vũ Thị Mai', 'vuthimai@gmail.com', 'maivt123', '0912345686'),
(N'Dương Văn Nam', 'duongvannam@gmail.com', 'namdv123', '0912345687'),
(N'Nguyễn Văn Nam', 'Nguyenvannam@gmail.com', 'namnv123', '0893728905'),
(N'Nguyễn Thu Hậu', 'nguyenthuhau@gmail.com', 'haunt123', '083275894'),
(N'Nguyễn Thị Thanh', 'nguyenthithanh@gmail.com', 'thanhnt123', '0327584934'),
(N'Nguyễn Khánh Huyền', 'nguyenkhanhhuyen@gmail.com', 'huyennk123', '0956378479'),
(N'Hà Thị Phượng', 'hathiphuong@gmail.com', 'phuonght123', '0342745124'),
(N'Dương Mai Nghĩa', 'duongmainghia@gmail.com', 'nghiadm123', '0932785483'),
(N'Nguyễn Ngọc Trâm', 'nguyenngoctram@gmail.com', 'tramnn123', '0839384756'),
(N'Bùi Trọng Đức', 'buitrongduc@gmail.com', 'ducbt123', '0341843789'),
(N'Nguyễn Văn Chiến', 'nguyenvanchien@gmail.com', 'chiennv123', '0823427854');
-- Thêm dữ liệu vào bảng DiaChi
INSERT INTO DiaChi (DiaChi, MaKH) VALUES
(N'Số 123, Đường ABC, Quận XYZ, Thành phố Hồ Chí Minh', 1),
(N'Số 22, Thôn Tiến Đông,Eatih, Eakar, Đắk Lắk', 1),
(N'Số 456, Đường DEF, Quận UVW, Thành phố Hà Nội', 2),
(N'Số 789, Đường GHI, Quận LMN, Thành phố Đà Nẵng', 3),
(N'Số 012, Đường JKL, Quận OPQ, Thành phố Cần Thơ', 4),
(N'Số 345, Đường MNO, Quận RST, Thành phố Hải Phòng', 5),
(N'Số 678, Đường UVW, Quận XYZ, Thành phố Hồ Chí Minh', 6),
(N'Số 901, Đường XYZ, Quận LMN, Thành phố Hà Nội', 7),
(N'Số 234, Đường STU, Quận OPQ, Thành phố Đà Nẵng', 8),
(N'Số 567, Đường BCD, Quận RST, Thành phố Cần Thơ', 9),
(N'Số 890, Đường EFG, Quận UVW, Thành phố Hải Phòng', 10),
(N'Số 123, Đường HIJ, Quận XYZ, Thành phố Hồ Chí Minh', 11),
(N'Số 456, Đường KLM, Quận RST, Thành phố Hà Nội', 12),
(N'Số 789, Đường NOP, Quận OPQ, Thành phố Đà Nẵng', 13),
(N'Số 012, Đường QRS, Quận UVW, Thành phố Cần Thơ', 14),
(N'Số 345, Đường TUV, Quận XYZ, Thành phố Hải Phòng', 15),
(N'Số 678, Đường WXY, Quận RST, Thành phố Hồ Chí Minh', 14),
(N'Số 901, Đường YZA, Quận OPQ, Thành phố Hà Nội', 2),
(N'Số 234, Đường ABC, Quận UVW, Thành phố Đà Nẵng', 18),
(N'Số 567, Đường DEF, Quận XYZ, Thành phố Cần Thơ', 19),
(N'Số 890, Đường GHI, Quận RST, Thành phố Hải Phòng', 5);

INSERT INTO TrangThai VALUES
('SALE'),
('SOLD OUT'),
('NEW')

INSERT INTO SanPham (MaSP, TenSP, Hinh, ID ,MoTa) VALUES 
('SP001', N'HYALU-CICA WATER-FIT SUN SERUM SPF50+ PA++++', 'sp1.webp', 1 ,N'Kem chống nắng hóa học không chứa nano có tác dụng ngăn chặn tia UV, đồng thời dưỡng ẩm cho da. Kem chống nắng này mang lại làn da ẩm mượt như sương.'),
('SP002', N'TINH CHẤT CENTELLA', 'sp2.webp',3 , N'Một loại sữa rửa mặt nhẹ, gốc dầu, nhẹ nhàng làm tan lớp trang điểm, bụi bẩn, dầu và kem chống nắng mà không làm cay vùng mắt.'),
('SP003', N'MIẾNG DÁN CHE KHUYẾT ĐIỂM TEA-TRICA','sp3.webp',2 , N'Điều trị mụn nhọt của bạn một cách hiệu quả và vệ sinh với những miếng dán trị mụn SOS này. Hãy để mụn của bạn lành lại mà không bị kích ứng và nhiễm trùng do các chất kích thích bên ngoài gây ra và sự thôi thúc muốn nặn mụn!'),
('SP004', N'MẶT NẠ AMPOULE CENTELLA WATERGEL', 'sp4.webp',1 , N'Mặt nạ dạng gel có độ ẩm gấp ba lần tiêu chuẩn giúp làm dịu và cấp nước cho da một cách mạnh mẽ.'),
('SP005', N'DẦU TẨY TRANG NHẸ CENTELLA', 'sp5.webp',1 , N'Một loại sữa rửa mặt nhẹ, gốc dầu, nhẹ nhàng làm tan lớp trang điểm, bụi bẩn, dầu và kem chống nắng mà không làm cay vùng mắt.'),
('SP006', N'CENTELLA AMPOULE BỌT', 'sp6.webp', 3,N'Một loại sữa rửa mặt giàu bọt, có độ pH lý tưởng là 5 giúp loại bỏ hiệu quả lớp trang điểm và tạp chất mà không làm bong tróc da.'),
('SP007', N'KEM LÀM DỊU CENTELLA', 'sp7.webp',2 , N'Một loại kem làm dịu da có chứa ba thành phần lipid thực tế của lớp biểu bì giúp phục hồi hàng rào bảo vệ da.'),
('SP008', N'TINH CHẤT TƯƠI LÀM SẠCH LỖ CHÂN LÔNG' ,'sp8.webp', 1,N'Đấu tranh với lỗ chân lông to? Ống này sẽ là người bạn tốt nhất mới của bạn. Chứa Muối hồng Himalaya được làm giàu với các khoáng chất làm sạch, lỗ chân lông được làm sạch tạp chất. Phức hợp Peptide 9 của chúng tôi thúc đẩy độ đàn hồi của da để lỗ chân lông của bạn trở lại kích thước bình thường.'),
('SP009', N'KEM CHỐNG NẮNG HYALU-CICA SILKY-FIT','sp9.webp',3,  N' Kem chống nắng ngăn chặn tia UV, đồng thời dưỡng ẩm cho da. Mang lại làn da ẩm mượt, mịn màng.'),
('SP010', N'NƯỚC HOA HỒNG CENTELLA', 'sp10.webp', 2 ,  N'THÀNH PHẦN CHÍNH :Chiết xuất Centella Asiatica : Làm dịu và bổ sung độ ẩm cho da.'),
('SP011', N'SERUM LÀM SÁNG TÔNG MÀU', 'sp11.webp', 3 , N'Một loại ampoule hấp thụ nhanh sẽ mang lại cho bạn làn da sáng và rõ ràng.'),
('SP012', N'BỘ ĐÔI LÀM SẠCH', 'sp12.webp',3 , N'Lớp trang điểm, bụi bẩn và dầu; Da của chúng ta tiếp xúc với rất nhiều bụi bẩn suốt cả ngày nên một thói quen làm sạch hiệu quả là vô cùng quan trọng để duy trì sức khỏe làn da tốt. Vì vậy, còn gì tuyệt vời hơn việc không chỉ có một loại sữa rửa mặt mà là hai loại trong dòng sản phẩm của bạn!'),
('SP013', N'KEM MẮT PROBIO-CICA BAKUCHIOL', 'sp13.webp', 2, N'Chứa Madagascan Centella Asiatica lên men , Probio-cica và TECA có công thức đặc biệt để mang lại tác dụng làm dịu tối đa.
- Ceramide NP , có cấu trúc tương tự như hàng rào bảo vệ da và cica chất lượng cao được bào chế để củng cố sức mạnh của hàng rào bảo vệ da bằng cách tăng cường khả năng hấp thụ độ ẩm và sửa chữa các hàng rào bảo vệ da bị tổn thương.'),
('SP014', N'PROBIO-CICA CHUYÊN SÂU AMPOULE', 'sp14.webp',1, N'Chứa Madagascan Centella Asiatica lên men , Probio-cica và TECA có công thức đặc biệt để mang lại tác dụng làm dịu tối đa.
- Ceramide NP , có cấu trúc tương tự như hàng rào bảo vệ da và cica chất lượng cao được bào chế để củng cố sức mạnh của hàng rào bảo vệ da bằng cách tăng cường khả năng hấp thụ độ ẩm và sửa chữa các hàng rào bảo vệ da bị tổn thương.'),
('SP015', N'KEM CHỐNG NẮNG CENTELLA AIR-FIT PLUS SPF50+ PA++++', 'sp15.webp', 1, N'Kem chống nắng khoáng chất không nano có tác dụng ngăn chặn tia UV, đồng thời làm sáng da. Kem chống nắng này có thể bôi quanh năm mà không gây cảm giác nặng mặt hay để lại vệt trắng.'),
('SP016', N'KEM DƯỠNG ẨM PROBIO-CICA', 'sp16.webp', 2, N' Chứa Madagascan Centella Asiatica lên men, Probio-cica và TECA được pha chế đặc biệt để mang lại tác dụng làm dịu tối đa.
- Ceramide NP, có cấu trúc tương tự hàng rào bảo vệ da và cica chất lượng cao được bào chế để củng cố sức mạnh của hàng rào bảo vệ da bằng cách tăng cường hấp thụ độ ẩm và sửa chữa các hàng rào bảo vệ da bị tổn thương.
- Làm săn chắc kết cấu da và củng cố hàng rào bảo vệ da bằng cách nhân bản cấu trúc lớp của tế bào bảo vệ da, nền tảng khỏe mạnh của lipid da.
- Chứa dầu hạt thân thiện với da giúp tăng cường hấp thu tinh chất dinh dưỡng cao giúp làm dịu da khô.
- Kem có nồng độ cao với công thức tiên tiến nhẹ nhàng bám vào da và để lại lớp nền mềm mượt.'),
('SP017', N'SERUM HYALU-CICA', 'sp17.webp', 1, N'Kem chống nắng hóa học không chứa nano có tác dụng ngăn chặn tia UV, đồng thời dưỡng ẩm cho da. Kem chống nắng này mang lại làn da ẩm mượt như sương.'),
('SP018', N'KEM DƯỠNG ẨM CENTELLA', 'sp18.webp', 1, N'Kem dưỡng ẩm giúp làm dịu, cấp nước và nuôi dưỡng làn da bị tổn thương do môi trường bên ngoài có hại'),
('SP019', N'KEM HYALU-CICA', 'sp19.webp', 1, N'Một loại kem nhẹ nhàng cung cấp khả năng hydrat hóa mạnh mẽ kéo dài, dưỡng ẩm cho da khô từ sâu bên trong và cung cấp các lớp hydrat hóa cho da.'),
('SP020', N'NƯỚC HOA HỒNG LÀM SÁNG DA HYALU-CICA', 'sp20.webp', 3,N'Một loại mực dưỡng ẩm cao giúp tẩy tế bào chết nhẹ nhàng đồng thời làm dịu và làm sáng da.'),
('SP021', N'KEM DƯỠNG ẨM HYALU-CICA', 'sp21.webp',2, N'Một loại kem nhẹ nhàng cung cấp khả năng hydrat hóa mạnh mẽ kéo dài, dưỡng ẩm cho da khô từ sâu bên trong và cung cấp các lớp hydrat hóa cho da.'),
('SP022', N'BỘ DU LỊCH CENTELLA', 'sp22.webp',1, N'Bộ chăm sóc da du lịch Ultimate 5 bao gồm tất cả các sản phẩm trong Dòng Centella Madagascar.Bộ sản phẩm Bao gồm:
-Centella Ampoule Foam 20ml
-Centella Toning Toner 30ml
-Centella Ampoule 30ml
-Centella Soothing Cream 30ml
-Centella Light Cleaning Oil 30ml'),
('SP023', N'TINH CHẤT TRÀ-TRICA', 'sp23.webp', 2,N'Đây là phương pháp điều trị SOS hoàn hảo cho làn da dễ bị mụn trứng cá. Với các thành phần có tính làm dịu cao tập trung vào việc làm dịu da, công thức không gây mụn này giúp điều trị chứng viêm và kích ứng để giảm đau tối đa.'),
('SP024', N'BỘ ĐÔI DƯỠNG DA', 'sp24.webp',2,N'TẨY TRỜI VÀ SỬA CHỮA Các sản phẩm phổ biến nhất của chúng tôi thực sự tạo nên một cặp đôi tuyệt vời. Centella Asiatica được biết đến với đặc tính phục hồi, vì vậy không có bộ đôi nào tốt hơn để trẻ hóa làn da xỉn màu, đầy sẹo. Toning Toner nhẹ nhàng (210ml) của chúng tôi có thể được sử dụng hàng ngày để giúp tẩy tế bào chết trên da trong khi Ampoule nhẹ nhàng (100ml) của chúng tôi  làm dịu và phục hồi sự mất cân bằng trên da do môi trường khắc nghiệt gây ra. Công thức dịu nhẹ khiến những sản phẩm này trở thành sản phẩm không thể thiếu hàng ngày cho cả làn da nhạy cảm nhất.'),
('SP025', N'KEM CHỐNG NẮNG CENTELLA AIR-FIT SPF30 PA++++', 'sp25.webp', 1, N'Kem chống nắng khoáng chất không nano có tác dụng ngăn chặn tia UV, đồng thời làm sáng da. Mùa hè này phải có chất nhẹ trên da và bảo vệ chống lại nếp nhăn.')

-- Thêm kích thước cho sản phẩm SP001
INSERT INTO Size VALUES 
('SP001', 15, 'ml', 190000, 30),('SP001', 50, 'ml', 475000, 50),
('SP002', 30, 'ml', 225500, 50),('SP002', 55, 'ml', 300000, 50),('SP002', 110, 'ml', 440000, 50),
('SP003', 1, N'gói', 160000, 50),
('SP004', 25, 'ml', 71500, 50),
('SP005', 30, 'ml', 130000, 50),('SP005', 200, 'ml', 420000, 50),
('SP006', 20, 'ml', 95000, 50),('SP006', 125, 'ml', 280000, 50),
('SP007', 30, 'ml', 178500, 50),('SP007', 70, 'ml', 320000, 50),
('SP008', 30, 'ml', 225750, 50),('SP008', 50, 'ml', 340000, 50),('SP008', 100, 'ml', 460000, 50),
('SP009', 20, 'g', 380000, 50),('SP009', 7, 'g', 213750, 50),
('SP010', 30, 'ml', 119000, 50),('SP010', 210, 'ml', 360000, 50),('SP010', 400, 'ml', 520000, 50),
('SP011', 30, 'ml', 213750, 50),('SP011', 100, 'ml', 480000, 50),
('SP012', '', '', 656000, 50),
('SP013', 20, 'ml', 497000, 50),
('SP014', 50, 'ml', 440000, 50),('SP014', 95, 'ml', 600000, 50),
('SP015', 50, 'ml', 360000, 50),
('SP016', 15, 'ml', 237500, 50),('SP016', 50, 'ml', 480000, 50),
('SP017', 30, 'ml', 332500, 50),('SP017', 50, 'ml', 440000, 50),
('SP018', 30, 'ml', 213750, 50),('SP018', 75, 'ml', 400000, 50),
('SP019', 30, 'ml', 140000, 50),('SP019', 100, 'ml', 380000, 50),
('SP020', 30, 'ml', 142500, 50),('SP020', 210, 'ml', 400000, 50),
('SP021', '', '', 420000, 50),
('SP022', '', '', 620000, 50),
('SP023', 30, 'ml', 232750, 50),('SP023', 100, 'ml', 480000, 50),
('SP024', '', '', 620000, 50),
('SP025', 50, 'ml', 340000, 50)


INSERT INTO Images (Img, MaSP) VALUES
('sp1.webp', 'SP001'), ('sp1.1.webp', 'SP001'), ('sp1.2.webp', 'SP001'), ('sp1.3.webp', 'SP001'), ('sp1.4.webp','SP001'),
('sp2.webp', 'SP002'), ('sp2.1.webp', 'SP002'), ('sp2.2.webp', 'SP002'), ('sp2.3.webp', 'SP002'),
('sp3.webp', 'SP003'), ('sp3.1.webp', 'SP003'), ('sp3.2.webp', 'SP003'), ('sp3.3.webp', 'SP003'), ('sp3.4.webp','SP003'),
('sp4.webp', 'SP004'), ('sp4.1.webp', 'SP004'), ('sp4.2.webp', 'SP004'), ('sp4.3.webp', 'SP004'), ('sp4.4.webp','SP004'),
('sp5.webp', 'SP005'), ('sp5.1.webp', 'SP005'), ('sp5.2.webp', 'SP005'), ('sp5.3.webp', 'SP005'), ('sp5.4.webp','SP005'),
('sp6.webp', 'SP006'), ('sp6.1.webp', 'SP006'), ('sp6.2.webp', 'SP006'), ('sp6.3.webp', 'SP006'),
('sp7.webp', 'SP007'), ('sp7.1.webp', 'SP007'), ('sp7.2.webp', 'SP007'), ('sp7.3.webp', 'SP007'), ('sp7.4.webp','SP007'),
('sp8.webp', 'SP008'), ('sp8.1.webp', 'SP008'), ('sp8.2.webp', 'SP008'), ('sp8.3.webp', 'SP008'),
('sp9.webp', 'SP009'), ('sp9.1.webp', 'SP009'), ('sp9.2.webp', 'SP009'), ('sp9.3.webp', 'SP009'), ('sp9.4.webp','SP009'),
('sp10.webp', 'SP010'), ('sp10.1.webp', 'SP010'), ('sp10.2.webp', 'SP010'), ('sp10.3.webp', 'SP010'), ('sp10.4.webp','SP010'),
('sp11.webp', 'SP011'), ('sp11.1.webp', 'SP011'), ('sp11.2.webp', 'SP011'), ('sp11.3.webp', 'SP011'), ('sp11.4.webp','SP011'),
('sp12.webp', 'SP012'), ('sp12.1.webp', 'SP012'), ('sp12.2.webp', 'SP012'), ('sp12.3.webp', 'SP012'), ('sp12.4.webp','SP012'),
('sp13.webp', 'SP013'), ('sp13.1.webp', 'SP013'), ('sp13.2.webp', 'SP013'), ('sp13.3.webp', 'SP013'), ('sp13.4.webp','SP013'),
('sp14.webp', 'SP014'), ('sp14.1.webp', 'SP014'), ('sp14.2.webp', 'SP014'), ('sp14.3.webp', 'SP014'), ('sp14.4.webp','SP014'),
('sp15.webp', 'SP015'), ('sp15.1.webp', 'SP015'), ('sp15.2.webp', 'SP015'), ('sp15.3.webp', 'SP015'),
('sp16.webp', 'SP016'), ('sp16.1.webp', 'SP016'), ('sp16.2.webp', 'SP016'), ('sp16.3.webp', 'SP016'), ('sp16.4.webp','SP016'),
('sp17.webp', 'SP017'), ('sp17.1.webp', 'SP017'), ('sp17.2.webp', 'SP017'), ('sp17.3.webp', 'SP017'), ('sp17.4.webp','SP017'),
('sp18.webp', 'SP018'), ('sp18.1.webp', 'SP018'), ('sp18.2.webp', 'SP018'), ('sp18.3.webp', 'SP018'), ('sp18.4.webp','SP018'),
('sp19.webp', 'SP019'), ('sp19.1.webp', 'SP019'), ('sp19.2.webp', 'SP019'), ('sp19.3.webp', 'SP019'), ('sp19.4.webp','SP019'),
('sp20.webp', 'SP020'), ('sp20.1.webp', 'SP020'), ('sp20.2.webp', 'SP020'), ('sp20.3.webp', 'SP020'), ('sp20.4.webp','SP020'),
('sp21.webp', 'SP021'), ('sp21.1.webp', 'SP021'), ('sp21.2.webp', 'SP021'), ('sp21.3.webp', 'SP021'),
('sp22.webp', 'SP022'), ('sp22.1.webp', 'SP022'), ('sp22.2.webp', 'SP022'), ('sp22.3.webp', 'SP022'), ('sp22.4.webp','SP022'),
('sp23.webp', 'SP023'), ('sp23.1.webp', 'SP023'), ('sp23.2.webp', 'SP023'), ('sp23.3.webp', 'SP023'),
('sp24.webp', 'SP024'), ('sp24.1.webp', 'SP024'), ('sp24.2.webp', 'SP024'), ('sp24.3.webp', 'SP024'), ('sp24.4.webp','SP024'),
('sp25.webp', 'SP025'), ('sp25.1.webp', 'SP025'), ('sp25.2.webp', 'SP025'), ('sp25.3.webp', 'SP025')


-- Thêm dữ liệu vào bảng DonHang
INSERT INTO DonHang (MaDH, MaKH, MaNV, NgayDat, NgayGiaoDuKien, DiaChi, TrangThai) VALUES 
('DH001', 1, 'NV01', '2024-05-30 08:00:00', '2024-06-05 08:00:00', 'Số 123, Đường ABC, Quận XYZ, Thành phố Hồ Chí Minh', N'Đã hoàn thành'),
('DH002', 1, 'NV02', '2024-05-31 08:00:00', '2024-06-06 08:00:00', 'Số 22, Thôn Tiến Đông,Eatih, Eakar, Đắk Lắk', N'Đã hoàn thành'),
('DH003', 5, 'NV04', '2024-05-31 08:00:00', '2024-06-06 08:00:00', 'Số 890, Đường GHI, Quận RST, Thành phố Hải Phòng', N'Đã hoàn thành'),
('DH004', 18, 'NV02', '2024-05-31 08:00:00', '2024-06-06 08:00:00', 'Số 234, Đường ABC, Quận UVW, Thành phố Đà Nẵng', N'Đã hoàn thành'),
('DH005', 10, 'NV05', '2024-05-31 08:00:00', '2024-06-06 08:00:00', 'Số 890, Đường EFG, Quận UVW, Thành phố Hải Phòng', N'Đã hoàn thành'),
('DH006', 5, 'NV02', '2024-05-31 08:00:00', '2024-06-06 08:00:00', 'Số 345, Đường TUV, Quận XYZ, Thành phố Hải Phòng', N'Đã hoàn thành'),
('DH007', 6, 'NV04', '2024-05-31 08:00:00', '2024-06-06 08:00:00', 'Số 678, Đường WXY, Quận RST, Thành phố Hồ Chí Minh', N'Đã hoàn thành'),
('DH008', 1, 'NV02', '2024-05-31 08:00:00', '2024-06-06 08:00:00', 'Số 123, Đường ABC, Quận XYZ, Thành phố Hồ Chí Minh', N'Đã hoàn thành'),
('DH09', 10, 'NV05', '2024-05-31 08:00:00', '2024-06-06 08:00:00', 'Số 890, Đường EFG, Quận UVW, Thành phố Hải Phòng', N'Đã hoàn thành'),
('DH010', 14, 'NV03', '2024-05-31 08:00:00', '2024-06-06 08:00:00', 'Số 678, Đường WXY, Quận RST, Thành phố Hồ Chí Minh', N'Đã hoàn thành'),
('DH011', 18, 'NV01', '2024-05-31 08:00:00', '2024-06-06 08:00:00', 'Số 234, Đường ABC, Quận UVW, Thành phố Đà Nẵng', N'Đã hoàn thành');

-- Thêm dữ liệu vào bảng CTDonHang
INSERT INTO CTDonHang (MaDH, MaSP, SoLuong, DonGia) VALUES 
('DH001', 'SP001', 1, 475000),
('DH002', 'SP020', 1, 400000),
('DH003', 'SP022', 1, 620000),
('DH004', 'SP021', 1, 420000),
('DH005', 'SP016', 1, 480000),
('DH006', 'SP014', 1, 440000),
('DH007', 'SP004', 1, 300000),
('DH008', 'SP025', 1, 340000),
('DH09', 'SP014', 1, 480000),
('DH010', 'SP024', 1, 620000),
('DH011', 'SP018', 1, 400000);
-- Thêm dữ liệu vào bảng DanhGia
INSERT INTO DanhGia (MaDG, SoSao, NoiDung, Images, NgayDG, Likes, CTDH) VALUES 
('DG001', 1, N'Rất hài lòng với sản phẩm này.', '', '2024-05-04 10:00:00', 1, 1),
('DG002', 2, N'Sản phẩm chất lượng, giao hàng nhanh chóng.', '', '2024-05-04 11:00:00', 1, 10),
('DG003', 3, N'Giao hàng đúng hẹn, nhưng sản phẩm hơi bị trầy xước.', '', '2024-06-01 12:00:00', 1, 3),
('DG004', 4, N'Sản phẩm không đúng mô tả, giao hàng muộn.', '', '2024-06-06 13:00:00', 0, 4);

SELECT 
    SanPham.MaSP,
    SanPham.TenSP,
    SanPham.Hinh,
    Size.KichThuoc,
    Size.DonViTinh,
    Size.Gia,
    Size.SoLuong
FROM 
    SanPham
JOIN 
    Size ON SanPham.MaSP = Size.MaSP;


SELECT 
    SanPham.MaSP,
    SanPham.TenSP,
    SanPham.	,
    STRING_AGG(Images.Img, ', ') AS HinhAnh,
    Size.KichThuoc,
    Size.DonViTinh,
    Size.Gia
FROM 
    SanPham
LEFT JOIN 
    Images ON SanPham.MaSP = Images.MaSP
JOIN 
    Size ON SanPham.MaSP = Size.MaSP
GROUP BY 
    SanPham.MaSP, SanPham.TenSP, SanPham.Hinh, Size.KichThuoc, Size.DonViTinh, Size.Gia;


	select s1_0.masp, s1_0.hinh, s1_0.mota, s1_0.tensp from san_pham s1_0


	select s1_0.masp,s1_0.hinh,s1_0.mota,s1_0.tensp,s1_0.id from san_pham s1_0