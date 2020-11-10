CREATE TABLE IF NOT EXISTS "LOAIHG" (
    "MALH" VARCHAR(4) NOT NULL,
    "TENLH" TEXT NOT NULL,
    "MOTALH" TEXT,
    PRIMARY KEY("MALH")
);
INSERT INTO
    LOAIHG(MALH, TENLH, MOTALH)
VALUES
    (
        'L0001',
        'Máy ảnh - Quay phim',
        'Máy ảnh - Quay phim'
    ),
    (
        'L0002',
        'Hàng tiêu dùng - Thực phẩm',
        'Hàng tiêu dùng - Thực phẩm'
    ),
    (
        'L0003',
        'Thể thao - Dã ngoại',
        'Thể thao - Dã ngoại'
    ),
    (
        'L0004',
        'Điện thoại - Máy tính bảng',
        'Điện thoại'
    ),
    (
        'L0005',
        'Phụ kiện - Thiết bị số',
        'Phụ kiện - Thiết bị số'
    ),
    ('L0006', 'Điện gia dụng', 'Điện gia dụng'),
    (
        'L0007',
        'Nhà cửa - Đời sống',
        'Nhà cửa - Đời sống'
    ),
    (
        'L0008',
        'Thời trang - Phụ kiện',
        'Thời trang - Phụ kiện'
    ),
    (
        'L0009',
        'Xe máy - Ô tô - Xe đạp',
        'Xe máy - Ô tô - Xe đạp'
    ),
    ('L0010', 'Hàng quốc tế', 'Hàng quốc tế');
CREATE TABLE IF NOT EXISTS "HANG" (
        "MAHG" VARCHAR(4) NOT NULL,
        "TENHG" TEXT NOT NULL,
        "DONGIA" REAL NOT NULL,
        "MALH" VARCHAR(4) NOT NULL,
        PRIMARY KEY("MAHG"),
        FOREIGN KEY("MALH") REFERENCES "LOAIHG"("MALH")
    );
INSERT INTO
    HANG(MAHG, TENHG, DONGIA, MALH)
VALUES
    (
        'H0001',
        'Camera chống trộm Xiaomi Mi Home',
        '649000',
        'L0001'
    ),
    (
        'H0002',
        'Camera IP Wifi Ezviz C6N',
        '509000',
        'L0001'
    ),
    (
        'H0003',
        'Máy Ảnh Canon EOS 1500D',
        '10409000',
        'L0001'
    ),
    ('H0004', 'Camera Wifi Yoosee', '390000', 'L0001'),
    (
        'H0005',
        'Camera IP Wifi Ezviz CS-CV246',
        '459000',
        'L0001'
    ),
    (
        'H0006',
        'Hộp Film Fujifilm Mini 20 Tấm',
        '249000',
        'L0001'
    ),
    (
        'H0007',
        'Thẻ Nhớ SDXC Sandisk Extreme Pro 256GB',
        '410000',
        'L0001'
    ),
    (
        'H0008',
        'Bộ Kit Camera AHD 2.0Mp Full HD',
        '1990000',
        'L0001'
    ),
    (
        'H0009',
        'Máy Ảnh Lấy Liền Fujifilm Instax Mini 11',
        '1890000',
        'L0001'
    ),
    (
        'H0010',
        'Tay cầm chống rung cho điện thoại Gimbal Zhiyun Smooth 4',
        '1599000',
        'L0001'
    ),
    (
        'H0011',
        'Thùng Bia Tiger 24 Lon',
        '341000',
        'L0002'
    ),
    (
        'H0012',
        'Túi Nước Giặt Omo Matic',
        '151000',
        'L0002'
    ),
    (
        'H0013',
        'Thùng 48 Hộp Sữa Nestlé MILO Nước',
        '315000',
        'L0002'
    ),
    (
        'H0014',
        'Lốc 4 Hộp Sữa Dừa Hạnh Nhân Cocoxim 180ml',
        '32000',
        'L0002'
    ),
    (
        'H0015',
        'Lốc 4 Hộp Sữa Dừa Socola Cocoxim 180ml',
        '32000',
        'L0002'
    ),
    (
        'H0016',
        'Nước Xả Vải Comfort Cho Da Nhạy Cảm',
        '163000',
        'L0002'
    ),
    (
        'H0017',
        'Thùng 36 Hộp Sữa đậu nành Fami Canxi',
        '142000',
        'L0002'
    ),
    (
        'H0018',
        'Rong Nho Trường Thọ - Số 1 Amazon Hoa Kỳ - Hộp 40g',
        '69000',
        'L0002'
    ),
    (
        'H0019',
        'Nước Lau Sàn Sunlight Tinh Dầu Thiên Nhiên',
        '74000',
        'L0002'
    ),
    (
        'H0020',
        'Khô gà lá chanh thượng hạng hiệu TETE',
        '109000',
        'L0002'
    ),
    (
        'H0021',
        'Giày Thể Thao Nữ Hunter Core Festive Collection DSWH01204DOG - Golden Gleam',
        '629000',
        'L0003'
    ),
    (
        'H0022',
        'Dụng Cụ Tập Cổ Tay - Hỗ trợ cổ tay',
        '88000',
        'L0003'
    ),
    (
        'H0023',
        'Xe đạp tập thể dục Air Bike BG',
        '1559000',
        'L0003'
    ),
    (
        'H0024',
        'BG Xe đạp tập thể dục thể thao Spining Bike',
        '2299000',
        'L0003'
    ),
    (
        'H0025',
        'Giày Thể Thao Nữ Hunter Core Festive Collection DSWH01204BAC',
        '629000',
        'L0003'
    ),
    (
        'H0026',
        'Bộ ván trượt mặt nhám cao cấp',
        '438000',
        'L0003'
    ),
    (
        'H0027',
        'Dây đàn hồi tập thể hình Mini band Aolikes AL3603',
        '84900',
        'L0003'
    ),
    (
        'H0028',
        'Giày Thể Thao Nữ Hunter Core Black Line DSWH02900TRG',
        '629000',
        'L0003'
    ),
    (
        'H0029',
        'Găng tay tập GYM, đi phượt bảo vệ cổ tay và khớp ngón tay',
        '89000',
        'L0003'
    ),
    (
        'H0030',
        'Giày cầu lông Kawasaki K080',
        '589000',
        'L0003'
    ),
    (
        'H0031',
        'Điện thoại Mobell M118',
        '189000',
        'L0004'
    ),
    (
        'H0032',
        'Máy tính bảng Kindle Fire HD8 Plus 2020',
        '2749000',
        'L0004'
    ),
    (
        'H0033',
        'Điện thoại bàn không dây Panasonic KX-TGC310',
        '783000',
        'L0004'
    ),
    (
        'H0034',
        'Điện Thoại Samsung Galaxy Note 10',
        '16995000',
        'L0004'
    ),
    (
        'H0035',
        'Điện Thoại Samsung Galaxy A7',
        '6898000',
        'L0004'
    ),
    (
        'H0036',
        'Điện thoại Xiaomi Redmi Note 9',
        '3990000',
        'L0004'
    ),
    (
        'H0037',
        'Điện thoại Cố định Nippon NP-1201',
        '265000',
        'L0004'
    ),
    (
        'H0038',
        'iPad Pro 11 inch (2018) 64GB Wifi Cellular',
        '21490000',
        'L0004'
    ),
    (
        'H0039',
        'Điện Thoại Bàn Panasonic KX-TS500MX',
        '242900',
        'L0004'
    ),
    (
        'H0040',
        'Điện Thoại Vsmart Joy 2+',
        '2790000',
        'L0004'
    ),
    (
        'H0041',
        'Bảng Vẽ Điện Tử Gaomon 1060Pro',
        '619000',
        'L0005'
    ),
    (
        'H0042',
        'Loa Bluetooth Hình Thiên Nga Huawei Honor AM08',
        '179000',
        'L0005'
    ),
    (
        'H0043',
        'Tai Nghe Bluetooth 5.0 I12 TWS Cảm Ứng Nhét Tai Không Dây',
        '95000',
        'L0005'
    ),
    (
        'H0044',
        'Tai nghe Samsung Galaxy J7 Pro',
        '69000',
        'L0005'
    ),
    (
        'H0045',
        'Thảm da trải bàn làm việc 2 mặt cỡ 40 x 80 cm',
        '169000',
        'L0005'
    ),
    (
        'H0046',
        'Bộ Bàn Phím Và Chuột Không Dây Logitech MK240 2016',
        '430000',
        'L0005'
    ),
    (
        'H0047',
        'Đồng hồ thông minh ANNCOE WATCH 5',
        '650000',
        'L0005'
    ),
    (
        'H0048',
        'Bàn Phím Máy Tính Mini K1000',
        '75000',
        'L0005'
    ),
    (
        'H0049',
        'Bộ Găng Tay 4 Ngón Cảm Ứng CONVI CV04',
        '39000',
        'L0005'
    ),
    (
        'H0050',
        'Đồng Hồ Thông Minh Smartwatch Cao Cấp X6 Màn Hình Cong',
        '208000',
        'L0005'
    ),
    (
        'H0051',
        'Máy Vắt Cam Philips HR-2738',
        '419000',
        'L0006'
    ),
    (
        'H0052',
        'Quạt Sạc Comet CRF0705 (5W)',
        '203900',
        'L0006'
    ),
    (
        'H0053',
        'Đầu lọc nước tại vòi Water Purifier',
        '126000',
        'L0006'
    ),
    (
        'H0054',
        'Máy Xay Thịt 2 Lưỡi Kép Bluestone CHB-5139 (2L)',
        '589000',
        'L0006'
    ),
    (
        'H0055',
        'Bàn Ủi Khô Philips HD1172',
        '295000',
        'L0006'
    ),
    (
        'H0056',
        'Bàn Làm Việc Kệ Lửng 80CM',
        '249000',
        'L0007'
    ),
    (
        'H0057',
        'Kệ Để Bàn Chải Kem Đánh Răng OENON',
        '245000',
        'L0007'
    ),
    (
        'H0058',
        'Ổ khóa chống trộm thông minh',
        '161000',
        'L0007'
    ),
    (
        'H0059',
        'Bàn Làm Việc Có Kệ Sách Mẫu Mới',
        '274000',
        'L0007'
    ),
    (
        'H0060',
        'Bình Giữ Nhiệt Lock & Lock Two-Tone Clip Tumbler LHC4151',
        '278000',
        'L0007'
    ),
    (
        'H0061',
        'Áo Thun Nam Tay Lỡ Unisex Hạc JaPan',
        '48000',
        'L0008'
    ),
    (
        'H0062',
        'Set 10 Đôi Vớ Nữ In Hình Gấu Brown Xinh Xắn',
        '36800',
        'L0008'
    ),
    (
        'H0063',
        'Vali kéo Kamiliant ZUKU TSA',
        '799000',
        'L0008'
    ),
    (
        'H0064',
        'Ví/Bóp đăng kiểm ô tô cao cấp, sang trọng ERD21',
        '69000',
        'L0008'
    ),
    (
        'H0065',
        'Balo Unisex Thời Trang Cao Cấp Có Nhiều Ngăn Praza - BLTK182',
        '196000',
        'L0008'
    ),
    (
        'H0066',
        'Xe máy Honda Lead Cao Cấp 2019',
        '40910000',
        'L0009'
    ),
    (
        'H0067',
        'Xe Máy Honda Vision 2019 Bản Đặc Biệt',
        '32890000',
        'L0009'
    ),
    (
        'H0068',
        'Xe Máy Honda Winner X - Phiên Bản Camo - Phanh ABS',
        '43790000',
        'L0009'
    ),
    (
        'H0069',
        'Xe đạp cho bé gái Cody Baby BYN.006',
        '1400000',
        'L0009'
    ),
    (
        'H0070',
        'Mũ Bảo Hiểm 3/4 đầu SRT N168 Freesize',
        '189000',
        'L0009'
    ),
    (
        'H0071',
        'Bàn Chải Đánh Răng Điện Oral B Vitality',
        '498000',
        'L0010'
    ),
    (
        'H0072',
        'Đồng hồ thông minh XIAOMI Haylou LS02',
        '515000',
        'L0010'
    ),
    (
        'H0073',
        'Mặt nạ thạch tinh chất Moisture Q10',
        '170000',
        'L0010'
    ),
    (
        'H0074',
        'BOUYIEE Xịt Tay Khô Diêt khuẩn',
        '220000',
        'L0010'
    ),
    (
        'H0075',
        'Máy đo huyết áp kẹt ngón tay kỹ thuật số màn hình LED',
        '138000',
        'L0010'
    );
CREATE TABLE IF NOT EXISTS "KHACH" (
        "MAKH" VARCHAR(4) NOT NULL,
        "TENKH" TEXT NOT NULL,
        "DTKH" VARCHAR(10) NOT NULL,
        "DCKH" VARCHAR(255) NOT NULL,
        PRIMARY KEY("MAKH")
    );
INSERT INTO
    KHACH(MAKH, TENKH, DTKH, DCKH)
VALUES
    (
        'K0001',
        'Tiêu Lâm Đình',
        '0376492874',
        '8117, Thôn Ân, Phường Đình, Huyện Bùi, Lạng Sơn'
    ),
    (
        'K0002',
        'Giang Thư',
        '0514874514',
        '083 Phố Kiếm, Phường Khanh, Quận Triệu, Quảng Bình'
    ),
    (
        'K0003',
        'Đàm Bội Nhi',
        '0610530835',
        '8118 Phố Nguyễn, Phường Lâm Ngân Cẩn, Huyện 4, Quảng Nam'
    ),
    (
        'K0004',
        'Phạm Thi Tuyến',
        '01231911171',
        '6 Phố Lê Liên Phong, Phường Đào, Huyện Lâm, Quảng Trị'
    ),
    (
        'K0005',
        'Nông Tiên Quyên',
        '0735869779',
        '76 Phố Thạc, Phường Lạc Quảng Hoài, Huyện Trà Luật Kiên, Phú Yên'
    ),
    (
        'K0006',
        'Mâu Kim Mẫn',
        '0548628903',
        '56, Ấp Hạnh Giáp, Thôn Uyển Mẫn, Quận Chinh, Phú Yên'
    ),
    (
        'K0007',
        'Mạch Sơn Tú',
        '0930347038',
        '199 Phố Ngọc, Xã 7, Huyện Hoa, Cần Thơ'
    ),
    (
        'K0008',
        'Biện Di Nương',
        '0670515737',
        '7137, Ấp Trưng Trân, Phường 4, Quận Thanh Đoàn, Kon Tum'
    ),
    (
        'K0009',
        'Lưu Hoa',
        '0325982603',
        '96, Thôn Lân Sử, Xã Hồ Dương Sinh, Huyện Cấn Tâm Nga, Bà Rịa - Vũng Tàu'
    ),
    (
        'K0010',
        'Hồng Ý Mi',
        '0508743271',
        '2222 Phố Quách Đồng Giáp, Xã Liêm Đậu, Huyện Tú, Hồ Chí Minh'
    ),
    (
        'K0011',
        'Nguyễn Thủy',
        '0614524488',
        '592 Phố Thiên, Phường Đàm, Quận Bửu Ty Hải Phòng'
    ),
    (
        'K0012',
        'Mã Khoa Sâm',
        '03506600381',
        '841 Phố Phạm Lan Ca, Xã Thục Kim, Quận 59, Đồng Tháp'
    ),
    (
        'K0013',
        'Mâu Viên',
        '0231856055',
        '31 Phố Phương, Xã Bồ Phú Tuấn, Quận Quản, Hà Nội'
    ),
    (
        'K0014',
        'Khoa Duyên',
        '0706610777',
        '505, Ấp 70, Phường Thục, Quận Khoa, Cà Mau'
    ),
    (
        'K0015',
        'Đàm Lan Thơ',
        '0422207613',
        '3 Phố Thi, Xã Việt Điền, Huyện Thi, Đà Nẵng'
    ),
    (
        'K0016',
        'Phí Sơn Tâm',
        '0703387610',
        '1682 Phố Lan, Xã Phương Lam, Quận Quỳnh Hình, Hồ Chí Minh'
    ),
    (
        'K0017',
        'Phí Lý',
        '0125892941',
        '3588 Phố Bảo Nhi Tấn, Ấp Trang Thạch, Huyện Trang, Quảng Ngãi'
    ),
    (
        'K0018',
        'Thi Thiện An',
        '0215986874',
        '35 Phố Lạc Ngân Chinh, Ấp Nguyên Sâm, Huyện 15, Hà Tĩnh'
    ),
    (
        'K0019',
        'Mai Hà Hoa',
        '0519866409',
        '1 Phố Doãn, Ấp Bồ Khanh, Huyện Chiểu Đào, Bà Rịa - Vũng Tàu'
    ),
    (
        'K0020',
        'Cái Bữu Hỷ',
        '01681249608',
        '39 Phố Tô Khai Tâm, Phường Ca Thiều, Quận 1, Long An'
    ),
    (
        'K0021',
        'Đôn Danh Diệp',
        '03203432476',
        '98 Phố Xa Tiên Thời, Ấp Hạnh Lan, Huyện Sơn Thiện, Bắc Giang'
    ),
    (
        'K0022',
        'Ninh Cương',
        '07112549566',
        '5 Phố Kính, Phường 49, Huyện Thơ Kha, Nghệ An'
    ),
    (
        'K0023',
        'Tăng Đài Mi',
        '01234234979',
        '9 Phố Ca, Thôn Chi Anh, Quận 47, Bắc Ninh'
    ),
    (
        'K0024',
        'Giáp Quân Độ',
        '0920136964',
        '0 Phố Kim Khánh Chiến, Phường Trang, Quận Tòng Độ Ly, Hồ Chí Minh'
    ),
    (
        'K0025',
        'Mẫn Tuệ Đào',
        '0684243192',
        '02 Phố Thái, Xã Phí, Quận 61 Hồ Chí Minh'
    ),
    (
        'K0026',
        'Lại Cát',
        '0211194158',
        '5 Phố Trung, Ấp Bồ Bằng, Quận Xuân Lan, Hải Phòng'
    ),
    (
        'K0027',
        'Phí Huấn',
        '0702732677',
        '032 Phố Mạnh, Xã 46, Huyện Vỹ Diệp, Long An'
    ),
    (
        'K0028',
        'Vương Long Kiệt',
        '0976113979',
        '8347 Phố Văn Bửu Đại, Phường 24, Quận Kiên Hy, Bình Dương'
    ),
    (
        'K0029',
        'Vừ Hà',
        '0741608373',
        '124, Ấp Phong Chương, Phường Thái Duệ Tường, Huyện Điền Vi Định, Nam Định'
    ),
    (
        'K0030',
        'Đới Ca',
        '0377106271',
        '86 Phố Toại, Phường 52, Huyện Thái, Nghệ An'
    );
CREATE TABLE IF NOT EXISTS "DDH" (
        "MADDH" VARCHAR(4) NOT NULL,
        "NGAYDH" DATE NOT NULL,
        "NGAYHL" DATE NOT NULL,
        "MAKH" VARCHAR(4) NOT NULL,
        PRIMARY KEY("MADDH"),
        FOREIGN KEY("MAKH") REFERENCES "KHACH"("MAKH")
    );
INSERT INTO
    DDH(MADDH, NGAYDH, NGAYHL, MAKH)
VALUES
    ('D0001', '2018-05-08', '2018-05-12', 'K0008'),
    ('D0002', '2018-08-07', '2018-08-13', 'K0020'),
    ('D0003', '2018-12-26', '2018-12-30', 'K0020'),
    ('D0004', '2018-02-09', '2018-02-16', 'K0015'),
    ('D0005', '2018-06-03', '2018-06-08', 'K0006'),
    ('D0006', '2018-08-19', '2018-08-24', 'K0020'),
    ('D0007', '2018-11-15', '2018-11-20', 'K0029'),
    ('D0008', '2018-02-24', '2018-03-02', 'K0008'),
    ('D0009', '2018-06-07', '2018-06-10', 'K0017'),
    ('D0010', '2018-09-02', '2018-09-04', 'K0019'),
    ('D0011', '2019-12-21', '2019-12-27', 'K0005'),
    ('D0012', '2019-02-09', '2019-02-14', 'K0016'),
    ('D0013', '2019-05-12', '2019-05-14', 'K0030'),
    ('D0014', '2019-09-04', '2019-09-13', 'K0028'),
    ('D0015', '2019-11-17', '2019-11-19', 'K0011'),
    ('D0016', '2019-02-18', '2019-02-21', 'K0030'),
    ('D0017', '2019-05-16', '2019-05-18', 'K0005'),
    ('D0018', '2019-08-26', '2019-09-03', 'K0025'),
    ('D0019', '2019-12-22', '2019-12-28', 'K0027'),
    ('D0020', '2019-03-14', '2019-03-23', 'K0004'),
    ('D0021', '2020-05-01', '2020-05-05', 'K0018'),
    ('D0022', '2020-09-21', '2020-09-27', 'K0022'),
    ('D0023', '2020-11-02', '2020-11-09', 'K0024'),
    ('D0024', '2020-02-07', '2020-02-09', 'K0010'),
    ('D0025', '2020-06-01', '2020-06-08', 'K0026'),
    ('D0026', '2020-09-27', '2020-10-04', 'K0030'),
    ('D0027', '2020-11-18', '2020-11-19', 'K0017'),
    ('D0028', '2020-02-06', '2020-02-13', 'K0022'),
    ('D0029', '2020-05-15', '2020-05-23', 'K0009'),
    ('D0030', '2020-08-01', '2020-08-06', 'K0027');
CREATE TABLE "CTDDH" (
        "MADDH" VARCHAR(4) NOT NULL,
        "MAHG" VARCHAR(4) NOT NULL,
        "SLDAT" INTEGER NOT NULL DEFAULT 1,
        FOREIGN KEY("MADDH") REFERENCES "DDH"("MADDH"),
        FOREIGN KEY("MAHG") REFERENCES "HANG"("MAHG"),
        PRIMARY KEY("MADDH", "MAHG")
    );
INSERT INTO
    CTDDH(MADDH, MAHG, SLDAT)
VALUES
    ('D0001', 'H0037', 2),('D0001', 'H0071', 13),('D0001', 'H0060', 1),('D0001', 'H0050', 10),('D0002', 'H0063', 11),('D0002', 'H0030', 9),('D0002', 'H0022', 19),('D0002', 'H0043', 17),('D0003', 'H0067', 13),('D0003', 'H0062', 13),('D0003', 'H0007', 9),('D0004', 'H0008', 13),('D0004', 'H0059', 13),('D0004', 'H0013', 1),('D0004', 'H0050', 4),('D0004', 'H0037', 16),('D0004', 'H0029', 10),('D0005', 'H0074', 6),('D0005', 'H0001', 1),('D0005', 'H0062', 18),('D0006', 'H0025', 13),('D0006', 'H0018', 19),('D0006', 'H0067', 13),('D0007', 'H0074', 1),('D0007', 'H0062', 4),('D0007', 'H0013', 11),('D0008', 'H0004', 4),('D0008', 'H0023', 1),('D0008', 'H0062', 9),('D0008', 'H0073', 17),('D0008', 'H0025', 19),('D0009', 'H0069', 19),('D0009', 'H0031', 9),('D0009', 'H0038', 16),('D0009', 'H0053', 2),('D0009', 'H0028', 2),('D0009', 'H0040', 11),('D0010', 'H0063', 2),('D0010', 'H0058', 16),('D0010', 'H0071', 16),('D0010', 'H0012', 13),('D0010', 'H0040', 1),('D0010', 'H0026', 5),('D0011', 'H0070', 7),('D0011', 'H0061', 1),('D0011', 'H0024', 18),('D0012', 'H0069', 14),('D0012', 'H0067', 14),('D0012', 'H0071', 7),('D0012', 'H0073', 14),('D0012', 'H0013', 1),('D0013', 'H0031', 10),('D0013', 'H0009', 11),('D0013', 'H0028', 13),('D0013', 'H0027', 10),('D0014', 'H0072', 17),('D0014', 'H0037', 13),('D0014', 'H0070', 15),('D0014', 'H0054', 5),('D0015', 'H0002', 1),('D0015', 'H0068', 18),('D0015', 'H0035', 8),('D0015', 'H0054', 6),('D0015', 'H0071', 13),('D0015', 'H0062', 12),('D0016', 'H0056', 10),('D0016', 'H0033', 1),('D0016', 'H0072', 17),('D0016', 'H0018', 17),('D0017', 'H0041', 16),('D0017', 'H0065', 2),('D0017', 'H0029', 19),('D0018', 'H0015', 6),('D0018', 'H0067', 6),('D0018', 'H0056', 15),('D0018', 'H0046', 18),('D0018', 'H0029', 4),('D0018', 'H0027', 15),('D0019', 'H0054', 1),('D0019', 'H0056', 5),('D0019', 'H0029', 11),('D0019', 'H0024', 10),('D0020', 'H0054', 7),('D0020', 'H0060', 11),('D0020', 'H0056', 7),('D0021', 'H0019', 7),('D0021', 'H0067', 19),('D0021', 'H0011', 17),('D0022', 'H0019', 7),('D0022', 'H0031', 14),('D0022', 'H0003', 16),('D0022', 'H0041', 2),('D0022', 'H0006', 2),('D0023', 'H0004', 6),('D0023', 'H0063', 14),('D0023', 'H0040', 12),('D0023', 'H0039', 15),('D0024', 'H0029', 5),('D0024', 'H0023', 10),('D0024', 'H0070', 14),('D0024', 'H0036', 5),('D0025', 'H0039', 15),('D0025', 'H0020', 6),('D0025', 'H0008', 1),('D0025', 'H0038', 11),('D0026', 'H0024', 17),('D0026', 'H0013', 9),('D0026', 'H0002', 5),('D0026', 'H0065', 18),('D0026', 'H0066', 15),('D0027', 'H0037', 12),('D0027', 'H0026', 14),('D0027', 'H0073', 4),('D0027', 'H0062', 13),('D0027', 'H0036', 12),('D0027', 'H0030', 15),('D0028', 'H0019', 6),('D0028', 'H0038', 6),('D0028', 'H0056', 10),('D0028', 'H0069', 11),('D0028', 'H0059', 14),('D0028', 'H0021', 12),('D0029', 'H0071', 10),('D0029', 'H0070', 15),('D0029', 'H0054', 3),('D0030', 'H0009', 11),('D0030', 'H0062', 11),('D0030', 'H0054', 15);
CREATE TABLE "DOTGIAO" (
        "MADGH" VARCHAR(4) NOT NULL,
        "MADDH" VARCHAR(4) NOT NULL,
        "NGAYDGH" DATE NOT NULL,
        FOREIGN KEY("MADDH") REFERENCES "DDH"("MADDH"),
        PRIMARY KEY("MADDH", "MADGH")
    );
INSERT INTO
    DOTGIAO (MADGH, NGAYDGH, MADDH)
VALUES
    ('G0001', '2018-08-24', 'D0002'),
    ('G0002', '2018-08-23', 'D0002'),
    ('G0003', '2018-08-19', 'D0002'),
    ('G0004', '2018-09-08', 'D0006'),
    ('G0005', '2018-08-29', 'D0006'),
    ('G0006', '2018-08-24', 'D0006'),
    ('G0007', '2018-03-25', 'D0008'),
    ('G0008', '2018-03-12', 'D0008'),
    ('G0009', '2018-06-29', 'D0009'),
    ('G0010', '2018-06-10', 'D0009'),
    ('G0011', '2018-06-14', 'D0009'),
    ('G0012', '2018-06-29', 'D0009'),
    ('G0013', '2018-09-30', 'D0010'),
    ('G0014', '2018-09-11', 'D0010'),
    ('G0015', '2018-09-11', 'D0010'),
    ('G0016', '2019-11-28', 'D0015'),
    ('G0017', '2019-12-03', 'D0015'),
    ('G0018', '2019-03-04', 'D0016'),
    ('G0019', '2019-03-12', 'D0016'),
    ('G0020', '2019-03-05', 'D0016'),
    ('G0021', '2019-05-26', 'D0017'),
    ('G0022', '2019-05-26', 'D0017'),
    ('G0023', '2019-06-10', 'D0017'),
    ('G0024', '2019-04-05', 'D0020'),
    ('G0025', '2020-05-22', 'D0021'),
    ('G0026', '2020-11-29', 'D0023'),
    ('G0027', '2020-11-18', 'D0023'),
    ('G0028', '2020-11-11', 'D0023'),
    ('G0029', '2020-11-10', 'D0023'),
    ('G0030', '2020-03-01', 'D0024'),
    ('G0031', '2020-02-26', 'D0024'),
    ('G0032', '2020-06-19', 'D0025'),
    ('G0033', '2020-06-30', 'D0025'),
    ('G0034', '2020-06-16', 'D0025'),
    ('G0035', '2020-10-09', 'D0026'),
    ('G0036', '2020-12-13', 'D0027'),
    ('G0037', '2020-12-10', 'D0027'),
    ('G0038', '2020-12-08', 'D0027'),
    ('G0039', '2020-12-01', 'D0027'),
    ('G0040', '2020-02-10', 'D0028'),
    ('G0041', '2020-05-19', 'D0029');
CREATE TABLE "CTDGH" (
        "MADGH" VARCHAR(4) NOT NULL,
        "MAHG" VARCHAR(4) NOT NULL,
        "SLGH" INTEGER NOT NULL,
        FOREIGN KEY("MADGH") REFERENCES "DOTGIAO"("MADGH"),
        FOREIGN KEY("MAHG") REFERENCES "HANG"("MAHG"),
        PRIMARY KEY("MADGH", "MAHG")
    );
INSERT INTO
    CTDGH (MADGH, MAHG, SLGH)
VALUES
    ('G0001', 'H0022', '18'),
    ('G0001', 'H0030', '3'),
    ('G0001', 'H0063', '8'),
    ('G0002', 'H0030', '3'),
    ('G0002', 'H0063', '1'),
    ('G0002', 'H0022', '1'),
    ('G0003', 'H0063', '2'),
    ('G0003', 'H0030', '3'),
    ('G0003', 'H0043', '17'),
    ('G0004', 'H0018', '7'),
    ('G0004', 'H0025', '8'),
    ('G0005', 'H0018', '2'),
    ('G0005', 'H0025', '1'),
    ('G0006', 'H0025', '4'),
    ('G0006', 'H0018', '10'),
    ('G0006', 'H0067', '13'),
    ('G0007', 'H0023', '1'),
    ('G0007', 'H0062', '5'),
    ('G0007', 'H0073', '15'),
    ('G0008', 'H0004', '4'),
    ('G0008', 'H0062', '4'),
    ('G0008', 'H0073', '2'),
    ('G0008', 'H0025', '19'),
    ('G0009', 'H0038', '7'),
    ('G0010', 'H0069', '7'),
    ('G0011', 'H0028', '1'),
    ('G0011', 'H0069', '4'),
    ('G0011', 'H0053', '1'),
    ('G0011', 'H0038', '8'),
    ('G0011', 'H0031', '3'),
    ('G0012', 'H0069', '8'),
    ('G0012', 'H0031', '6'),
    ('G0012', 'H0038', '1'),
    ('G0012', 'H0053', '1'),
    ('G0012', 'H0028', '1'),
    ('G0012', 'H0040', '11'),
    ('G0013', 'H0071', '15'),
    ('G0013', 'H0012', '1'),
    ('G0013', 'H0058', '11'),
    ('G0013', 'H0063', '1'),
    ('G0013', 'H0040', '1'),
    ('G0014', 'H0058', '4'),
    ('G0014', 'H0012', '1'),
    ('G0015', 'H0063', '1'),
    ('G0015', 'H0058', '1'),
    ('G0015', 'H0071', '1'),
    ('G0015', 'H0012', '11'),
    ('G0015', 'H0026', '5'),
    ('G0016', 'H0068', '9'),
    ('G0017', 'H0002', '1'),
    ('G0017', 'H0068', '9'),
    ('G0017', 'H0035', '8'),
    ('G0017', 'H0054', '6'),
    ('G0017', 'H0071', '13'),
    ('G0017', 'H0062', '12'),
    ('G0018', 'H0056', '3'),
    ('G0018', 'H0033', '1'),
    ('G0019', 'H0072', '1'),
    ('G0020', 'H0056', '7'),
    ('G0020', 'H0072', '16'),
    ('G0020', 'H0018', '17'),
    ('G0021', 'H0065', '1'),
    ('G0022', 'H0065', '1'),
    ('G0022', 'H0041', '13'),
    ('G0023', 'H0041', '3'),
    ('G0023', 'H0029', '19'),
    ('G0024', 'H0054', '7'),
    ('G0024', 'H0060', '11'),
    ('G0024', 'H0056', '7'),
    ('G0025', 'H0019', '7'),
    ('G0025', 'H0067', '19'),
    ('G0025', 'H0011', '17'),
    ('G0026', 'H0004', '1'),
    ('G0027', 'H0040', '3'),
    ('G0027', 'H0004', '1'),
    ('G0027', 'H0063', '4'),
    ('G0028', 'H0063', '7'),
    ('G0028', 'H0040', '4'),
    ('G0028', 'H0004', '1'),
    ('G0029', 'H0004', '3'),
    ('G0029', 'H0063', '3'),
    ('G0029', 'H0040', '5'),
    ('G0029', 'H0039', '15'),
    ('G0030', 'H0029', '3'),
    ('G0030', 'H0070', '7'),
    ('G0031', 'H0029', '2'),
    ('G0031', 'H0023', '10'),
    ('G0031', 'H0070', '7'),
    ('G0031', 'H0036', '5'),
    ('G0032', 'H0039', '12'),
    ('G0033', 'H0039', '1'),
    ('G0034', 'H0039', '2'),
    ('G0034', 'H0020', '6'),
    ('G0034', 'H0008', '1'),
    ('G0034', 'H0038', '11'),
    ('G0035', 'H0024', '17'),
    ('G0035', 'H0013', '9'),
    ('G0035', 'H0002', '5'),
    ('G0035', 'H0065', '18'),
    ('G0035', 'H0066', '15'),
    ('G0036', 'H0037', '2'),
    ('G0036', 'H0036', '2'),
    ('G0036', 'H0062', '8'),
    ('G0037', 'H0073', '3'),
    ('G0037', 'H0062', '4'),
    ('G0037', 'H0036', '7'),
    ('G0038', 'H0073', '1'),
    ('G0038', 'H0026', '11'),
    ('G0038', 'H0037', '6'),
    ('G0038', 'H0036', '1'),
    ('G0038', 'H0062', '1'),
    ('G0039', 'H0037', '4'),
    ('G0039', 'H0026', '3'),
    ('G0039', 'H0036', '2'),
    ('G0039', 'H0030', '15'),
    ('G0040', 'H0019', '6'),
    ('G0040', 'H0038', '6'),
    ('G0040', 'H0056', '10'),
    ('G0040', 'H0069', '11'),
    ('G0040', 'H0059', '14'),
    ('G0040', 'H0021', '12'),
    ('G0041', 'H0071', '10'),
    ('G0041', 'H0070', '15'),
    ('G0041', 'H0054', '3');