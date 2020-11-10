
        CREATE TABLE IF NOT EXISTS "LOAIHG" (
            "MALH"	VARCHAR(4) NOT NULL,
            "TENLH"	TEXT NOT NULL,
            "MOTALH"	TEXT,
            PRIMARY KEY("MALH")
        );
    INSERT INTO LOAIHG(MALH, TENLH, MOTALH) VALUES 
('L0001', 'Máy ảnh - Quay phim', 'Máy ảnh - Quay phim'), 
('L0002', 'Hàng tiêu dùng - Thực phẩm', 'Hàng tiêu dùng - Thực phẩm'), 
('L0003', 'Thể thao - Dã ngoại', 'Thể thao - Dã ngoại'), 
('L0004', 'Điện thoại - Máy tính bảng', 'Điện thoại'), 
('L0005', 'Phụ kiện - Thiết bị số', 'Phụ kiện - Thiết bị số'), 
('L0006', 'Điện gia dụng', 'Điện gia dụng'), 
('L0007', 'Nhà cửa - Đời sống', 'Nhà cửa - Đời sống'), 
('L0008', 'Thời trang - Phụ kiện', 'Thời trang - Phụ kiện'), 
('L0009', 'Xe máy - Ô tô - Xe đạp', 'Xe máy - Ô tô - Xe đạp'), 
('L0010', 'Hàng quốc tế', 'Hàng quốc tế');
        CREATE TABLE IF NOT EXISTS "HANG" (
            "MAHG"	VARCHAR(4) NOT NULL,
            "TENHG"	TEXT NOT NULL,
            "DONGIA"	REAL NOT NULL,
            "MALH"	VARCHAR(4) NOT NULL,
            PRIMARY KEY("MAHG"),
            FOREIGN KEY("MALH") REFERENCES "LOAIHG"("MALH")
        );
    INSERT INTO HANG(MAHG, TENHG, DONGIA, MALH) VALUES 
('H0001', 'Camera chống trộm Xiaomi Mi Home', '649000', 'L0001'), 
('H0002', 'Camera IP Wifi Ezviz C6N', '509000', 'L0001'), 
('H0003', 'Máy Ảnh Canon EOS 1500D', '10409000', 'L0001'), 
('H0004', 'Camera Wifi Yoosee', '390000', 'L0001'), 
('H0005', 'Camera IP Wifi Ezviz CS-CV246', '459000', 'L0001'), 
('H0006', 'Hộp Film Fujifilm Mini 20 Tấm', '249000', 'L0001'), 
('H0007', 'Thẻ Nhớ SDXC Sandisk Extreme Pro 256GB', '410000', 'L0001'), 
('H0008', 'Bộ Kit Camera AHD 2.0Mp Full HD', '1990000', 'L0001'), 
('H0009', 'Máy Ảnh Lấy Liền Fujifilm Instax Mini 11', '1890000', 'L0001'), 
('H0010', 'Tay cầm chống rung cho điện thoại Gimbal Zhiyun Smooth 4', '1599000', 'L0001'), 
('H0011', 'Thùng Bia Tiger 24 Lon', '341000', 'L0002'), 
('H0012', 'Túi Nước Giặt Omo Matic', '151000', 'L0002'), 
('H0013', 'Thùng 48 Hộp Sữa Nestlé MILO Nước', '315000', 'L0002'), 
('H0014', 'Lốc 4 Hộp Sữa Dừa Hạnh Nhân Cocoxim 180ml', '32000', 'L0002'), 
('H0015', 'Lốc 4 Hộp Sữa Dừa Socola Cocoxim 180ml', '32000', 'L0002'), 
('H0016', 'Nước Xả Vải Comfort Cho Da Nhạy Cảm', '163000', 'L0002'), 
('H0017', 'Thùng 36 Hộp Sữa đậu nành Fami Canxi', '142000', 'L0002'), 
('H0018', 'Rong Nho Trường Thọ - Số 1 Amazon Hoa Kỳ - Hộp 40g', '69000', 'L0002'), 
('H0019', 'Nước Lau Sàn Sunlight Tinh Dầu Thiên Nhiên', '74000', 'L0002'), 
('H0020', 'Khô gà lá chanh thượng hạng hiệu TETE', '109000', 'L0002'), 
('H0021', 'Giày Thể Thao Nữ Hunter Core Festive Collection DSWH01204DOG - Golden Gleam', '629000', 'L0003'), 
('H0022', 'Dụng Cụ Tập Cổ Tay - Hỗ trợ cổ tay', '88000', 'L0003'), 
('H0023', 'Xe đạp tập thể dục Air Bike BG', '1559000', 'L0003'), 
('H0024', 'BG Xe đạp tập thể dục thể thao Spining Bike', '2299000', 'L0003'), 
('H0025', 'Giày Thể Thao Nữ Hunter Core Festive Collection DSWH01204BAC', '629000', 'L0003'), 
('H0026', 'Bộ ván trượt mặt nhám cao cấp', '438000', 'L0003'), 
('H0027', 'Dây đàn hồi tập thể hình Mini band Aolikes AL3603', '84900', 'L0003'), 
('H0028', 'Giày Thể Thao Nữ Hunter Core Black Line DSWH02900TRG', '629000', 'L0003'), 
('H0029', 'Găng tay tập GYM, đi phượt bảo vệ cổ tay và khớp ngón tay', '89000', 'L0003'), 
('H0030', 'Giày cầu lông Kawasaki K080', '589000', 'L0003'), 
('H0031', 'Điện thoại Mobell M118', '189000', 'L0004'), 
('H0032', 'Máy tính bảng Kindle Fire HD8 Plus 2020', '2749000', 'L0004'), 
('H0033', 'Điện thoại bàn không dây Panasonic KX-TGC310', '783000', 'L0004'), 
('H0034', 'Điện Thoại Samsung Galaxy Note 10', '16995000', 'L0004'), 
('H0035', 'Điện Thoại Samsung Galaxy A7', '6898000', 'L0004'), 
('H0036', 'Điện thoại Xiaomi Redmi Note 9', '3990000', 'L0004'), 
('H0037', 'Điện thoại Cố định Nippon NP-1201', '265000', 'L0004'), 
('H0038', 'iPad Pro 11 inch (2018) 64GB Wifi Cellular', '21490000', 'L0004'), 
('H0039', 'Điện Thoại Bàn Panasonic KX-TS500MX', '242900', 'L0004'), 
('H0040', 'Điện Thoại Vsmart Joy 2+', '2790000', 'L0004'), 
('H0041', 'Bảng Vẽ Điện Tử Gaomon 1060Pro', '619000', 'L0005'), 
('H0042', 'Loa Bluetooth Hình Thiên Nga Huawei Honor AM08', '179000', 'L0005'), 
('H0043', 'Tai Nghe Bluetooth 5.0 I12 TWS Cảm Ứng Nhét Tai Không Dây', '95000', 'L0005'), 
('H0044', 'Tai nghe Samsung Galaxy J7 Pro', '69000', 'L0005'), 
('H0045', 'Thảm da trải bàn làm việc 2 mặt cỡ 40 x 80 cm', '169000', 'L0005'), 
('H0046', 'Bộ Bàn Phím Và Chuột Không Dây Logitech MK240 2016', '430000', 'L0005'), 
('H0047', 'Đồng hồ thông minh ANNCOE WATCH 5', '650000', 'L0005'), 
('H0048', 'Bàn Phím Máy Tính Mini K1000', '75000', 'L0005'), 
('H0049', 'Bộ Găng Tay 4 Ngón Cảm Ứng CONVI CV04', '39000', 'L0005'), 
('H0050', 'Đồng Hồ Thông Minh Smartwatch Cao Cấp X6 Màn Hình Cong', '208000', 'L0005'), 
('H0051', 'Máy Vắt Cam Philips HR-2738', '419000', 'L0006'), 
('H0052', 'Quạt Sạc Comet CRF0705 (5W)', '203900', 'L0006'), 
('H0053', 'Đầu lọc nước tại vòi Water Purifier', '126000', 'L0006'), 
('H0054', 'Máy Xay Thịt 2 Lưỡi Kép Bluestone CHB-5139 (2L)', '589000', 'L0006'), 
('H0055', 'Bàn Ủi Khô Philips HD1172', '295000', 'L0006'), 
('H0056', 'Bàn Làm Việc Kệ Lửng 80CM', '249000', 'L0007'), 
('H0057', 'Kệ Để Bàn Chải Kem Đánh Răng OENON', '245000', 'L0007'), 
('H0058', 'Ổ khóa chống trộm thông minh', '161000', 'L0007'), 
('H0059', 'Bàn Làm Việc Có Kệ Sách Mẫu Mới', '274000', 'L0007'), 
('H0060', 'Bình Giữ Nhiệt Lock & Lock Two-Tone Clip Tumbler LHC4151', '278000', 'L0007'), 
('H0061', 'Áo Thun Nam Tay Lỡ Unisex Hạc JaPan', '48000', 'L0008'), 
('H0062', 'Set 10 Đôi Vớ Nữ In Hình Gấu Brown Xinh Xắn', '36800', 'L0008'), 
('H0063', 'Vali kéo Kamiliant ZUKU TSA', '799000', 'L0008'), 
('H0064', 'Ví/Bóp đăng kiểm ô tô cao cấp, sang trọng ERD21', '69000', 'L0008'), 
('H0065', 'Balo Unisex Thời Trang Cao Cấp Có Nhiều Ngăn Praza - BLTK182', '196000', 'L0008'), 
('H0066', 'Xe máy Honda Lead Cao Cấp 2019', '40910000', 'L0009'), 
('H0067', 'Xe Máy Honda Vision 2019 Bản Đặc Biệt', '32890000', 'L0009'), 
('H0068', 'Xe Máy Honda Winner X - Phiên Bản Camo - Phanh ABS', '43790000', 'L0009'), 
('H0069', 'Xe đạp cho bé gái Cody Baby BYN.006', '1400000', 'L0009'), 
('H0070', 'Mũ Bảo Hiểm 3/4 đầu SRT N168 Freesize', '189000', 'L0009'), 
('H0071', 'Bàn Chải Đánh Răng Điện Oral B Vitality', '498000', 'L0010'), 
('H0072', 'Đồng hồ thông minh XIAOMI Haylou LS02', '515000', 'L0010'), 
('H0073', 'Mặt nạ thạch tinh chất Moisture Q10', '170000', 'L0010'), 
('H0074', 'BOUYIEE Xịt Tay Khô Diêt khuẩn', '220000', 'L0010'), 
('H0075', 'Máy đo huyết áp kẹt ngón tay kỹ thuật số màn hình LED', '138000', 'L0010');
        CREATE TABLE IF NOT EXISTS "KHACH" (
            "MAKH"	VARCHAR(4) NOT NULL,
            "TENKH"	TEXT NOT NULL,
            "DTKH"	VARCHAR(10) NOT NULL,
            "DCKH"	VARCHAR(255) NOT NULL,
            PRIMARY KEY("MAKH")
        );
    INSERT INTO KHACH(MAKH, TENKH, DTKH, DCKH) VALUES 
('K0001', 'Tiêu Lâm Đình', '0376492874', '8117, Thôn Ân, Phường Đình, Huyện Bùi, Lạng Sơn'), 
('K0002', 'Giang Thư', '0514874514', '083 Phố Kiếm, Phường Khanh, Quận Triệu, Quảng Bình'), 
('K0003', 'Đàm Bội Nhi', '0610530835', '8118 Phố Nguyễn, Phường Lâm Ngân Cẩn, Huyện 4, Quảng Nam'), 
('K0004', 'Phạm Thi Tuyến', '01231911171', '6 Phố Lê Liên Phong, Phường Đào, Huyện Lâm, Quảng Trị'), 
('K0005', 'Nông Tiên Quyên', '0735869779', '76 Phố Thạc, Phường Lạc Quảng Hoài, Huyện Trà Luật Kiên, Phú Yên'), 
('K0006', 'Mâu Kim Mẫn', '0548628903', '56, Ấp Hạnh Giáp, Thôn Uyển Mẫn, Quận Chinh, Phú Yên'), 
('K0007', 'Mạch Sơn Tú', '0930347038', '199 Phố Ngọc, Xã 7, Huyện Hoa, Cần Thơ'), 
('K0008', 'Biện Di Nương', '0670515737', '7137, Ấp Trưng Trân, Phường 4, Quận Thanh Đoàn, Kon Tum'), 
('K0009', 'Lưu Hoa', '0325982603', '96, Thôn Lân Sử, Xã Hồ Dương Sinh, Huyện Cấn Tâm Nga, Bà Rịa - Vũng Tàu'), 
('K0010', 'Hồng Ý Mi', '0508743271', '2222 Phố Quách Đồng Giáp, Xã Liêm Đậu, Huyện Tú, Hồ Chí Minh'), 
('K0011', 'Nguyễn Thủy', '0614524488', '592 Phố Thiên, Phường Đàm, Quận Bửu Ty Hải Phòng'), 
('K0012', 'Mã Khoa Sâm', '03506600381', '841 Phố Phạm Lan Ca, Xã Thục Kim, Quận 59, Đồng Tháp'), 
('K0013', 'Mâu Viên', '0231856055', '31 Phố Phương, Xã Bồ Phú Tuấn, Quận Quản, Hà Nội'), 
('K0014', 'Khoa Duyên', '0706610777', '505, Ấp 70, Phường Thục, Quận Khoa, Cà Mau'), 
('K0015', 'Đàm Lan Thơ', '0422207613', '3 Phố Thi, Xã Việt Điền, Huyện Thi, Đà Nẵng'), 
('K0016', 'Phí Sơn Tâm', '0703387610', '1682 Phố Lan, Xã Phương Lam, Quận Quỳnh Hình, Hồ Chí Minh'), 
('K0017', 'Phí Lý', '0125892941', '3588 Phố Bảo Nhi Tấn, Ấp Trang Thạch, Huyện Trang, Quảng Ngãi'), 
('K0018', 'Thi Thiện An', '0215986874', '35 Phố Lạc Ngân Chinh, Ấp Nguyên Sâm, Huyện 15, Hà Tĩnh'), 
('K0019', 'Mai Hà Hoa', '0519866409', '1 Phố Doãn, Ấp Bồ Khanh, Huyện Chiểu Đào, Bà Rịa - Vũng Tàu'), 
('K0020', 'Cái Bữu Hỷ', '01681249608', '39 Phố Tô Khai Tâm, Phường Ca Thiều, Quận 1, Long An'), 
('K0021', 'Đôn Danh Diệp', '03203432476', '98 Phố Xa Tiên Thời, Ấp Hạnh Lan, Huyện Sơn Thiện, Bắc Giang'), 
('K0022', 'Ninh Cương', '07112549566', '5 Phố Kính, Phường 49, Huyện Thơ Kha, Nghệ An'), 
('K0023', 'Tăng Đài Mi', '01234234979', '9 Phố Ca, Thôn Chi Anh, Quận 47, Bắc Ninh'), 
('K0024', 'Giáp Quân Độ', '0920136964', '0 Phố Kim Khánh Chiến, Phường Trang, Quận Tòng Độ Ly, Hồ Chí Minh'), 
('K0025', 'Mẫn Tuệ Đào', '0684243192', '02 Phố Thái, Xã Phí, Quận 61 Hồ Chí Minh'), 
('K0026', 'Lại Cát', '0211194158', '5 Phố Trung, Ấp Bồ Bằng, Quận Xuân Lan, Hải Phòng'), 
('K0027', 'Phí Huấn', '0702732677', '032 Phố Mạnh, Xã 46, Huyện Vỹ Diệp, Long An'), 
('K0028', 'Vương Long Kiệt', '0976113979', '8347 Phố Văn Bửu Đại, Phường 24, Quận Kiên Hy, Bình Dương'), 
('K0029', 'Vừ Hà', '0741608373', '124, Ấp Phong Chương, Phường Thái Duệ Tường, Huyện Điền Vi Định, Nam Định'), 
('K0030', 'Đới Ca', '0377106271', '86 Phố Toại, Phường 52, Huyện Thái, Nghệ An');
        CREATE TABLE IF NOT EXISTS "DDH" (
            "MADDH"	VARCHAR(4) NOT NULL,
            "NGAYDH"	DATE NOT NULL,
            "NGAYHL"	DATE NOT NULL,
            "MAKH"	VARCHAR(4) NOT NULL,
            PRIMARY KEY("MADDH"),
            FOREIGN KEY("MAKH") REFERENCES "KHACH"("MAKH")
        );
    INSERT INTO DDH(MADDH, NGAYDH, NGAYHL, MAKH) VALUES 
('D0001', '2018-06-06', '2018-06-07', 'K0003'), 
('D0002', '2018-08-26', '2018-08-29', 'K0019'), 
('D0003', '2018-11-14', '2018-11-17', 'K0003'), 
('D0004', '2018-03-23', '2018-03-29', 'K0029'), 
('D0005', '2018-06-25', '2018-07-01', 'K0011'), 
('D0006', '2018-09-13', '2018-09-14', 'K0003'), 
('D0007', '2018-12-12', '2018-12-21', 'K0008'), 
('D0008', '2018-02-01', '2018-02-04', 'K0002'), 
('D0009', '2018-05-08', '2018-05-12', 'K0013'), 
('D0010', '2018-09-04', '2018-09-07', 'K0010'), 
('D0011', '2019-12-15', '2019-12-18', 'K0029'), 
('D0012', '2019-02-01', '2019-02-08', 'K0017'), 
('D0013', '2019-06-08', '2019-06-15', 'K0005'), 
('D0014', '2019-09-01', '2019-09-06', 'K0009'), 
('D0015', '2019-12-22', '2019-12-28', 'K0014'), 
('D0016', '2019-03-26', '2019-03-31', 'K0014'), 
('D0017', '2019-05-05', '2019-05-08', 'K0017'), 
('D0018', '2019-08-25', '2019-09-01', 'K0021'), 
('D0019', '2019-12-06', '2019-12-12', 'K0019'), 
('D0020', '2019-03-25', '2019-04-03', 'K0007'), 
('D0021', '2020-05-18', '2020-05-19', 'K0009'), 
('D0022', '2020-08-27', '2020-08-29', 'K0026'), 
('D0023', '2020-12-09', '2020-12-12', 'K0020'), 
('D0024', '2020-02-06', '2020-02-09', 'K0006'), 
('D0025', '2020-05-19', '2020-05-20', 'K0023'), 
('D0026', '2020-09-06', '2020-09-09', 'K0013'), 
('D0027', '2020-11-26', '2020-11-28', 'K0029'), 
('D0028', '2020-03-09', '2020-03-15', 'K0011'), 
('D0029', '2020-05-26', '2020-06-01', 'K0025'), 
('D0030', '2020-08-05', '2020-08-12', 'K0008'); 

        CREATE TABLE "CTDDH" (
            "MADDH"	VARCHAR(4) NOT NULL,
            "MAHG"	VARCHAR(4) NOT NULL,
            "SLDAT"	INTEGER NOT NULL DEFAULT 1,
            FOREIGN KEY("MADDH") REFERENCES "DDH"("MADDH"),
            FOREIGN KEY("MAHG") REFERENCES "HANG"("MAHG"),
            PRIMARY KEY("MADDH","MAHG")
        );
    INSERT INTO CTDDH(MADDH, MAHG, SLDAT) VALUES 
('D0001', 'H0018', 6),('D0001', 'H0003', 15),('D0001', 'H0046', 9),('D0001', 'H0058', 15),('D0001', 'H0072', 6),('D0002', 'H0064', 5),('D0002', 'H0052', 7),('D0002', 'H0016', 6),('D0002', 'H0051', 18),('D0002', 'H0040', 4),('D0003', 'H0018', 17),('D0003', 'H0072', 11),('D0003', 'H0060', 9),('D0003', 'H0067', 8),('D0003', 'H0038', 5),('D0003', 'H0034', 2),('D0004', 'H0016', 15),('D0004', 'H0038', 13),('D0004', 'H0059', 18),('D0005', 'H0009', 14),('D0005', 'H0031', 6),('D0005', 'H0019', 11),('D0005', 'H0024', 4),('D0006', 'H0002', 19),('D0006', 'H0040', 10),('D0006', 'H0050', 15),('D0007', 'H0041', 19),('D0007', 'H0044', 13),('D0007', 'H0037', 3),('D0007', 'H0025', 10),('D0007', 'H0015', 8),('D0008', 'H0050', 19),('D0008', 'H0014', 18),('D0008', 'H0037', 7),('D0008', 'H0049', 11),('D0009', 'H0069', 3),('D0009', 'H0061', 4),('D0009', 'H0039', 18),('D0009', 'H0004', 18),('D0010', 'H0058', 19),('D0010', 'H0015', 8),('D0010', 'H0040', 10),('D0010', 'H0064', 5),('D0010', 'H0033', 8),('D0010', 'H0029', 8),('D0011', 'H0067', 2),('D0011', 'H0054', 8),('D0011', 'H0045', 17),('D0012', 'H0047', 3),('D0012', 'H0007', 19),('D0012', 'H0019', 12),('D0013', 'H0065', 15),('D0013', 'H0046', 16),('D0013', 'H0063', 18),('D0013', 'H0026', 13),('D0013', 'H0060', 13),('D0014', 'H0032', 9),('D0014', 'H0031', 18),('D0014', 'H0070', 18),('D0014', 'H0007', 8),('D0014', 'H0026', 10),('D0015', 'H0010', 3),('D0015', 'H0019', 1),('D0015', 'H0050', 10),('D0016', 'H0072', 8),('D0016', 'H0001', 18),('D0016', 'H0039', 7),('D0016', 'H0003', 4),('D0017', 'H0008', 14),('D0017', 'H0022', 9),('D0017', 'H0062', 11),('D0017', 'H0005', 15),('D0017', 'H0063', 14),('D0018', 'H0067', 7),('D0018', 'H0060', 8),('D0018', 'H0026', 14),('D0018', 'H0047', 4),('D0019', 'H0012', 16),('D0019', 'H0019', 10),('D0019', 'H0051', 6),('D0020', 'H0007', 8),('D0020', 'H0072', 16),('D0020', 'H0025', 16),('D0020', 'H0039', 15),('D0021', 'H0073', 2),('D0021', 'H0002', 19),('D0021', 'H0036', 12),('D0021', 'H0025', 12),('D0021', 'H0022', 4),('D0021', 'H0006', 17),('D0022', 'H0032', 5),('D0022', 'H0011', 15),('D0022', 'H0045', 5),('D0022', 'H0065', 15),('D0022', 'H0048', 10),('D0023', 'H0067', 16),('D0023', 'H0013', 11),('D0023', 'H0020', 7),('D0024', 'H0050', 12),('D0024', 'H0035', 16),('D0024', 'H0015', 11),('D0025', 'H0026', 18),('D0025', 'H0027', 9),('D0025', 'H0045', 8),('D0026', 'H0014', 17),('D0026', 'H0042', 1),('D0026', 'H0046', 12),('D0026', 'H0073', 14),('D0026', 'H0024', 8),('D0026', 'H0012', 11),('D0027', 'H0030', 19),('D0027', 'H0052', 18),('D0027', 'H0035', 13),('D0027', 'H0044', 13),('D0028', 'H0017', 16),('D0028', 'H0072', 5),('D0028', 'H0055', 18),('D0028', 'H0030', 9),('D0028', 'H0027', 15),('D0029', 'H0034', 2),('D0029', 'H0020', 16),('D0029', 'H0022', 10),('D0030', 'H0073', 16),('D0030', 'H0063', 18),('D0030', 'H0028', 12); 

        CREATE TABLE "DOTGIAO" (
            "MADGH"	VARCHAR(4) NOT NULL,
            "MADDH"	VARCHAR(4) NOT NULL,
            "NGAYDGH"	DATE NOT NULL,
            FOREIGN KEY("MADDH") REFERENCES "DDH"("MADDH"),
            PRIMARY KEY("MADDH","MADGH")
        );
    
        CREATE TABLE "CTDGH" (
            "MADGH"	VARCHAR(4) NOT NULL,
            "MAHG"	VARCHAR(4) NOT NULL,
            "SLGH"	INTEGER NOT NULL,
            FOREIGN KEY("MADGH") REFERENCES "DOTGIAO"("MADGH"),
            FOREIGN KEY("MAHG") REFERENCES "HANG"("MAHG"),
            PRIMARY KEY("MADGH","MAHG")
        );
    INSERT INTO DOTGIAO (MADGH, NGAYDGH, MADDH) VALUES 
('G0001', '2018-06-27', 'D0001'), 
('G0002', '2018-06-08', 'D0001'), 
('G0003', '2018-06-15', 'D0001'), 
('G0004', '2018-06-13', 'D0001'), 
('G0005', '2018-06-30', 'D0005'), 
('G0006', '2018-07-17', 'D0005'), 
('G0007', '2018-06-28', 'D0005'), 
('G0008', '2018-09-19', 'D0006'), 
('G0009', '2018-09-24', 'D0006'), 
('G0010', '2018-12-15', 'D0007'), 
('G0011', '2018-12-17', 'D0007'), 
('G0012', '2018-02-07', 'D0008'), 
('G0013', '2018-02-20', 'D0008'), 
('G0014', '2018-09-20', 'D0010'), 
('G0015', '2018-09-18', 'D0010'), 
('G0016', '2019-12-30', 'D0011'), 
('G0017', '2019-12-24', 'D0011'), 
('G0018', '2019-12-21', 'D0011'), 
('G0019', '2019-06-29', 'D0013'), 
('G0020', '2019-06-18', 'D0013'), 
('G0021', '2019-07-01', 'D0013'), 
('G0022', '2020-01-07', 'D0015'), 
('G0023', '2019-12-23', 'D0015'), 
('G0024', '2020-01-05', 'D0015'), 
('G0025', '2020-01-05', 'D0015'), 
('G0026', '2019-09-10', 'D0018'), 
('G0027', '2019-09-22', 'D0018'), 
('G0028', '2019-08-31', 'D0018'), 
('G0029', '2019-08-27', 'D0018'), 
('G0030', '2019-12-07', 'D0019'), 
('G0031', '2020-05-27', 'D0021'), 
('G0032', '2020-05-25', 'D0021'), 
('G0033', '2020-09-12', 'D0022'), 
('G0034', '2020-09-19', 'D0022'), 
('G0035', '2020-12-14', 'D0023'), 
('G0036', '2020-12-23', 'D0023'), 
('G0037', '2020-12-16', 'D0023'), 
('G0038', '2020-12-26', 'D0023'), 
('G0039', '2020-02-13', 'D0024'), 
('G0040', '2020-02-17', 'D0024'), 
('G0041', '2020-06-01', 'D0025'), 
('G0042', '2020-06-17', 'D0025'), 
('G0043', '2020-06-08', 'D0025'), 
('G0044', '2020-09-30', 'D0026'), 
('G0045', '2020-09-26', 'D0026'), 
('G0046', '2020-03-27', 'D0028'), 
('G0047', '2020-03-26', 'D0028'), 
('G0048', '2020-03-18', 'D0028'), 
('G0049', '2020-03-30', 'D0028'), 
('G0050', '2020-06-12', 'D0029'), 
('G0051', '2020-06-13', 'D0029'), 
('G0052', '2020-08-09', 'D0030'), 
('G0053', '2020-08-28', 'D0030'); 
INSERT INTO CTDGH (MADGH, MAHG, SLGH) VALUES 
('G0001', 'H0058', '6'), 
('G0001', 'H0003', '2'), 
('G0001', 'H0046', '2'), 
('G0001', 'H0018', '5'), 
('G0002', 'H0003', '6'), 
('G0002', 'H0058', '8'), 
('G0002', 'H0018', '1'), 
('G0002', 'H0046', '4'), 
('G0003', 'H0046', '1'), 
('G0003', 'H0003', '3'), 
('G0003', 'H0058', '1'), 
('G0004', 'H0003', '4'), 
('G0004', 'H0046', '2'), 
('G0004', 'H0072', '6'), 
('G0005', 'H0031', '5'), 
('G0005', 'H0019', '2'), 
('G0006', 'H0031', '1'), 
('G0007', 'H0009', '14'), 
('G0007', 'H0019', '9'), 
('G0007', 'H0024', '4'), 
('G0008', 'H0040', '7'), 
('G0008', 'H0002', '5'), 
('G0009', 'H0002', '14'), 
('G0009', 'H0040', '3'), 
('G0009', 'H0050', '15'), 
('G0010', 'H0025', '5'), 
('G0010', 'H0037', '2'), 
('G0010', 'H0041', '18'), 
('G0011', 'H0041', '1'), 
('G0011', 'H0044', '13'), 
('G0011', 'H0037', '1'), 
('G0011', 'H0025', '5'), 
('G0011', 'H0015', '8'), 
('G0012', 'H0050', '1'), 
('G0012', 'H0014', '10'), 
('G0012', 'H0037', '6'), 
('G0013', 'H0050', '18'), 
('G0013', 'H0014', '8'), 
('G0013', 'H0037', '1'), 
('G0013', 'H0049', '11'), 
('G0014', 'H0015', '5'), 
('G0014', 'H0040', '8'), 
('G0015', 'H0058', '19'), 
('G0015', 'H0015', '3'), 
('G0015', 'H0040', '2'), 
('G0015', 'H0064', '5'), 
('G0015', 'H0033', '8'), 
('G0015', 'H0029', '8'), 
('G0016', 'H0054', '7'), 
('G0016', 'H0067', '1'), 
('G0017', 'H0067', '1'), 
('G0017', 'H0054', '1'), 
('G0018', 'H0045', '17'), 
('G0019', 'H0026', '4'), 
('G0019', 'H0063', '16'), 
('G0019', 'H0046', '12'), 
('G0020', 'H0063', '1'), 
('G0020', 'H0065', '10'), 
('G0020', 'H0026', '1'), 
('G0021', 'H0065', '5'), 
('G0021', 'H0046', '4'), 
('G0021', 'H0063', '1'), 
('G0021', 'H0026', '8'), 
('G0021', 'H0060', '13'), 
('G0022', 'H0019', '1'), 
('G0022', 'H0010', '2'), 
('G0023', 'H0010', '1'), 
('G0025', 'H0050', '10'), 
('G0026', 'H0026', '7'), 
('G0026', 'H0060', '4'), 
('G0026', 'H0067', '1'), 
('G0027', 'H0060', '3'), 
('G0027', 'H0067', '1'), 
('G0028', 'H0026', '3'), 
('G0028', 'H0067', '4'), 
('G0028', 'H0060', '1'), 
('G0029', 'H0067', '1'), 
('G0029', 'H0026', '4'), 
('G0029', 'H0047', '4'), 
('G0030', 'H0012', '16'), 
('G0030', 'H0019', '10'), 
('G0030', 'H0051', '6'), 
('G0031', 'H0073', '1'), 
('G0031', 'H0022', '2'), 
('G0032', 'H0073', '1'), 
('G0032', 'H0002', '19'), 
('G0032', 'H0036', '12'), 
('G0032', 'H0025', '12'), 
('G0032', 'H0022', '2'), 
('G0032', 'H0006', '17'), 
('G0033', 'H0032', '4'), 
('G0033', 'H0065', '13'), 
('G0033', 'H0011', '9'), 
('G0034', 'H0032', '1'), 
('G0034', 'H0011', '6'), 
('G0034', 'H0045', '5'), 
('G0034', 'H0065', '2'), 
('G0034', 'H0048', '10'), 
('G0035', 'H0013', '4'), 
('G0035', 'H0067', '14'), 
('G0036', 'H0067', '1'), 
('G0037', 'H0013', '2'), 
('G0037', 'H0067', '1'), 
('G0038', 'H0013', '5'), 
('G0038', 'H0020', '7'), 
('G0039', 'H0035', '14'), 
('G0040', 'H0050', '12'), 
('G0040', 'H0035', '2'), 
('G0040', 'H0015', '11'), 
('G0041', 'H0026', '8'), 
('G0041', 'H0027', '6'), 
('G0042', 'H0027', '1'), 
('G0043', 'H0026', '10'), 
('G0043', 'H0027', '2'), 
('G0043', 'H0045', '8'), 
('G0044', 'H0024', '4'), 
('G0045', 'H0014', '17'), 
('G0045', 'H0042', '1'), 
('G0045', 'H0046', '12'), 
('G0045', 'H0073', '14'), 
('G0045', 'H0024', '4'), 
('G0045', 'H0012', '11'), 
('G0046', 'H0055', '14'), 
('G0046', 'H0030', '2'), 
('G0046', 'H0072', '4'), 
('G0047', 'H0072', '1'), 
('G0047', 'H0030', '2'), 
('G0047', 'H0055', '2'), 
('G0047', 'H0017', '5'), 
('G0048', 'H0030', '4'), 
('G0048', 'H0017', '7'), 
('G0048', 'H0055', '1'), 
('G0049', 'H0017', '4'), 
('G0049', 'H0055', '1'), 
('G0049', 'H0030', '1'), 
('G0049', 'H0027', '15'), 
('G0050', 'H0020', '12'), 
('G0051', 'H0034', '2'), 
('G0051', 'H0020', '4'), 
('G0051', 'H0022', '10'), 
('G0052', 'H0073', '8'), 
('G0052', 'H0063', '9'), 
('G0053', 'H0073', '8'), 
('G0053', 'H0063', '9'), 
('G0053', 'H0028', '12'); 
