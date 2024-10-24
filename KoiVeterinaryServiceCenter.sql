CREATE DATABASE KoiVeterinaryServiceCenter
GO

USE KoiVeterinaryServiceCenter
GO

CREATE TABLE Customers(
    CustomerId INT PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    UserName NVARCHAR(50) NOT NULL UNIQUE,
    Phone NVARCHAR(15) NOT NULL,
    AddRess NVARCHAR(255),
    PassWord NVARCHAR(255) NOT NULL
)
GO

INSERT INTO Customers (CustomerId, Name, UserName, Phone, AddRess, PassWord)
VALUES
(1, 'Vũ Quỳnh Anh', 'quynhanh', '0982123456', 'Số 15 Đường Nguyễn Huệ, Quận 1, TP Hồ Chí Minh', '123456'),
(2, 'Lý Gia Bảo', 'giabao', '0913654321', 'Số 102 Đường Điện Biên Phủ, Quận Bình Thạnh, TP Hồ Chí Minh', '123456'),
(3, 'Phan Ngọc Diệp', 'ngocdiep', '0908789456', 'Số 75 Đường Lê Lợi, Quận 1, TP Hồ Chí Minh', '123456'),
(4, 'Lê Minh Hoàng', 'minhhoang', '0967234789', 'Số 20 Đường Nguyễn Văn Cừ, Quận 5, TP Hồ Chí Minh', '123456'),
(5, 'Nguyễn Văn Hùng', 'vanhung', '0936987654', 'Số 18 Đường Lý Thường Kiệt, Quận Tân Bình, TP Hồ Chí Minh', '123456'),
(6, 'Trần Thị Lan', 'thilan', '0888456123', 'Số 50 Đường Võ Văn Kiệt, Quận 1, TP Hồ Chí Minh', '123456'),
(7, 'Đỗ Thành Nam', 'thanhnam', '0945678910', 'Số 32 Đường Lê Duẩn, Quận 1, TP Hồ Chí Minh', '123456'),
(8, 'Phạm Hồng Nhung', 'hongnhung', '0979112334', 'Số 12 Đường Trường Chinh, Quận Tân Phú, TP Hồ Chí Minh', '123456'),
(9, 'Hoàng Thị Thu', 'thithu', '0923456789', 'Số 9 Đường Phan Xích Long, Quận Phú Nhuận, TP Hồ Chí Minh', '123456'),
(10, 'Bùi Thanh Tùng', 'thanhtung', '0899543210', 'Số 88 Đường Nguyễn Thị Minh Khai, Quận 3, TP Hồ Chí Minh', '123456');
GO

CREATE TABLE Veterinarians (
    VetId INT PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Specialization NVARCHAR(255),
    Schedule NVARCHAR(255)
)
GO

INSERT INTO Veterinarians (VetId, Name, Specialization, Schedule)
VALUES
(1, 'Nguyễn Văn A', 'Bác sĩ', 'Thứ 2 - Thứ 6, 8:00 - 17:00'),
(2, 'Trần Thị B', 'Tư vấn', 'Thứ 2 - Thứ 6, 9:00 - 16:00'),
(3, 'Lê Văn C', 'Tư vấn', 'Thứ 3 - Chủ nhật, 8:00 - 18:00'),
(4, 'Vũ Thị D', 'Chuyên gia chăm sóc cá tại nhà', 'Thứ 2 - Thứ 7, 10:00 - 17:00'),
(5, 'Nguyễn Minh E', 'Chuyên gia về đánh giá và cải thiện hồ cá Koi', 'Thứ 2 - Chủ nhật, 8:00 - 15:00'),
(6, 'Hoàng Văn F', 'Chuyên gia chăm sóc cá tại nhà', 'Thứ 4 - Chủ nhật, 9:00 - 17:00'),
(7, 'Phạm Thị G', 'Bác sĩ', 'Thứ 2 - Thứ 5, 8:00 - 17:00'),
(8, 'Trần Văn H', 'Tư vấn', 'Thứ 6 - Chủ nhật, 9:00 - 18:00'),
(9, 'Đỗ Văn I', 'Chuyên gia chăm sóc cá tại nhà', 'Thứ 2 - Thứ 7, 10:00 - 16:00'),
(10, 'Nguyễn Thị K', 'Chuyên gia về đánh giá và cải thiện hồ cá Koi', 'Thứ 3 - Chủ nhật, 8:00 - 17:00');
GO

CREATE TABLE Services (
    ServiceId INT PRIMARY KEY,
    ServiceName NVARCHAR(100) NOT NULL,
    Description TEXT,
    Price DECIMAL(18, 2) NOT NULL,
    ServiceType NVARCHAR(50) CHECK (ServiceType IN ('Tư vấn trực tuyến', 'Kiểm tra hồ cá', 'Điều trị bệnh'))
)
GO

INSERT INTO Services (ServiceId, ServiceName, Description, Price, ServiceType)
VALUES
(1, 'Tư vấn trực tuyến', 'Dịch vụ tư vấn sức khỏe thú cưng trực tuyến.', 100000, 'Tư vấn trực tuyến'),
(2, 'Kiểm tra hồ cá', 'Dịch vụ kiểm tra tình trạng hồ cá của bạn.', 350000, 'Kiểm tra hồ cá'),
(3, 'Điều trị bệnh', 'Dịch vụ điều trị bệnh cho cá.', 600000, 'Điều trị bệnh'),
(4, 'Khám sức khỏe tổng quát', 'Dịch vụ khám sức khỏe cho cá.', 400000, 'Điều trị bệnh'),
(5, 'Chăm sóc đặc biệt', 'Dịch vụ chăm sóc cá đặc biệt.', 1200000, 'Tư vấn trực tuyến'),
(6, 'Tư vấn dinh dưỡng', 'Dịch vụ tư vấn dinh dưỡng cho cá.', 150000, 'Tư vấn trực tuyến'),
(7, 'Giám sát hồ cá', 'Dịch vụ giám sát tình trạng hồ cá.', 300000, 'Kiểm tra hồ cá'),
(8, 'Đánh giá môi trường sống của cá', 'Đánh giá và cải thiện môi trường sống của cá.', 500000, 'Kiểm tra hồ cá'),
(9, 'Điều trị bệnh truyền nhiễm', 'Dịch vụ điều trị bệnh truyền nhiễm cho cá.', 700000, 'Điều trị bệnh'),
(10, 'Khám sức khỏe cá định kỳ', 'Khám định kỳ sức khỏe cho cá.', 200000, 'Tư vấn trực tuyến');
GO

CREATE TABLE Bookings (
    BookingId INT PRIMARY KEY,
    CustomerId INT NOT NULL,
    ServiceId INT NOT NULL,
    VetId INT NOT NULL,
    Sate DATETIME NOT NULL,
    Status NVARCHAR(50) CHECK (Status IN ('Đang chờ', 'Đã xác nhận', 'Đã hoàn tất')),
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId),
    FOREIGN KEY (ServiceId) REFERENCES Services(ServiceId),
    FOREIGN KEY (VetId) REFERENCES Veterinarians(VetId)
)
GO

INSERT INTO Bookings (BookingId, CustomerId, ServiceId, VetId, Sate, Status)
VALUES
(1, 1, 1, 1, '2024-10-20 10:00:00', 'Đang chờ'),
(2, 2, 2, 2, '2024-10-21 11:00:00', 'Đã xác nhận'),
(3, 3, 3, 3, '2024-10-22 12:00:00', 'Đã hoàn tất'),
(4, 4, 4, 4, '2024-10-23 13:00:00', 'Đang chờ'),
(5, 5, 5, 5, '2024-10-24 14:00:00', 'Đã xác nhận'),
(6, 6, 6, 6, '2024-10-25 15:00:00', 'Đã hoàn tất'),
(7, 7, 7, 7, '2024-10-26 16:00:00', 'Đang chờ'),
(8, 8, 8, 8, '2024-10-27 17:00:00', 'Đã xác nhận'),
(9, 9, 9, 9, '2024-10-28 18:00:00', 'Đã hoàn tất'),
(10, 10, 10, 10, '2024-10-29 19:00:00', 'Đang chờ');
GO

CREATE TABLE Feedbacks (
    FeedbackId INT PRIMARY KEY,
    CustomerId INT NOT NULL,
    ServiceId INT NOT NULL,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Status TEXT,
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId),
    FOREIGN KEY (ServiceId) REFERENCES Services(ServiceId)
)
GO

INSERT INTO Feedbacks (FeedbackId, CustomerId, ServiceId, Rating, Status)
VALUES
(1, 1, 1, 5, 'Tốt'),
(2, 2, 2, 4, 'Hài lòng'),
(3, 3, 3, 3, 'Trung bình'),
(4, 4, 4, 5, 'Tốt'),
(5, 5, 5, 4, 'Hài lòng'),
(6, 6, 6, 5, 'Tốt'),
(7, 7, 7, 2, 'Không hài lòng'),
(8, 8, 8, 3, 'Trung bình'),
(9, 9, 9, 4, 'Hài lòng'),
(10, 10, 10, 5, 'Tốt');

CREATE TABLE Price (
    PriceId INT PRIMARY KEY,
    ServiceId INT NOT NULL,
    BasePrice DECIMAL(18, 2) NOT NULL,
    TransportFee DECIMAL(18, 2),
    FOREIGN KEY (ServiceId) REFERENCES Services(ServiceId)
)
GO

INSERT INTO Price (PriceId, ServiceId, BasePrice, TransportFee)
VALUES
(1, 1, 100000, 20000),
(2, 2, 350000, 30000),
(3, 3, 600000, 50000),
(4, 4, 400000, 15000),
(5, 5, 1200000, 0),
(6, 6, 150000, 25000),
(7, 7, 300000, 10000),
(8, 8, 500000, 20000),
(9, 9, 450000, 30000),
(10, 10, 250000, 15000);

CREATE TABLE CustomerRecords (
    RecordId INT PRIMARY KEY,
    CustomerId INT NOT NULL,
    ServiceHistory TEXT,
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId)
)
GO

INSERT INTO CustomerRecords (RecordId, CustomerId, ServiceHistory)
VALUES
(1, 1, 'Tư vấn trực tuyến, Kiểm tra hồ cá'),
(2, 2, 'Điều trị bệnh'),
(3, 3, 'Khám sức khỏe tổng quát'),
(4, 4, 'Chăm sóc đặc biệt'),
(5, 5, 'Tư vấn dinh dưỡng'),
(6, 6, 'Giám sát hồ cá'),
(7, 7, 'Điều trị stress'),
(8, 8, 'Khám bệnh định kỳ'),
(9, 9, 'Dịch vụ vệ sinh hồ cá'),
(10, 10, 'Tư vấn trực tuyến, Khám bệnh định kỳ');



CREATE TABLE MedicalRecords (
    RecordId INT PRIMARY KEY,
    CustomerId INT NOT NULL,
    VetId INT NOT NULL,
    ServiceId INT NOT NULL,
    Symptoms TEXT,
    Diagnosis TEXT,
    Treatment TEXT,
    Date DATETIME NOT NULL,
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId),
    FOREIGN KEY (VetId) REFERENCES Veterinarians(VetId),
    FOREIGN KEY (ServiceId) REFERENCES Services(ServiceId)
)
GO

INSERT INTO MedicalRecords (RecordId, CustomerId, VetId, ServiceId, Symptoms, Diagnosis, Treatment, Date)
VALUES
(1, 1, 1, 3, 'Cá bơi không ổn định', 'Nhiễm trùng bơi', 'Điều trị bằng kháng sinh và cải thiện chất lượng nước', '2024-10-22 09:30:00'),
(2, 2, 2, 3, 'Cá có vết thương trên thân', 'Nhiễm khuẩn da', 'Sử dụng thuốc kháng khuẩn và tách riêng cá bệnh', '2024-10-23 14:15:00'),
(3, 3, 3, 4, 'Cá ăn ít, lờ đờ', 'Stress do môi trường', 'Điều chỉnh pH nước và bổ sung vitamin', '2024-10-24 11:00:00'),
(4, 4, 4, 3, 'Cá có đốm trắng trên thân', 'Bệnh đốm trắng', 'Điều trị bằng thuốc đặc trị và tăng cường hệ miễn dịch', '2024-10-25 10:45:00'),
(5, 5, 5, 4, 'Cá thở nhanh, nổi trên mặt nước', 'Thiếu oxy', 'Tăng cường oxy hòa tan và kiểm tra hệ thống lọc', '2024-10-26 16:30:00'),
(6, 6, 6, 3, 'Cá có vảy xù xì, không đều', 'Nhiễm ký sinh trùng', 'Sử dụng thuốc diệt ký sinh trùng và cải thiện vệ sinh hồ', '2024-10-27 13:20:00'),
(7, 7, 7, 4, 'Cá có mắt lồi', 'Bệnh mắt phồng', 'Điều trị bằng kháng sinh và điều chỉnh chế độ ăn', '2024-10-28 09:00:00'),
(8, 8, 8, 3, 'Cá có màu sắc nhợt nhạt', 'Thiếu dinh dưỡng', 'Bổ sung thức ăn giàu dinh dưỡng và vitamin', '2024-10-29 15:45:00'),
(9, 9, 9, 4, 'Cá có dấu hiệu sưng mang', 'Nhiễm trùng mang', 'Điều trị bằng thuốc kháng khuẩn và cải thiện chất lượng nước', '2024-10-30 11:30:00'),
(10, 10, 10, 3, 'Cá có vết loét trên thân', 'Bệnh loét da', 'Sử dụng thuốc đặc trị và tăng cường hệ miễn dịch', '2024-10-31 14:00:00');

CREATE TABLE Notifications (
    NotificationId INT PRIMARY KEY,
    CustomerId INT NOT NULL,
    Message TEXT,
    DateSent DATETIME NOT NULL,
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId)
)
GO

INSERT INTO Notifications (NotificationId, CustomerId, Message, DateSent)
VALUES
(1, 1, 'Xin nhắc nhở: Lịch hẹn kiểm tra sức khỏe định kỳ cho cá Koi của bạn vào ngày mai lúc 10:00.', '2024-11-01 09:00:00'),
(2, 2, 'Chúc mừng! Bạn đã nhận được voucher giảm giá 10% cho lần khám tiếp theo.', '2024-11-02 14:30:00'),
(3, 3, 'Kết quả xét nghiệm nước hồ của bạn đã có. Vui lòng đăng nhập để xem chi tiết.', '2024-11-03 11:45:00'),
(4, 4, 'Nhắc nhở: Đã đến lúc thay filter cho hệ thống lọc nước của bạn.', '2024-11-04 10:00:00'),
(5, 5, 'Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi. Hãy để lại đánh giá để chúng tôi phục vụ tốt hơn.', '2024-11-05 16:15:00'),
(6, 6, 'Thông báo: Chúng tôi sẽ tổ chức hội thảo về "Chăm sóc cá Koi mùa đông" vào tuần tới. Đăng ký ngay!', '2024-11-06 13:00:00'),
(7, 7, 'Lời nhắc: Đơn thuốc của bạn sẽ hết hạn trong 3 ngày nữa. Vui lòng liên hệ nếu cần gia hạn.', '2024-11-07 09:30:00'),
(8, 8, 'Chúc mừng sinh nhật! Nhân dịp này, bạn được tặng một lần tư vấn miễn phí.', '2024-11-08 08:00:00'),
(9, 9, 'Cảnh báo: Nhiệt độ nước hồ của bạn đang cao hơn bình thường. Kiểm tra ngay để đảm bảo an toàn cho cá.', '2024-11-09 15:30:00'),
(10, 10, 'Thông báo bảo trì: Hệ thống sẽ tạm ngưng hoạt động để nâng cấp vào ngày 15/11 từ 22:00 đến 24:00.', '2024-11-10 12:00:00');

CREATE TABLE Promotions (
    PromotionId INT PRIMARY KEY,
    ServiceId INT NOT NULL,
    DiscountPercentage DECIMAL(5, 2),
    StartDate DATETIME NOT NULL,
    EndDate DATETIME NOT NULL,
    FOREIGN KEY (ServiceId) REFERENCES Services(ServiceId)
)
GO

INSERT INTO Promotions (PromotionId, ServiceId, DiscountPercentage, StartDate, EndDate)
VALUES
(1, 1, 15.00, '2024-12-01 00:00:00', '2024-12-31 23:59:59'),
(2, 2, 10.00, '2024-11-15 00:00:00', '2024-11-30 23:59:59'),
(3, 3, 20.00, '2025-01-01 00:00:00', '2025-01-15 23:59:59'),
(4, 4, 5.00, '2024-12-15 00:00:00', '2025-01-15 23:59:59'),
(5, 5, 25.00, '2024-11-11 00:00:00', '2024-11-11 23:59:59'),
(6, 6, 30.00, '2025-02-14 00:00:00', '2025-02-14 23:59:59'),
(7, 7, 12.50, '2024-12-24 00:00:00', '2024-12-26 23:59:59'),
(8, 8, 18.00, '2025-03-01 00:00:00', '2025-03-31 23:59:59'),
(9, 9, 8.00, '2025-04-01 00:00:00', '2025-04-30 23:59:59'),
(10, 10, 22.00, '2025-05-01 00:00:00', '2025-05-07 23:59:59');

CREATE TABLE Users (
    UserId INT PRIMARY KEY,
    UserName NVARCHAR(50) NOT NULL UNIQUE,
    Password NVARCHAR(255) NOT NULL,
    Role NVARCHAR(50) CHECK (Role IN ('Admin', 'Vet'))
)
GO

INSERT INTO Users (UserId, UserName, Password, Role)
VALUES
(1, 'admin_nguyen', 'hashed_password_1', 'Admin'),
(2, 'vet_A', 'hashed_password_2', 'Vet'),
(3, 'vet_B', 'hashed_password_3', 'Vet'),
(4, 'vet_C', 'hashed_password_4', 'Vet'),
(5, 'vet_D', 'hashed_password_5', 'Vet'),
(6, 'vet_E', 'hashed_password_6', 'Vet'),
(7, 'vet_F', 'hashed_password_7', 'Vet'),
(8, 'vet_G', 'hashed_password_8', 'Vet'),
(9, 'vet_H', 'hashed_password_9', 'Vet'),
(10, 'vet_I', 'hashed_password_10', 'Vet');
(11, 'vet_K', 'hashed_password_11', 'Vet');
