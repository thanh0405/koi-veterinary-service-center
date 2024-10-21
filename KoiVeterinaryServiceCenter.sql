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