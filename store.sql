CREATE DATABASE store;
USE store;

-- #####################SETUP#######################

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- #####################Entity#######################

CREATE TABLE Customer (
    Customer_ID varchar(256) NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Sex ENUM('M', 'F', 'O') NOT NULL, -- Assuming 'M' for male, 'F' for female, 'O' for other
    UserName VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Phone VARCHAR(20) NULL,
    Province VARCHAR(255) NULL,
    District VARCHAR(255) NULL,
    Ward VARCHAR(255) NULL,
    Street VARCHAR(255) NULL
    -- Include additional attributes and constraints as necessary.
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO Customer (Customer_ID, Name, Email, Sex, UserName, Password, Phone, Province, District, Ward, Street)
VALUES
('KH01','Nguyen Van A', 'nguyenvana@example.com', 'M', 'nguyenvan_a', 'password123', '0123456789', 'Ho Chi Minh', 'District 1', 'Ward 1', 'Street 1'),
('KH02','Tran Thi B', 'tranthib@example.com', 'F', 'tranthi_b', 'password123', '0234567891', 'Ho Chi Minh', 'District 2', 'Ward 2', 'Street 2'),
('KH03','Le Van C', 'levanc@example.com', 'M', 'levan_c', 'password123', '0345678912', 'Ho Chi Minh', 'District 3', 'Ward 3', 'Street 3'),
('KH04','Pham Thi D', 'phamthid@example.com', 'F', 'phamthi_d', 'password123', '0456789123', 'Ho Chi Minh', 'District 4', 'Ward 4', 'Street 4'),
('KH05','Hoang Van E', 'hoangvane@example.com', 'M', 'hoangvan_e', 'password123', '0567891234', 'Ho Chi Minh', 'District 5', 'Ward 5', 'Street 5'),
('KH06','Nguyen Thi F', 'nguyenthif@example.com', 'F', 'nguyenthi_f', 'password123', '0678912345', 'Ho Chi Minh', 'District 6', 'Ward 6', 'Street 6'),
('KH07','Tran Van G', 'tranvang@example.com', 'M', 'tranvan_g', 'password123', '0789123456', 'Ho Chi Minh', 'District 7', 'Ward 7', 'Street 7'),
('KH08','Le Thi H', 'lethih@example.com', 'F', 'lethi_h', 'password123', '0891234567', 'Ho Chi Minh', 'District 8', 'Ward 8', 'Street 8'),
('KH09','Pham Van I', 'phamvani@example.com', 'M', 'phamvan_i', 'password123', '0912345678', 'Ho Chi Minh', 'District 9', 'Ward 9', 'Street 9'),
('KH10','Hoang Thi J', 'hoangthij@example.com', 'F', 'hoangthi_j', 'password123', '0123456780', 'Ho Chi Minh', 'District 10', 'Ward 10', 'Street 10'),
('KH11','Nguyen Van K', 'nguyenvank@example.com', 'M', 'nguyenvan_k', 'password123', '0213456789', 'Ho Chi Minh', 'District 11', 'Ward 11', 'Street 11'),
('KH12','Tran Thi L', 'tranthil@example.com', 'F', 'tranthi_l', 'password123', '0324567891', 'Ho Chi Minh', 'District 12', 'Ward 12', 'Street 12'),
('KH13','Le Van M', 'levanm@example.com', 'M', 'levan_m', 'password123', '0435678912', 'Ho Chi Minh', 'Go Vap', 'Ward 13', 'Street 13'),
('KH14','Pham Thi N', 'phamthin@example.com', 'F', 'phamthi_n', 'password123', '0546789123', 'Ho Chi Minh', 'Tan Binh', 'Ward 14', 'Street 14'),
('KH15','Hoang Van O', 'hoangvano@example.com', 'M', 'hoangvan_o', 'password123', '0657891234', 'Ho Chi Minh', 'Tan Phu', 'Ward 15', 'Street 15'),
('KH16','Nguyen Thi P', 'nguyenthip@example.com', 'F', 'nguyenthi_p', 'password123', '0768912345', 'Ho Chi Minh', 'Binh Thanh', 'Ward 16', 'Street 16'),
('KH17','Tran Van Q', 'tranvanq@example.com', 'M', 'tranvan_q', 'password123', '0879123456', 'Ho Chi Minh', 'Phu Nhuan', 'Ward 17', 'Street 17'),
('KH18','Le Thi R', 'lethir@example.com', 'F', 'lethi_r', 'password123', '0981234567', 'Ho Chi Minh', 'District 3', 'Ward 18', 'Street 18'),
('KH19','Pham Van S', 'phamvans@example.com', 'M', 'phamvan_s', 'password123', '0923456789', 'Ho Chi Minh', 'District 1', 'Ward 19', 'Street 19'),
('KH20','Hoang Thi T', 'hoangthit@example.com', 'F', 'hoangthi_t', 'password123', '0123456790', 'Ho Chi Minh', 'District 2', 'Ward 20', 'Street 20'),
('KH21','Nguyen Van U', 'nguyenvanu@example.com', 'M', 'nguyenvan_u', 'password123', '0213456798', 'Ho Chi Minh', 'District 4', 'Ward 21', 'Street 21'),
('KH22','Tran Thi V', 'tranthiv@example.com', 'F', 'tranthi_v', 'password123', '0324567892', 'Ho Chi Minh', 'District 5', 'Ward 22', 'Street 22'),
('KH23','Le Van W', 'levanw@example.com', 'M', 'levan_w', 'password123', '0435678913', 'Ho Chi Minh', 'District 7', 'Ward 23', 'Street 23'),
('KH24','Pham Thi X', 'phamthix@example.com', 'F', 'phamthi_x', 'password123', '0546789124', 'Ho Chi Minh', 'District 8', 'Ward 24', 'Street 24'),
('KH25','Hoang Van Y', 'hoangvany@example.com', 'M', 'hoangvan_y', 'password123', '0657891235', 'Ho Chi Minh', 'District 9', 'Ward 25', 'Street 25'),
('KH26','Nguyen Thi Z', 'nguyenthiz@example.com', 'F', 'nguyenthi_z', 'password123', '0768912346', 'Ho Chi Minh', 'District 10', 'Ward 26', 'Street 26'),
('KH27','Tran Van AA', 'tranvanaa@example.com', 'M', 'tranvan_aa', 'password123', '0879123457', 'Ho Chi Minh', 'District 11', 'Ward 27', 'Street 27'),
('KH28','Le Thi BB', 'lethibb@example.com', 'F', 'lethi_bb', 'password123', '0981234568', 'Ho Chi Minh', 'District 12', 'Ward 28', 'Street 28'),
('KH29','Pham Van CC', 'phamvancc@example.com', 'M', 'phamvan_cc', 'password123', '0923456780', 'Ho Chi Minh', 'Go Vap', 'Ward 29', 'Street 29'),
('KH30','Hoang Thi DD', 'hoangthidd@example.com', 'F', 'hoangthi_dd', 'password123', '0123456709', 'Ho Chi Minh', 'Tan Binh', 'Ward 30', 'Street 30');

CREATE TABLE Branch (
    Branch_ID varchar(256) NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Province VARCHAR(255) NOT NULL,
    District VARCHAR(255) NOT NULL,
    Ward VARCHAR(255) NOT NULL,
    Street VARCHAR(255) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO Branch (Branch_ID,Name, Province, District, Ward, Street)
VALUES
('CH01','Chi Nhánh 1', 'Ho Chi Minh', 'District 1', 'Ward 1', 'Street 1'),
('CH02','Chi Nhánh 2', 'Ho Chi Minh', 'District 2', 'Ward 2', 'Street 2'),
('CH03','Chi Nhánh 3', 'Ho Chi Minh', 'District 3', 'Ward 3', 'Street 3'),
('CH04','Chi Nhánh 4', 'Ho Chi Minh', 'District 4', 'Ward 4', 'Street 4'),
('CH05','Chi Nhánh 5', 'Ho Chi Minh', 'District 5', 'Ward 5', 'Street 5');

CREATE TABLE Employee (
    Employee_ID varchar(256) NOT NULL,
    UserName VARCHAR(255) UNIQUE NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Phone_Number VARCHAR(20) NULL,
    DoB DATE NULL,
    Sex ENUM('M', 'F', 'O') NOT NULL, -- Assuming 'M' for male, 'F' for female, 'O' for other
    Email VARCHAR(255) NOT NULL,
    Date_of_Lease DATE NULL,
    Salary DECIMAL(10, 2) NULL, -- Assuming salary will have two decimal places.
    Job_Type VARCHAR(255) NULL,
    Branch_ID varchar(256),
    Manager_ID varchar(256)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO Employee (Employee_ID,UserName, Password, Name, Phone_Number, DoB, Sex, Email, Date_of_Lease, Salary, Job_Type, Branch_ID, Manager_ID)
VALUES
('NV00','user_0', 'pass123', 'Tran Ngoc Bao Duy', '0933456789', '1996-03-29', 'M', 'duy.tranngocbao@gmail.com', '2023-09-02', 30000000, 'Manager', NULL, NULL),
('NV01','user_1', 'pass123', 'Nguyen Van A', '0123456789', '1981-06-15', 'M', 'nguyenvana@example.com', '2023-09-03', 12000000, 'Cashier', 'CH01', 'NV00'),
('NV02','user_2', 'pass123', 'Tran Thi B', '0123456788', '1982-07-20', 'F', 'tranthib@example.com', '2023-09-04', 15000000, 'Cashier', 'CH02', 'NV00'),
('NV03','user_3', 'pass123', 'Le Van C', '0123456787', '1983-08-25', 'M', 'levanc@example.com', '2023-09-05', 14000000, 'Cashier', 'CH03', 'NV00'),
('NV04','user_4', 'pass123', 'Pham Thi D', '0123456786', '1984-09-30', 'F', 'phamthid@example.com', '2023-09-06', 18000000, 'Cashier', 'CH04', 'NV00'),
('NV05','user_5', 'pass123', 'Hoang Van E', '0123456785', '1985-11-05', 'M', 'hoangvane@example.com', '2023-09-07', 12000000, 'Cashier', 'CH05', 'NV00'),
('NV06','user_6', 'pass123', 'Nguyen Thi F', '0123456784', '1980-12-10', 'F', 'nguyenthif@example.com', '2023-09-08', 7000000, 'Chef', 'CH01', 'NV01'),
('NV07','user_7', 'pass123', 'Tran Van G', '0123456783', '1981-01-15', 'M', 'tranvang@example.com', '2023-09-09', 8000000, 'Chef', 'CH02', 'NV02'),
('NV08','user_8', 'pass123', 'Le Thi H', '0123456782', '1982-02-20', 'F', 'lethih@example.com', '2023-09-10', 6000000, 'Chef', 'CH03', 'NV03'),
('NV09','user_9', 'pass123', 'Pham Van I', '0123456781', '1983-03-27', 'M', 'phamvani@example.com', '2023-09-11', 7000000, 'Chef', 'CH04', 'NV04'),
('NV10','user_10', 'pass123', 'Hoang Thi J', '0123456780', '1984-05-02', 'F', 'hoangthij@example.com', '2023-09-12', 9000000, 'Chef', 'CH05', 'NV05'),
('NV11','user_11', 'pass123', 'Nguyen Thi K', '0123456434', '1981-12-10', 'F', 'nguyenthik@example.com', '2023-09-12', 4000000, 'Chef', 'CH01', 'NV01'),
('NV12','user_12', 'pass123', 'Tran Van L', '0123456543', '1985-04-25', 'M', 'tranvanl@example.com', '2023-09-13', 3000000, 'Chef', 'CH02', 'NV02'),
('NV13','user_13', 'pass123', 'Le Thi M', '0123456765', '1989-02-20', 'F', 'lethim@example.com', '2023-09-12', 5000000, 'Chef', 'CH03', 'NV03'),
('NV14','user_14', 'pass123', 'Pham Van N', '0123456724', '1985-03-27', 'M', 'phamvann@example.com', '2023-09-19', 4000000, 'Chef', 'CH04', 'NV04'),
('NV15','user_15', 'pass123', 'Hoang Thi O', '0123456765', '1989-04-02', 'F', 'hoangthio@example.com', '2023-09-17', 3000000, 'Chef', 'CH05', 'NV05');

CREATE TABLE Promotion (
    Promotion_ID varchar(256) NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Application_Date DATE NOT NULL,
    Expiration_Date DATE NOT NULL,
    Application_Terms TEXT NOT NULL,
    Maximum_Amount DECIMAL(10, 2),
    Minimum_Order DECIMAL(10, 2),
    Discount_Value DECIMAL(10, 2) NOT NULL,
    Discount_Method ENUM('PERCENTAGE', 'AMOUNT') NOT NULL
);

INSERT INTO Promotion (Promotion_ID,Name, Application_Date, Expiration_Date, Application_Terms, Discount_Value, Discount_Method, Maximum_Amount,Minimum_Order)
VALUES
('KM01','Khuyến mãi', '2023-06-01', '2023-12-31', 'Áp dụng cho tất cả đơn hàng', 10.00, 'PERCENTAGE',30000.00,0),
('KM02','Giảm giá', '2023-09-01', '2023-12-30', 'Áp dụng cho đơn hàng trên 300,000 VND', 50000.00, 'AMOUNT',50000.00,300000.00);

CREATE TABLE Delivery (
    Delivery_ID varchar(256) NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Freight DECIMAL(10, 2) NOT NULL,
    Location VARCHAR(255) NOT NULL
);

INSERT INTO Delivery (Delivery_ID,Name, Location, Freight)
VALUES
('GH01','Giao hàng Nhanh', 'Ho Chi Minh - District 1',20000),
('GH02','Chuyển phát Siêu Tốc', 'Ho Chi Minh - District 3',25000),
('GH03','Dịch vụ Giao hàng Tiết kiệm', 'Ho Chi Minh - District 5',30000);

CREATE TABLE Product (
    Product_ID varchar(256) NOT NULL,
    Name VARCHAR(256) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Description TEXT,
    Photo VARCHAR(256),
    Item_ID VARCHAR(10),
    Size VARCHAR(5),
    Category VARCHAR(256)
);

INSERT INTO Product (Product_ID,Name, Price, Description, Photo, Size, Category)
VALUES
('P01', 'Bánh Mì Heo Quay', 30000.00, 'Bánh mì thơm ngon kết hợp với lớp thịt heo quay giòn tan, tạo nên một trải nghiệm ẩm thực độc đáo và ngon miệng cho bữa sáng đầy năng lượng.', 'https://bit.ly/p01banhmi', NULL, 'Đồ ăn'),
('P02', 'Mì Spaghetti Sốt Bò Bằm', 35000.00, 'Spaghetti mềm dai kèm theo sốt bò bằm thơm ngon, tạo nên một bữa ăn Ý truyền thống, hấp dẫn vị giác.', 'https://bit.ly/P02mispaghetti', NULL, 'Đồ ăn'),
('P03', 'Hamburger Gà Giòn', 30000.00, 'Hamburger tuyệt vời với lớp gà giòn giòn, thêm cùng các gia vị tinh tế, đảm bảo là một trải nghiệm ăn uống hết sức ngon miệng.', 'https://bit.ly/P03hamburger', NULL, 'Đồ ăn'),
('P04', 'Khoay Tây Chiên', 25000.00, 'Khoai tây vàng giòn, chiên tới khi hấp dẫn và thơm ngon, là món ăn nhẹ hoàn hảo hoặc là món kèm tuyệt vời.', 'https://bit.ly/P04khoaitaychien', NULL, 'Đồ ăn'),
('P05', 'Salad Sốt Mè', 20000.00, 'Salad tươi mát với rau sống và sốt mè béo ngậy, mang lại sự tinh tế và dinh dưỡng cho bữa ăn lành mạnh.', '', NULL, 'Đồ ăn'),
('P06', 'Yogurt Dâu Tây', 25000.00, 'Yogurt mềm mịn kết hợp với hương vị ngọt ngào của dâu tây, là món tráng miệng hoàn hảo và lành mạnh.', 'https://bit.ly/P06dautay', NULL, 'Đồ ăn'),
('P07', 'Bánh Tiramisu', 25000.00, 'Bánh Tiramisu đậm đà với lớp kem phô mai và cacao, mang lại hương vị hấp dẫn và khó cưỡng.', 'https://bit.ly/P07tiramisu', NULL, 'Đồ ăn'),
('P08', 'Cà Phê Đen', 20000.00, 'Cà phê đen đậm đà, hương thơm mạnh mẽ, là sự lựa chọn lý tưởng cho những người yêu thích cảm giác tỉnh táo.', 'https://bit.ly/P13cfden', 'M', 'Thức uống'),
('P09', 'Cà Phê Sữa', 22000.00, 'Cà phê sữa ngọt ngào, cân bằng hài hòa giữa đắng và ngọt, đem đến một trải nghiệm cà phê tuyệt vời.', 'https://bit.ly/P14cfsua', 'M', 'Thức uống'),
('P10', 'Trà Ô Long Nhài Sữa', 30000.00, 'Trà ô long thơm lừng pha cùng hương nhài mềm mại, kết hợp với sữa tươi, tạo nên đồ uống thư giãn và thơm ngon.', 'https://bit.ly/P15olong', 'M', 'Thức uống'),
('P11', 'Trà Lài Đác Thơm', 30000.00, 'Trà lài đi cùng là hạt đác, thơm tươi đem đến sự kết hợp tuyệt vời để làm dịu dàng vị giác, giải nhiệt trong ngày nắng nóng.', 'https://bit.ly/P16tralai', 'M', 'Thức uống'),
('P12', 'Trà Đào Cam Sả', 30000.00, 'Hòa quyện giữa hương đào ngọt ngào, cam chua ngọt và mùi sả tinh tế, trà này đem đến cảm giác tươi mới và phấn khích.', 'https://bit.ly/P17tradao', 'M', 'Thức uống'),
('P13', 'Cà Phê Đen', 25000.00, 'Cà phê đen đậm đà, hương thơm mạnh mẽ, là sự lựa chọn lý tưởng cho những người yêu thích cảm giác tỉnh táo.', 'https://bit.ly/P13cfden', 'L', 'Thức uống'),
('P14', 'Cà Phê Sữa', 27000.00, 'Cà phê sữa ngọt ngào, cân bằng hài hòa giữa đắng và ngọt, đem đến một trải nghiệm cà phê tuyệt vời.', 'https://bit.ly/P14cfsua', 'L', 'Thức uống'),
('P15', 'Trà Ô Long Nhài Sữa', 35000.00, 'Trà ô long thơm lừng pha cùng hương nhài mềm mại, kết hợp với sữa tươi, tạo nên đồ uống thư giãn và thơm ngon.', 'https://bit.ly/P15olong', 'L', 'Thức uống'),
('P16', 'Trà Lài Đác Thơm', 35000.00, 'Trà lài đi cùng là hạt đác, thơm tươi đem đến sự kết hợp tuyệt vời để làm dịu dàng vị giác, giải nhiệt trong ngày nắng nóng.', 'https://bit.ly/P16tralai', 'L', 'Thức uống'),
('P17', 'Trà Đào Cam Sả', 35000.00, 'Hòa quyện giữa hương đào ngọt ngào, cam chua ngọt và mùi sả tinh tế, trà này đem đến cảm giác tươi mới và phấn khích.', 'https://bit.ly/P17tradao', 'L', 'Thức uống'),
('P18', 'CocaCola', 10000.00, 'Một chai CocaCola mát lạnh, một tinh thần sảng khoái.', 'https://bit.ly/P18cocacola', NULL, 'Thức uống');

DELIMITER $$
CREATE TRIGGER `calculate_order_total_on_product_price_update` AFTER UPDATE ON `product` FOR EACH ROW BEGIN
    DECLARE order_total DECIMAL(10, 2);

    -- Calculate the total price for the order
    SELECT SUM(Product.Price) INTO order_total
    FROM `Order`
    JOIN Order_Line ON `Order`.Order_ID = Order_Line.Order_ID
    WHERE Order_Line.Product_ID = OLD.Product_ID;

    -- Update the total price in the Order table
    UPDATE `Order`
    SET Total_Price = order_total
    WHERE Order_ID IN (SELECT Order_ID FROM Order_Line WHERE Product_ID = OLD.Product_ID);
END
$$
DELIMITER ;

CREATE TABLE Combo (
    Combo_ID varchar(256) NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Description TEXT,
    Price DECIMAL(10, 2) NOT NULL,
    Photo VARCHAR(255)
);

INSERT INTO Combo (Combo_ID,Name, Description, Price, Photo)
VALUES
('C01', 'Khởi Đầu Vui Vẻ', 'Hãy bắt đầu ngày mới của bạn với sự kết hợp hoàn hảo giữa một ly cà phê sữa đậm đà và một chiếc bánh mì heo quay giòn tan, thơm lừng sẽ đưa bạn đến một trải nghiệm ẩm thực độc đáo.', 49000.00, 'https://bit.ly/C01khoidauvuive'),
('C02', 'Bộ Ba Ăn Ý', 'Sự kết hợp vô cùng quen thuộc, một bữa trưa ngon miệng và đầy đủ năng lượng cùng với hamburger, khoai tây chiên giòn và một cốc Cocacola bùng nổ vị giác.', 59000.00, 'https://bit.ly/C02bobaany');

DELIMITER $$
CREATE TRIGGER `calculate_order_total_on_combo_price_update` AFTER UPDATE ON `combo` FOR EACH ROW BEGIN
    DECLARE order_total DECIMAL(10, 2);

    -- Calculate the total price for the order
    SELECT SUM(Combo.Price) INTO order_total
    FROM `Order`
    JOIN Order_Line ON `Order`.Order_ID = Order_Line.Order_ID
    JOIN Item ON Order_Line.Item_ID = Item.Item_ID
    JOIN Combo ON Item.Combo_ID = Combo.Combo_ID
    WHERE Item.Combo_ID = OLD.Combo_ID;

    -- Update the total price in the Order table
    UPDATE `Order`
    SET Total_Price = order_total
    WHERE Order_ID IN (SELECT Order_ID FROM Order_Line WHERE Item_ID IN (SELECT Item_ID FROM Item WHERE Combo_ID = OLD.Combo_ID));
END
$$
DELIMITER ;

CREATE TABLE Item (
    Item_ID varchar(256) NOT NULL,
    Product_ID varchar(256),
    Combo_ID varchar(256)
);

INSERT INTO Item (Item_ID, Product_ID, Combo_ID)
VALUES
('MH01', 'P01', NULL),
('MH02', 'P02', NULL),
('MH03', 'P03', NULL),
('MH04', 'P04', NULL),
('MH05', 'P05', NULL),
('MH06', 'P06', NULL),
('MH07', 'P07', NULL),
('MH08', 'P08', NULL),
('MH09', 'P09', NULL),
('MH10', 'P10', NULL),
('MH11', 'P11', NULL),
('MH12', 'P12', NULL),
('MH13', 'P13', NULL),
('MH14', 'P14', NULL),
('MH15', 'P15', NULL),
('MH16', 'P16', NULL),
('MH17', 'P17', NULL),
('MH18', 'P18', NULL),
('MH19', NULL, 'C01'),
('MH20', NULL, 'C02');

CREATE TABLE Combo_List (
    Combo_ID varchar(256) NOT NULL,
    Product_ID varchar(256) NOT NULL,
    Quantity INT NOT NULL
);

INSERT INTO Combo_List (Combo_ID, Product_ID, Quantity)
VALUES
('C01', 'P01', 1),
('C01', 'P09', 1),
('C02', 'P03', 1),
('C02', 'P04', 1),
('C02', 'P18', 1);

CREATE TABLE `Order` (
    Order_ID varchar(256) NOT NULL,
    Order_Date DATETIME NOT NULL,
    Note TEXT,
    Status ENUM('PROCESSING', 'CONFIRMED', 'COMPLETED', 'CANCELLED') NOT NULL,
    Total_Price DECIMAL(10, 2) NOT NULL,
    Customer_ID varchar(256) NOT NULL,
    Cashier_ID varchar(256) NOT NULL,
    Branch_ID varchar(256) NOT NULL
);

INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH001', '2023-09-02', 'Ghi chú cho đơn hàng 1', 340000.0, 'COMPLETED', 'KH04', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH002', '2023-09-03', 'Ghi chú cho đơn hàng 2', 220000.0, 'COMPLETED', 'KH04', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH003', '2023-09-04', 'Ghi chú cho đơn hàng 3', 40000.0, 'COMPLETED', 'KH19', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH004', '2023-09-05', 'Ghi chú cho đơn hàng 4', 170000.0, 'COMPLETED', 'KH04', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH005', '2023-09-06', 'Ghi chú cho đơn hàng 5', 309000.0, 'COMPLETED', 'KH19', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH006', '2023-09-07', 'Ghi chú cho đơn hàng 6', 421000.0, 'COMPLETED', 'KH05', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH007', '2023-09-08', 'Ghi chú cho đơn hàng 7', 84000.0, 'COMPLETED', 'KH28', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH008', '2023-09-09', 'Ghi chú cho đơn hàng 8', 276000.0, 'COMPLETED', 'KH15', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH009', '2023-09-10', 'Ghi chú cho đơn hàng 9', 478000.0, 'COMPLETED', 'KH14', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH010', '2023-09-11', 'Ghi chú cho đơn hàng 10', 292000.0, 'COMPLETED', 'KH03', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH011', '2023-09-12', 'Ghi chú cho đơn hàng 11', 171000.0, 'COMPLETED', 'KH20', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH012', '2023-09-13', 'Ghi chú cho đơn hàng 12', 282000.0, 'COMPLETED', 'KH01', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH013', '2023-09-14', 'Ghi chú cho đơn hàng 13', 471000.0, 'COMPLETED', 'KH26', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH014', '2023-09-15', 'Ghi chú cho đơn hàng 14', 194000.0, 'COMPLETED', 'KH25', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH015', '2023-09-16', 'Ghi chú cho đơn hàng 15', 40000.0, 'COMPLETED', 'KH22', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH016', '2023-09-17', 'Ghi chú cho đơn hàng 16', 120000.0, 'COMPLETED', 'KH17', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH017', '2023-09-18', 'Ghi chú cho đơn hàng 17', 30000.0, 'COMPLETED', 'KH19', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH018', '2023-09-19', 'Ghi chú cho đơn hàng 18', 50000.0, 'COMPLETED', 'KH19', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH019', '2023-09-20', 'Ghi chú cho đơn hàng 19', 372000.0, 'COMPLETED', 'KH09', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH020', '2023-09-21', 'Ghi chú cho đơn hàng 20', 250000.0, 'COMPLETED', 'KH24', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH021', '2023-09-22', 'Ghi chú cho đơn hàng 21', 145000.0, 'COMPLETED', 'KH15', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH022', '2023-09-23', 'Ghi chú cho đơn hàng 22', 295000.0, 'COMPLETED', 'KH19', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH023', '2023-09-24', 'Ghi chú cho đơn hàng 23', 327000.0, 'COMPLETED', 'KH03', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH024', '2023-09-25', 'Ghi chú cho đơn hàng 24', 355000.0, 'COMPLETED', 'KH09', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH025', '2023-09-26', 'Ghi chú cho đơn hàng 25', 197000.0, 'COMPLETED', 'KH21', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH026', '2023-09-27', 'Ghi chú cho đơn hàng 26', 461000.0, 'COMPLETED', 'KH27', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH027', '2023-09-28', 'Ghi chú cho đơn hàng 27', 180000.0, 'COMPLETED', 'KH19', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH028', '2023-09-29', 'Ghi chú cho đơn hàng 28', 405000.0, 'COMPLETED', 'KH16', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH029', '2023-09-30', 'Ghi chú cho đơn hàng 29', 515000.0, 'COMPLETED', 'KH08', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH030', '2023-10-01', 'Ghi chú cho đơn hàng 30', 135000.0, 'COMPLETED', 'KH05', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH031', '2023-10-02', 'Ghi chú cho đơn hàng 31', 240000.0, 'COMPLETED', 'KH17', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH032', '2023-10-03', 'Ghi chú cho đơn hàng 32', 290000.0, 'COMPLETED', 'KH07', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH033', '2023-10-04', 'Ghi chú cho đơn hàng 33', 210000.0, 'COMPLETED', 'KH12', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH034', '2023-10-05', 'Ghi chú cho đơn hàng 34', 494000.0, 'COMPLETED', 'KH30', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH035', '2023-10-06', 'Ghi chú cho đơn hàng 35', 226000.0, 'COMPLETED', 'KH21', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH036', '2023-10-07', 'Ghi chú cho đơn hàng 36', 245000.0, 'COMPLETED', 'KH06', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH037', '2023-10-08', 'Ghi chú cho đơn hàng 37', 170000.0, 'COMPLETED', 'KH22', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH038', '2023-10-09', 'Ghi chú cho đơn hàng 38', 425000.0, 'COMPLETED', 'KH14', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH039', '2023-10-10', 'Ghi chú cho đơn hàng 39', 350000.0, 'COMPLETED', 'KH22', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH040', '2023-10-11', 'Ghi chú cho đơn hàng 40', 220000.0, 'COMPLETED', 'KH21', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH041', '2023-10-12', 'Ghi chú cho đơn hàng 41', 79000.0, 'COMPLETED', 'KH07', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH042', '2023-10-13', 'Ghi chú cho đơn hàng 42', 40000.0, 'COMPLETED', 'KH29', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH043', '2023-10-14', 'Ghi chú cho đơn hàng 43', 408000.0, 'COMPLETED', 'KH25', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH044', '2023-10-15', 'Ghi chú cho đơn hàng 44', 566000.0, 'COMPLETED', 'KH17', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH045', '2023-10-16', 'Ghi chú cho đơn hàng 45', 313000.0, 'COMPLETED', 'KH02', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH046', '2023-10-17', 'Ghi chú cho đơn hàng 46', 183000.0, 'COMPLETED', 'KH11', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH047', '2023-10-18', 'Ghi chú cho đơn hàng 47', 197000.0, 'COMPLETED', 'KH30', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH048', '2023-10-19', 'Ghi chú cho đơn hàng 48', 140000.0, 'COMPLETED', 'KH10', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH049', '2023-10-20', 'Ghi chú cho đơn hàng 49', 360000.0, 'COMPLETED', 'KH13', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH050', '2023-10-21', 'Ghi chú cho đơn hàng 50', 405000.0, 'COMPLETED', 'KH04', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH051', '2023-10-22', 'Ghi chú cho đơn hàng 51', 368000.0, 'COMPLETED', 'KH06', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH052', '2023-10-23', 'Ghi chú cho đơn hàng 52', 205000.0, 'COMPLETED', 'KH15', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH053', '2023-10-24', 'Ghi chú cho đơn hàng 53', 215000.0, 'COMPLETED', 'KH26', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH054', '2023-10-25', 'Ghi chú cho đơn hàng 54', 92000.0, 'COMPLETED', 'KH06', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH055', '2023-10-26', 'Ghi chú cho đơn hàng 55', 180000.0, 'COMPLETED', 'KH30', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH056', '2023-10-27', 'Ghi chú cho đơn hàng 56', 147000.0, 'COMPLETED', 'KH08', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH057', '2023-10-28', 'Ghi chú cho đơn hàng 57', 313000.0, 'COMPLETED', 'KH16', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH058', '2023-10-29', 'Ghi chú cho đơn hàng 58', 170000.0, 'COMPLETED', 'KH11', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH059', '2023-10-30', 'Ghi chú cho đơn hàng 59', 307000.0, 'COMPLETED', 'KH09', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH060', '2023-10-31', 'Ghi chú cho đơn hàng 60', 398000.0, 'COMPLETED', 'KH23', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH061', '2023-11-01', 'Ghi chú cho đơn hàng 61', 140000.0, 'COMPLETED', 'KH18', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH062', '2023-11-02', 'Ghi chú cho đơn hàng 62', 49000.0, 'COMPLETED', 'KH27', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH063', '2023-11-03', 'Ghi chú cho đơn hàng 63', 530000.0, 'COMPLETED', 'KH29', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH064', '2023-11-04', 'Ghi chú cho đơn hàng 64', 140000.0, 'COMPLETED', 'KH19', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH065', '2023-11-05', 'Ghi chú cho đơn hàng 65', 308000.0, 'COMPLETED', 'KH22', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH066', '2023-11-06', 'Ghi chú cho đơn hàng 66', 160000.0, 'COMPLETED', 'KH25', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH067', '2023-11-07', 'Ghi chú cho đơn hàng 67', 311000.0, 'COMPLETED', 'KH27', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH068', '2023-11-08', 'Ghi chú cho đơn hàng 68', 480000.0, 'COMPLETED', 'KH18', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH069', '2023-11-09', 'Ghi chú cho đơn hàng 69', 150000.0, 'COMPLETED', 'KH13', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH070', '2023-11-10', 'Ghi chú cho đơn hàng 70', 195000.0, 'COMPLETED', 'KH15', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH071', '2023-11-11', 'Ghi chú cho đơn hàng 71', 603000.0, 'COMPLETED', 'KH26', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH072', '2023-11-12', 'Ghi chú cho đơn hàng 72', 60000.0, 'COMPLETED', 'KH07', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH073', '2023-11-13', 'Ghi chú cho đơn hàng 73', 210000.0, 'COMPLETED', 'KH04', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH074', '2023-11-14', 'Ghi chú cho đơn hàng 74', 40000.0, 'COMPLETED', 'KH15', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH075', '2023-11-15', 'Ghi chú cho đơn hàng 75', 35000.0, 'COMPLETED', 'KH10', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH076', '2023-11-16', 'Ghi chú cho đơn hàng 76', 402000.0, 'COMPLETED', 'KH27', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH077', '2023-11-17', 'Ghi chú cho đơn hàng 77', 499000.0, 'COMPLETED', 'KH11', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH078', '2023-11-18', 'Ghi chú cho đơn hàng 78', 242000.0, 'COMPLETED', 'KH02', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH079', '2023-11-19', 'Ghi chú cho đơn hàng 79', 351000.0, 'COMPLETED', 'KH28', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH080', '2023-11-20', 'Ghi chú cho đơn hàng 80', 289000.0, 'COMPLETED', 'KH25', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH081', '2023-11-21', 'Ghi chú cho đơn hàng 81', 424000.0, 'COMPLETED', 'KH29', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH082', '2023-11-22', 'Ghi chú cho đơn hàng 82', 350000.0, 'COMPLETED', 'KH23', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH083', '2023-11-23', 'Ghi chú cho đơn hàng 83', 60000.0, 'COMPLETED', 'KH27', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH084', '2023-11-24', 'Ghi chú cho đơn hàng 84', 355000.0, 'COMPLETED', 'KH05', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH085', '2023-11-25', 'Ghi chú cho đơn hàng 85', 448000.0, 'COMPLETED', 'KH18', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH086', '2023-11-26', 'Ghi chú cho đơn hàng 86', 65000.0, 'COMPLETED', 'KH02', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH087', '2023-11-27', 'Ghi chú cho đơn hàng 87', 170000.0, 'COMPLETED', 'KH04', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH088', '2023-11-28', 'Ghi chú cho đơn hàng 88', 108000.0, 'COMPLETED', 'KH21', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH089', '2023-11-29', 'Ghi chú cho đơn hàng 89', 455000.0, 'COMPLETED', 'KH27', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH090', '2023-11-30', 'Ghi chú cho đơn hàng 90', 120000.0, 'COMPLETED', 'KH24', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH091', '2023-12-01', 'Ghi chú cho đơn hàng 91', 155000.0, 'COMPLETED', 'KH24', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH092', '2023-12-02', 'Ghi chú cho đơn hàng 92', 327000.0, 'COMPLETED', 'KH12', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH093', '2023-12-03', 'Ghi chú cho đơn hàng 93', 170000.0, 'COMPLETED', 'KH28', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH094', '2023-12-04', 'Ghi chú cho đơn hàng 94', 626000.0, 'COMPLETED', 'KH07', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH095', '2023-12-05', 'Ghi chú cho đơn hàng 95', 225000.0, 'CANCELLED', 'KH19', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH096', '2023-12-06', 'Ghi chú cho đơn hàng 96', 420000.0, 'CANCELLED', 'KH26', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH097', '2023-12-07', 'Ghi chú cho đơn hàng 97', 139000.0, 'CANCELLED', 'KH09', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH098', '2023-12-08', 'Ghi chú cho đơn hàng 98', 96000.0, 'CANCELLED', 'KH12', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH099', '2023-12-09', 'Ghi chú cho đơn hàng 99', 340000.0, 'CANCELLED', 'KH04', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH100', '2023-12-10', 'Ghi chú cho đơn hàng 100', 565000.0, 'PROCESSING', 'KH29', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH101', '2023-12-11', 'Ghi chú cho đơn hàng 101', 139000.0, 'COMPLETED', 'KH09', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH102', '2023-12-12', 'Ghi chú cho đơn hàng 102', 370000.0, 'COMPLETED', 'KH23', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH103', '2023-12-13', 'Ghi chú cho đơn hàng 103', 446000.0, 'COMPLETED', 'KH07', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH104', '2023-12-14', 'Ghi chú cho đơn hàng 104', 210000.0, 'COMPLETED', 'KH28', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH105', '2023-12-15', 'Ghi chú cho đơn hàng 105', 250000.0, 'COMPLETED', 'KH25', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH106', '2023-12-16', 'Ghi chú cho đơn hàng 106', 370000.0, 'COMPLETED', 'KH17', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH107', '2023-12-17', 'Ghi chú cho đơn hàng 107', 100000.0, 'COMPLETED', 'KH03', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH108', '2023-12-18', 'Ghi chú cho đơn hàng 108', 245000.0, 'COMPLETED', 'KH23', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH109', '2023-12-19', 'Ghi chú cho đơn hàng 109', 255000.0, 'COMPLETED', 'KH14', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH110', '2023-12-20', 'Ghi chú cho đơn hàng 110', 70000.0, 'COMPLETED', 'KH05', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH111', '2023-12-21', 'Ghi chú cho đơn hàng 111', 120000.0, 'COMPLETED', 'KH30', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH112', '2023-12-22', 'Ghi chú cho đơn hàng 112', 794000.0, 'COMPLETED', 'KH09', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH113', '2023-12-23', 'Ghi chú cho đơn hàng 113', 355000.0, 'COMPLETED', 'KH06', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH114', '2023-12-24', 'Ghi chú cho đơn hàng 114', 270000.0, 'COMPLETED', 'KH09', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH115', '2023-12-25', 'Ghi chú cho đơn hàng 115', 652000.0, 'COMPLETED', 'KH29', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH116', '2023-12-26', 'Ghi chú cho đơn hàng 116', 259000.0, 'COMPLETED', 'KH22', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH117', '2023-12-27', 'Ghi chú cho đơn hàng 117', 224000.0, 'COMPLETED', 'KH28', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH118', '2023-12-28', 'Ghi chú cho đơn hàng 118', 566000.0, 'COMPLETED', 'KH15', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH119', '2023-12-29', 'Ghi chú cho đơn hàng 119', 343000.0, 'COMPLETED', 'KH03', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH120', '2023-12-30', 'Ghi chú cho đơn hàng 120', 105000.0, 'COMPLETED', 'KH05', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH121', '2023-12-31', 'Ghi chú cho đơn hàng 121', 316000.0, 'COMPLETED', 'KH29', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH122', '2024-01-01', 'Ghi chú cho đơn hàng 122', 125000.0, 'COMPLETED', 'KH25', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH123', '2024-01-02', 'Ghi chú cho đơn hàng 123', 475000.0, 'COMPLETED', 'KH29', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH124', '2024-01-03', 'Ghi chú cho đơn hàng 124', 676000.0, 'COMPLETED', 'KH29', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH125', '2024-01-04', 'Ghi chú cho đơn hàng 125', 435000.0, 'COMPLETED', 'KH28', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH126', '2024-01-05', 'Ghi chú cho đơn hàng 126', 545000.0, 'COMPLETED', 'KH07', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH127', '2024-01-06', 'Ghi chú cho đơn hàng 127', 303000.0, 'COMPLETED', 'KH30', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH128', '2024-01-07', 'Ghi chú cho đơn hàng 128', 189000.0, 'COMPLETED', 'KH03', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH129', '2024-01-08', 'Ghi chú cho đơn hàng 129', 130000.0, 'COMPLETED', 'KH23', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH130', '2024-01-09', 'Ghi chú cho đơn hàng 130', 642000.0, 'COMPLETED', 'KH21', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH131', '2024-01-10', 'Ghi chú cho đơn hàng 131', 345000.0, 'COMPLETED', 'KH06', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH132', '2024-01-11', 'Ghi chú cho đơn hàng 132', 65000.0, 'COMPLETED', 'KH07', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH133', '2024-01-12', 'Ghi chú cho đơn hàng 133', 170000.0, 'COMPLETED', 'KH26', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH134', '2024-01-13', 'Ghi chú cho đơn hàng 134', 671000.0, 'COMPLETED', 'KH16', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH135', '2024-01-14', 'Ghi chú cho đơn hàng 135', 407000.0, 'COMPLETED', 'KH12', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH136', '2024-01-15', 'Ghi chú cho đơn hàng 136', 50000.0, 'COMPLETED', 'KH25', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH137', '2024-01-16', 'Ghi chú cho đơn hàng 137', 287000.0, 'COMPLETED', 'KH12', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH138', '2024-01-17', 'Ghi chú cho đơn hàng 138', 227000.0, 'COMPLETED', 'KH02', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH139', '2024-01-18', 'Ghi chú cho đơn hàng 139', 65000.0, 'COMPLETED', 'KH26', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH140', '2024-01-19', 'Ghi chú cho đơn hàng 140', 190000.0, 'COMPLETED', 'KH12', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH141', '2024-01-20', 'Ghi chú cho đơn hàng 141', 169000.0, 'COMPLETED', 'KH23', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH142', '2024-01-21', 'Ghi chú cho đơn hàng 142', 54000.0, 'COMPLETED', 'KH29', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH143', '2024-01-22', 'Ghi chú cho đơn hàng 143', 347000.0, 'COMPLETED', 'KH29', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH144', '2024-01-23', 'Ghi chú cho đơn hàng 144', 125000.0, 'COMPLETED', 'KH12', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH145', '2024-01-24', 'Ghi chú cho đơn hàng 145', 759000.0, 'COMPLETED', 'KH16', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH146', '2024-01-25', 'Ghi chú cho đơn hàng 146', 315000.0, 'COMPLETED', 'KH22', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH147', '2024-01-26', 'Ghi chú cho đơn hàng 147', 257000.0, 'COMPLETED', 'KH14', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH148', '2024-01-27', 'Ghi chú cho đơn hàng 148', 195000.0, 'COMPLETED', 'KH12', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH149', '2024-01-28', 'Ghi chú cho đơn hàng 149', 275000.0, 'COMPLETED', 'KH17', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH150', '2024-01-29', 'Ghi chú cho đơn hàng 150', 489000.0, 'COMPLETED', 'KH26', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH151', '2024-01-30', 'Ghi chú cho đơn hàng 151', 315000.0, 'COMPLETED', 'KH19', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH152', '2024-01-31', 'Ghi chú cho đơn hàng 152', 115000.0, 'COMPLETED', 'KH22', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH153', '2024-02-01', 'Ghi chú cho đơn hàng 153', 370000.0, 'COMPLETED', 'KH10', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH154', '2024-02-02', 'Ghi chú cho đơn hàng 154', 65000.0, 'COMPLETED', 'KH01', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH155', '2024-02-03', 'Ghi chú cho đơn hàng 155', 180000.0, 'COMPLETED', 'KH18', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH156', '2024-02-04', 'Ghi chú cho đơn hàng 156', 135000.0, 'COMPLETED', 'KH10', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH157', '2024-02-05', 'Ghi chú cho đơn hàng 157', 110000.0, 'COMPLETED', 'KH23', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH158', '2024-02-06', 'Ghi chú cho đơn hàng 158', 175000.0, 'COMPLETED', 'KH24', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH159', '2024-02-07', 'Ghi chú cho đơn hàng 159', 346000.0, 'COMPLETED', 'KH13', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH160', '2024-02-08', 'Ghi chú cho đơn hàng 160', 335000.0, 'COMPLETED', 'KH07', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH161', '2024-02-09', 'Ghi chú cho đơn hàng 161', 178000.0, 'COMPLETED', 'KH06', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH162', '2024-02-10', 'Ghi chú cho đơn hàng 162', 175000.0, 'COMPLETED', 'KH17', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH163', '2024-02-11', 'Ghi chú cho đơn hàng 163', 191000.0, 'COMPLETED', 'KH21', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH164', '2024-02-12', 'Ghi chú cho đơn hàng 164', 105000.0, 'COMPLETED', 'KH01', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH165', '2024-02-13', 'Ghi chú cho đơn hàng 165', 50000.0, 'COMPLETED', 'KH14', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH166', '2024-02-14', 'Ghi chú cho đơn hàng 166', 80000.0, 'COMPLETED', 'KH25', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH167', '2024-02-15', 'Ghi chú cho đơn hàng 167', 336000.0, 'COMPLETED', 'KH28', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH168', '2024-02-16', 'Ghi chú cho đơn hàng 168', 135000.0, 'COMPLETED', 'KH08', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH169', '2024-02-17', 'Ghi chú cho đơn hàng 169', 270000.0, 'COMPLETED', 'KH16', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH170', '2024-02-18', 'Ghi chú cho đơn hàng 170', 371000.0, 'COMPLETED', 'KH09', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH171', '2024-02-19', 'Ghi chú cho đơn hàng 171', 254000.0, 'COMPLETED', 'KH22', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH172', '2024-02-20', 'Ghi chú cho đơn hàng 172', 342000.0, 'COMPLETED', 'KH21', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH173', '2024-02-21', 'Ghi chú cho đơn hàng 173', 96000.0, 'COMPLETED', 'KH19', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH174', '2024-02-22', 'Ghi chú cho đơn hàng 174', 160000.0, 'COMPLETED', 'KH17', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH175', '2024-02-23', 'Ghi chú cho đơn hàng 175', 81000.0, 'COMPLETED', 'KH10', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH176', '2024-02-24', 'Ghi chú cho đơn hàng 176', 255000.0, 'COMPLETED', 'KH01', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH177', '2024-02-25', 'Ghi chú cho đơn hàng 177', 180000.0, 'COMPLETED', 'KH12', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH178', '2024-02-26', 'Ghi chú cho đơn hàng 178', 135000.0, 'COMPLETED', 'KH16', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH179', '2024-02-27', 'Ghi chú cho đơn hàng 179', 380000.0, 'COMPLETED', 'KH02', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH180', '2024-02-28', 'Ghi chú cho đơn hàng 180', 320000.0, 'COMPLETED', 'KH24', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH181', '2024-02-29', 'Ghi chú cho đơn hàng 181', 424000.0, 'COMPLETED', 'KH20', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH182', '2024-03-01', 'Ghi chú cho đơn hàng 182', 318000.0, 'COMPLETED', 'KH16', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH183', '2024-03-02', 'Ghi chú cho đơn hàng 183', 300000.0, 'COMPLETED', 'KH14', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH184', '2024-03-03', 'Ghi chú cho đơn hàng 184', 62000.0, 'COMPLETED', 'KH14', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH185', '2024-03-04', 'Ghi chú cho đơn hàng 185', 545000.0, 'COMPLETED', 'KH18', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH186', '2024-03-05', 'Ghi chú cho đơn hàng 186', 60000.0, 'COMPLETED', 'KH17', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH187', '2024-03-06', 'Ghi chú cho đơn hàng 187', 385000.0, 'COMPLETED', 'KH20', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH188', '2024-03-07', 'Ghi chú cho đơn hàng 188', 120000.0, 'COMPLETED', 'KH14', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH189', '2024-03-08', 'Ghi chú cho đơn hàng 189', 235000.0, 'COMPLETED', 'KH18', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH190', '2024-03-09', 'Ghi chú cho đơn hàng 190', 40000.0, 'COMPLETED', 'KH26', 'NV04', 'CH04');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH191', '2023-12-10', 'Ghi chú cho đơn hàng 191', 596000.0, 'CONFIRMED', 'KH12', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH192', '2023-12-10', 'Ghi chú cho đơn hàng 192', 86000.0, 'CONFIRMED', 'KH28', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH193', '2023-12-10', 'Ghi chú cho đơn hàng 193', 125000.0, 'CONFIRMED', 'KH24', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH194', '2023-12-10', 'Ghi chú cho đơn hàng 194', 140000.0, 'CONFIRMED', 'KH20', 'NV01', 'CH01');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH195', '2023-12-10', 'Ghi chú cho đơn hàng 195', 404000.0, 'PROCESSING', 'KH13', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH196', '2023-12-10', 'Ghi chú cho đơn hàng 196', 441000.0, 'PROCESSING', 'KH07', 'NV02', 'CH02');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH197', '2023-12-10', 'Ghi chú cho đơn hàng 197', 339000.0, 'PROCESSING', 'KH10', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH198', '2023-12-10', 'Ghi chú cho đơn hàng 198', 200000.0, 'PROCESSING', 'KH18', 'NV05', 'CH05');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH199', '2023-12-10', 'Ghi chú cho đơn hàng 199', 612000.0, 'PROCESSING', 'KH20', 'NV03', 'CH03');
INSERT INTO `Order` (Order_ID, Order_Date, Note, Total_Price, Status, Customer_ID, Cashier_ID, Branch_ID) VALUES ('DH200', '2023-12-10', 'Ghi chú cho đơn hàng 200', 190000.0, 'PROCESSING', 'KH23', 'NV04', 'CH04');


CREATE TABLE Order_Line (
    Order_ID varchar(256) NOT NULL,
    Item_ID varchar(256) NOT NULL,
    Quantity INT NOT NULL,
    Total_Price DECIMAL(10, 2) NOT NULL
);

INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH001', 'MH11', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH001', 'MH10', 5, 150000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH001', 'MH16', 2, 70000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH002', 'MH11', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH002', 'MH08', 5, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH002', 'MH03', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH003', 'MH18', 4, 40000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH004', 'MH13', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH004', 'MH03', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH005', 'MH18', 5, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH005', 'MH04', 3, 75000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH005', 'MH16', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH005', 'MH09', 2, 44000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH006', 'MH16', 2, 70000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH006', 'MH20', 4, 236000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH006', 'MH18', 1, 10000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH006', 'MH17', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH007', 'MH18', 3, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH007', 'MH14', 2, 54000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH008', 'MH09', 3, 66000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH008', 'MH01', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH008', 'MH07', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH008', 'MH04', 4, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH009', 'MH05', 3, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH009', 'MH11', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH009', 'MH10', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH009', 'MH19', 2, 98000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH009', 'MH15', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH010', 'MH09', 5, 110000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH010', 'MH18', 5, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH010', 'MH14', 1, 27000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH010', 'MH10', 1, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH010', 'MH04', 3, 75000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH011', 'MH09', 3, 66000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH011', 'MH17', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH012', 'MH18', 1, 10000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH012', 'MH20', 3, 177000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH012', 'MH08', 1, 20000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH012', 'MH04', 3, 75000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH013', 'MH19', 3, 147000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH013', 'MH09', 3, 66000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH013', 'MH03', 5, 150000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH013', 'MH14', 4, 108000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH014', 'MH08', 1, 20000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH014', 'MH19', 1, 49000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH014', 'MH04', 5, 125000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH015', 'MH18', 4, 40000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH016', 'MH10', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH016', 'MH08', 3, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH017', 'MH03', 1, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH018', 'MH07', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH019', 'MH03', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH019', 'MH20', 3, 177000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH019', 'MH07', 3, 75000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH020', 'MH13', 3, 75000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH020', 'MH04', 5, 125000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH020', 'MH07', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH021', 'MH15', 2, 70000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH021', 'MH07', 1, 25000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH021', 'MH04', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH022', 'MH16', 5, 175000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH022', 'MH11', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH023', 'MH03', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH023', 'MH05', 3, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH023', 'MH14', 1, 27000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH023', 'MH10', 5, 150000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH024', 'MH05', 2, 40000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH024', 'MH13', 3, 75000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH024', 'MH10', 8, 240000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH025', 'MH05', 1, 20000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH025', 'MH20', 3, 177000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH026', 'MH04', 5, 125000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH026', 'MH05', 5, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH026', 'MH20', 4, 236000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH027', 'MH16', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH027', 'MH08', 2, 40000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH028', 'MH13', 5, 125000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH028', 'MH02', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH028', 'MH15', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH029', 'MH01', 5, 150000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH029', 'MH03', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH029', 'MH19', 5, 245000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH030', 'MH16', 1, 35000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH030', 'MH07', 4, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH031', 'MH05', 2, 40000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH031', 'MH08', 2, 40000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH031', 'MH06', 1, 25000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH031', 'MH14', 5, 135000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH032', 'MH13', 3, 75000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH032', 'MH18', 4, 40000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH032', 'MH16', 5, 175000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH033', 'MH09', 5, 110000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH033', 'MH04', 4, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH034', 'MH12', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH034', 'MH14', 2, 54000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH034', 'MH15', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH034', 'MH19', 5, 245000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH035', 'MH08', 3, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH035', 'MH05', 5, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH035', 'MH09', 3, 66000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH036', 'MH05', 3, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH036', 'MH04', 5, 125000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH036', 'MH12', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH037', 'MH11', 1, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH037', 'MH10', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH037', 'MH13', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH038', 'MH05', 4, 80000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH038', 'MH17', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH038', 'MH02', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH038', 'MH06', 4, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH039', 'MH02', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH039', 'MH05', 8, 160000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH039', 'MH07', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH040', 'MH05', 3, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH040', 'MH18', 2, 20000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH040', 'MH15', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH041', 'MH19', 1, 49000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH041', 'MH11', 1, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH042', 'MH08', 2, 40000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH043', 'MH11', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH043', 'MH12', 1, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH043', 'MH14', 4, 108000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH043', 'MH10', 5, 150000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH044', 'MH07', 1, 25000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH044', 'MH04', 9, 225000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH044', 'MH12', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH044', 'MH19', 4, 196000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH045', 'MH14', 4, 108000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH045', 'MH13', 3, 75000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH045', 'MH11', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH045', 'MH18', 4, 40000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH046', 'MH12', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH046', 'MH09', 2, 44000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH046', 'MH19', 1, 49000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH047', 'MH02', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH047', 'MH09', 1, 22000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH047', 'MH15', 2, 70000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH048', 'MH11', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH048', 'MH10', 1, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH048', 'MH06', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH049', 'MH09', 2, 44000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH049', 'MH03', 1, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH049', 'MH11', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH049', 'MH19', 4, 196000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH050', 'MH04', 3, 75000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH050', 'MH03', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH050', 'MH05', 5, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH050', 'MH16', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH051', 'MH06', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH051', 'MH17', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH051', 'MH09', 4, 88000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH051', 'MH18', 4, 40000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH051', 'MH07', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH052', 'MH04', 4, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH052', 'MH15', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH053', 'MH17', 1, 35000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH053', 'MH03', 1, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH053', 'MH12', 1, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH053', 'MH10', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH053', 'MH05', 3, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH054', 'MH04', 1, 25000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH054', 'MH14', 1, 27000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH054', 'MH05', 2, 40000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH055', 'MH06', 1, 25000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH055', 'MH16', 1, 35000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH055', 'MH01', 1, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH055', 'MH12', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH056', 'MH19', 3, 147000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH057', 'MH13', 5, 125000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH057', 'MH01', 1, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH057', 'MH14', 4, 108000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH057', 'MH04', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH058', 'MH07', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH058', 'MH10', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH058', 'MH01', 1, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH059', 'MH08', 2, 40000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH059', 'MH09', 5, 110000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH059', 'MH14', 1, 27000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH059', 'MH18', 3, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH059', 'MH13', 4, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH060', 'MH19', 2, 98000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH060', 'MH10', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH060', 'MH08', 5, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH060', 'MH05', 4, 80000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH061', 'MH16', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH062', 'MH19', 1, 49000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH063', 'MH02', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH063', 'MH17', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH063', 'MH16', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH063', 'MH08', 9, 180000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH064', 'MH08', 4, 80000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH064', 'MH03', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH065', 'MH19', 2, 98000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH065', 'MH11', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH065', 'MH01', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH066', 'MH03', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH066', 'MH02', 2, 70000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH067', 'MH03', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH067', 'MH01', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH067', 'MH09', 3, 66000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH067', 'MH17', 1, 35000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH068', 'MH02', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH068', 'MH12', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH068', 'MH16', 2, 70000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH068', 'MH19', 5, 245000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH069', 'MH11', 5, 150000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH070', 'MH15', 2, 70000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH070', 'MH18', 2, 20000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH070', 'MH16', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH071', 'MH04', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH071', 'MH02', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH071', 'MH17', 5, 175000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH071', 'MH01', 5, 150000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH071', 'MH09', 4, 88000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH072', 'MH08', 3, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH073', 'MH15', 2, 70000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH073', 'MH10', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH073', 'MH18', 5, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH074', 'MH05', 2, 40000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH075', 'MH06', 1, 25000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH075', 'MH18', 1, 10000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH076', 'MH07', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH076', 'MH09', 2, 44000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH076', 'MH19', 2, 98000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH076', 'MH15', 5, 175000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH076', 'MH17', 1, 35000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH077', 'MH03', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH077', 'MH09', 2, 44000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH077', 'MH04', 4, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH077', 'MH20', 5, 295000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH078', 'MH19', 3, 147000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH078', 'MH08', 1, 20000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH078', 'MH06', 3, 75000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH079', 'MH09', 3, 66000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH079', 'MH18', 1, 10000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH079', 'MH08', 5, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH079', 'MH04', 5, 125000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH079', 'MH06', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH080', 'MH16', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH080', 'MH15', 1, 35000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH080', 'MH12', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH080', 'MH14', 2, 54000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH081', 'MH04', 1, 25000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH081', 'MH20', 5, 295000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH081', 'MH09', 2, 44000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH081', 'MH03', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH082', 'MH05', 5, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH082', 'MH07', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH082', 'MH10', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH082', 'MH16', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH082', 'MH17', 1, 35000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH083', 'MH17', 1, 35000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH083', 'MH06', 1, 25000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH084', 'MH10', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH084', 'MH07', 1, 25000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH084', 'MH04', 4, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH084', 'MH02', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH085', 'MH13', 4, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH085', 'MH11', 7, 210000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH085', 'MH20', 2, 118000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH085', 'MH08', 1, 20000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH086', 'MH16', 1, 35000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH086', 'MH10', 1, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH087', 'MH12', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH087', 'MH04', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH088', 'MH14', 4, 108000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH089', 'MH02', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH089', 'MH16', 2, 70000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH089', 'MH15', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH089', 'MH05', 4, 80000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH089', 'MH11', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH090', 'MH08', 3, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH090', 'MH15', 1, 35000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH090', 'MH06', 1, 25000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH091', 'MH03', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH091', 'MH15', 1, 35000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH092', 'MH15', 1, 35000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH092', 'MH04', 1, 25000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH092', 'MH19', 5, 245000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH092', 'MH09', 1, 22000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH093', 'MH16', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH093', 'MH01', 1, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH094', 'MH20', 4, 236000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH094', 'MH14', 5, 135000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH094', 'MH12', 5, 150000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH094', 'MH16', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH095', 'MH16', 5, 175000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH095', 'MH06', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH096', 'MH07', 3, 75000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH096', 'MH20', 5, 295000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH096', 'MH18', 5, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH097', 'MH19', 1, 49000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH097', 'MH03', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH098', 'MH09', 3, 66000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH098', 'MH05', 1, 20000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH098', 'MH18', 1, 10000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH099', 'MH17', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH099', 'MH16', 5, 175000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH099', 'MH05', 3, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH100', 'MH10', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH100', 'MH01', 7, 210000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH100', 'MH17', 5, 175000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH100', 'MH03', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH101', 'MH11', 1, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH101', 'MH12', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH101', 'MH19', 1, 49000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH102', 'MH18', 3, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH102', 'MH03', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH102', 'MH17', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH102', 'MH07', 3, 75000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH102', 'MH04', 4, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH103', 'MH11', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH103', 'MH10', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH103', 'MH20', 4, 236000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH104', 'MH16', 6, 210000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH105', 'MH04', 5, 125000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH105', 'MH06', 5, 125000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH106', 'MH03', 1, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH106', 'MH07', 3, 75000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH106', 'MH17', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH106', 'MH04', 5, 125000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH107', 'MH05', 5, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH108', 'MH16', 7, 245000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH109', 'MH03', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH109', 'MH08', 2, 40000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH109', 'MH13', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH109', 'MH15', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH110', 'MH17', 2, 70000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH111', 'MH03', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH111', 'MH18', 3, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH112', 'MH20', 9, 531000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH112', 'MH09', 4, 88000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH112', 'MH15', 5, 175000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH113', 'MH11', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH113', 'MH01', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH113', 'MH07', 3, 75000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH113', 'MH05', 5, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH114', 'MH10', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH114', 'MH07', 5, 125000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH114', 'MH04', 1, 25000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH115', 'MH12', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH115', 'MH20', 4, 236000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH115', 'MH04', 4, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH115', 'MH19', 4, 196000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH116', 'MH06', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH116', 'MH20', 1, 59000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH116', 'MH01', 5, 150000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH117', 'MH04', 4, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH117', 'MH09', 2, 44000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH117', 'MH06', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH117', 'MH01', 1, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH118', 'MH03', 5, 150000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH118', 'MH19', 4, 196000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH118', 'MH02', 2, 70000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH118', 'MH12', 5, 150000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH119', 'MH02', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH119', 'MH13', 6, 150000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH119', 'MH09', 4, 88000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH120', 'MH17', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH121', 'MH10', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH121', 'MH13', 1, 25000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH121', 'MH12', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH121', 'MH14', 3, 81000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH122', 'MH05', 1, 20000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH122', 'MH15', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH123', 'MH17', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH123', 'MH20', 5, 295000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH123', 'MH04', 3, 75000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH124', 'MH09', 3, 66000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH124', 'MH01', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH124', 'MH02', 9, 315000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH124', 'MH17', 5, 175000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH125', 'MH16', 5, 175000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH125', 'MH13', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH125', 'MH03', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH125', 'MH01', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH126', 'MH18', 1, 10000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH126', 'MH16', 5, 175000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH126', 'MH14', 5, 135000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH126', 'MH01', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH126', 'MH17', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH127', 'MH01', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH127', 'MH08', 5, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH127', 'MH09', 4, 88000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH127', 'MH04', 1, 25000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH128', 'MH02', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH128', 'MH19', 1, 49000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH129', 'MH15', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH129', 'MH04', 1, 25000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH130', 'MH04', 4, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH130', 'MH20', 5, 295000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH130', 'MH13', 3, 75000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH130', 'MH12', 5, 150000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH130', 'MH09', 1, 22000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH131', 'MH01', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH131', 'MH17', 5, 175000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH131', 'MH13', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH132', 'MH17', 1, 35000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH132', 'MH18', 3, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH133', 'MH16', 2, 70000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH133', 'MH06', 4, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH134', 'MH18', 5, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH134', 'MH12', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH134', 'MH20', 9, 531000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH135', 'MH03', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH135', 'MH07', 4, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH135', 'MH16', 2, 70000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH135', 'MH20', 3, 177000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH136', 'MH04', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH137', 'MH02', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH137', 'MH19', 3, 147000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH138', 'MH07', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH138', 'MH18', 5, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH138', 'MH09', 1, 22000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH138', 'MH17', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH139', 'MH13', 1, 25000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH139', 'MH18', 2, 20000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH139', 'MH08', 1, 20000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH140', 'MH10', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH140', 'MH17', 2, 70000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH141', 'MH19', 1, 49000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH141', 'MH10', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH142', 'MH14', 2, 54000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH143', 'MH06', 1, 25000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH143', 'MH19', 3, 147000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH143', 'MH16', 5, 175000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH144', 'MH06', 5, 125000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH145', 'MH10', 5, 150000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH145', 'MH11', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH145', 'MH20', 5, 295000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH145', 'MH14', 2, 54000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH145', 'MH16', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH146', 'MH09', 1, 22000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH146', 'MH14', 9, 243000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH146', 'MH13', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH147', 'MH11', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH147', 'MH08', 4, 80000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH147', 'MH10', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH147', 'MH14', 1, 27000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH148', 'MH02', 2, 70000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH148', 'MH07', 5, 125000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH149', 'MH02', 5, 175000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH149', 'MH08', 2, 40000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH149', 'MH11', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH150', 'MH06', 5, 125000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH150', 'MH04', 1, 25000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH150', 'MH14', 7, 189000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH150', 'MH11', 5, 150000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH151', 'MH08', 5, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH151', 'MH13', 3, 75000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH151', 'MH15', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH152', 'MH02', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH152', 'MH18', 1, 10000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH153', 'MH16', 2, 70000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH153', 'MH07', 4, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH153', 'MH08', 5, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH153', 'MH13', 4, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH154', 'MH02', 1, 35000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH154', 'MH03', 1, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH155', 'MH01', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH155', 'MH10', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH156', 'MH14', 5, 135000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH157', 'MH10', 1, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH157', 'MH05', 4, 80000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH158', 'MH10', 5, 150000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH158', 'MH04', 1, 25000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH159', 'MH13', 1, 25000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH159', 'MH19', 4, 196000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH159', 'MH06', 5, 125000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH160', 'MH18', 1, 10000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH160', 'MH07', 5, 125000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH160', 'MH06', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH160', 'MH11', 5, 150000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH161', 'MH02', 2, 70000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH161', 'MH14', 4, 108000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH162', 'MH02', 5, 175000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH163', 'MH09', 3, 66000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH163', 'MH06', 5, 125000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH164', 'MH17', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH165', 'MH18', 5, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH166', 'MH08', 4, 80000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH167', 'MH13', 7, 175000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH167', 'MH14', 3, 81000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH167', 'MH08', 4, 80000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH168', 'MH14', 5, 135000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH169', 'MH12', 9, 270000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH170', 'MH19', 4, 196000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH170', 'MH16', 5, 175000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH171', 'MH14', 2, 54000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH171', 'MH08', 1, 20000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH171', 'MH16', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH171', 'MH13', 3, 75000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH172', 'MH04', 4, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH172', 'MH08', 5, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH172', 'MH09', 4, 88000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH172', 'MH14', 2, 54000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH173', 'MH03', 1, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH173', 'MH09', 3, 66000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH174', 'MH13', 1, 25000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH174', 'MH06', 3, 75000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH174', 'MH10', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH175', 'MH14', 3, 81000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH176', 'MH02', 7, 245000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH176', 'MH18', 1, 10000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH177', 'MH05', 4, 80000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH177', 'MH13', 4, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH178', 'MH04', 5, 125000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH178', 'MH18', 1, 10000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH179', 'MH07', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH179', 'MH08', 2, 40000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH179', 'MH04', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH179', 'MH10', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH179', 'MH03', 5, 150000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH180', 'MH09', 5, 110000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH180', 'MH16', 5, 175000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH180', 'MH17', 1, 35000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH181', 'MH16', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH181', 'MH06', 9, 225000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH181', 'MH20', 1, 59000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH182', 'MH10', 5, 150000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH182', 'MH20', 2, 118000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH182', 'MH13', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH183', 'MH01', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH183', 'MH17', 6, 210000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH184', 'MH17', 1, 35000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH184', 'MH14', 1, 27000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH185', 'MH08', 5, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH185', 'MH12', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH185', 'MH17', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH185', 'MH15', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH185', 'MH16', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH186', 'MH12', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH187', 'MH19', 3, 147000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH187', 'MH20', 2, 118000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH187', 'MH10', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH188', 'MH10', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH189', 'MH13', 3, 75000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH189', 'MH15', 2, 70000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH189', 'MH05', 1, 20000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH189', 'MH16', 2, 70000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH190', 'MH08', 2, 40000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH191', 'MH06', 6, 150000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH191', 'MH20', 4, 236000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH191', 'MH17', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH191', 'MH02', 2, 70000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH192', 'MH05', 1, 20000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH192', 'MH09', 3, 66000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH193', 'MH15', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH193', 'MH05', 1, 20000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH194', 'MH05', 2, 40000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH194', 'MH06', 4, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH195', 'MH12', 3, 90000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH195', 'MH14', 2, 54000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH195', 'MH15', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH195', 'MH11', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH196', 'MH18', 5, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH196', 'MH17', 3, 105000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH196', 'MH20', 4, 236000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH196', 'MH13', 2, 50000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH197', 'MH16', 1, 35000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH197', 'MH08', 7, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH197', 'MH01', 4, 120000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH197', 'MH09', 2, 44000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH198', 'MH18', 4, 40000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH198', 'MH13', 4, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH198', 'MH10', 2, 60000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH199', 'MH19', 3, 147000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH199', 'MH12', 5, 150000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH199', 'MH13', 1, 25000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH199', 'MH17', 4, 140000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH199', 'MH11', 5, 150000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH200', 'MH06', 4, 100000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH200', 'MH12', 1, 30000.00);
INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price) VALUES ('DH200', 'MH05', 3, 60000.00);

DELIMITER $$
CREATE TRIGGER `calculate_order_total` AFTER INSERT ON `order_line` FOR EACH ROW BEGIN
    DECLARE order_total DECIMAL(10, 2);
    
    -- Calculate the total price for the order
    SELECT SUM(Total_Price) INTO order_total
    FROM Order_Line
    WHERE Order_ID = NEW.Order_ID;
    
    -- Update the total price in the Order table
    UPDATE `Order`
    SET Total_Price = order_total
    WHERE Order_ID = NEW.Order_ID;
END
$$
DELIMITER ;


CREATE TABLE Payment (
    Order_ID varchar(256) NOT NULL,
    Method ENUM('CASH', 'MOMO', 'BANKING') NOT NULL,
    Delivery_ID varchar(256) NOT NULL,
    Promotion_ID varchar(256)
);

INSERT INTO Payment (Order_ID, Method, Delivery_ID, Promotion_ID) VALUES ('DH001', 'CASH', 'GH01', 'KM01');
INSERT INTO Payment (Order_ID, Method, Delivery_ID, Promotion_ID) VALUES ('DH002', 'BANKING', 'GH01', 'KM01');
INSERT INTO Payment (Order_ID, Method, Delivery_ID, Promotion_ID) VALUES ('DH003', 'CASH', 'GH02', 'KM01');
INSERT INTO Payment (Order_ID, Method, Delivery_ID, Promotion_ID) VALUES ('DH004', 'MOMO', 'GH02', NULL);
INSERT INTO Payment (Order_ID, Method, Delivery_ID, Promotion_ID) VALUES ('DH005', 'BANKING', 'GH01', 'KM01');
INSERT INTO Payment (Order_ID, Method, Delivery_ID, Promotion_ID) VALUES ('DH198','BANKING', 'GH02', 'KM01');
INSERT INTO Payment (Order_ID, Method, Delivery_ID, Promotion_ID) VALUES ('DH199','BANKING', 'GH03', 'KM01');
INSERT INTO Payment (Order_ID, Method, Delivery_ID, Promotion_ID) VALUES ('DH200','BANKING', 'GH02', 'KM02');


CREATE TABLE Bill (
    Bill_ID varchar(256) NOT NULL,
    Order_ID varchar(256) NOT NULL,
    Bill_Date DATE NOT NULL,
    Total_Bill DECIMAL(10, 2) NOT NULL
);

INSERT INTO Bill (Bill_ID,Order_ID,Bill_Date,Total_Bill) VALUES  ('HD001', 'DH001','2023-09-02', 330000.0);
INSERT INTO Bill (Bill_ID,Order_ID,Bill_Date,Total_Bill) VALUES  ('HD002', 'DH002','2023-09-03', 218000.0);
INSERT INTO Bill (Bill_ID,Order_ID,Bill_Date,Total_Bill) VALUES  ('HD003', 'DH003','2023-09-04', 61000.0);
INSERT INTO Bill (Bill_ID,Order_ID,Bill_Date,Total_Bill) VALUES  ('HD004', 'DH004','2023-09-05', 195000.0);
INSERT INTO Bill (Bill_ID,Order_ID,Bill_Date,Total_Bill) VALUES  ('HD005', 'DH005','2023-09-06', 289000.0);

-- ##################### Key & Contrainst #######################

ALTER TABLE Customer 
  ADD PRIMARY KEY (Customer_ID);

ALTER TABLE Branch
  ADD PRIMARY KEY (Branch_ID);

ALTER TABLE Employee
  ADD PRIMARY KEY (Employee_ID),
  ADD KEY (Manager_ID),
  ADD KEY (Branch_ID);
  
ALTER TABLE Promotion
  ADD PRIMARY KEY (Promotion_ID);

ALTER TABLE Delivery 
  ADD PRIMARY KEY (Delivery_ID);

ALTER TABLE `Order`
  ADD PRIMARY KEY (Order_ID),
  ADD KEY (Customer_ID),
  ADD KEY (Cashier_ID),
  ADD KEY (Branch_ID);
  
ALTER TABLE Bill
  ADD PRIMARY KEY (Bill_ID),
  ADD KEY (Order_ID);
  
ALTER TABLE Product
  ADD PRIMARY KEY (Product_ID);

ALTER TABLE Combo
  ADD PRIMARY KEY (Combo_ID);

ALTER TABLE Combo_List
  ADD PRIMARY KEY (Combo_ID, Product_ID),
  ADD KEY (Product_ID),
  ADD KEY (Combo_ID);
  
ALTER TABLE Item
  ADD PRIMARY KEY (Item_ID),
  ADD KEY (Product_ID),
  ADD KEY (Combo_ID);
  
ALTER TABLE Order_Line
  ADD PRIMARY KEY (Order_ID, Item_ID),
  ADD KEY (Order_ID),
  ADD KEY (Item_ID);
  
ALTER TABLE Payment
  ADD KEY (Order_ID),
  ADD KEY (Promotion_ID),
  ADD KEY (Delivery_ID);
-- ---------------------------------------------------------------

ALTER TABLE Employee
	ADD CONSTRAINT fk_emma FOREIGN KEY (Manager_ID) REFERENCES Employee(Employee_ID),
	ADD CONSTRAINT fk_embr FOREIGN KEY (Branch_ID) REFERENCES Branch(Branch_ID);

ALTER TABLE `Order`
	ADD CONSTRAINT fk_orcu FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    ADD CONSTRAINT fk_orca FOREIGN KEY (Cashier_ID) REFERENCES Employee(Employee_ID),
    ADD CONSTRAINT fk_orbr FOREIGN KEY (Branch_ID) REFERENCES Branch(Branch_ID);
	
    
ALTER TABLE Combo_List    
    ADD CONSTRAINT fk_clcb FOREIGN KEY (Combo_ID) REFERENCES Combo(Combo_ID),
    ADD CONSTRAINT fk_clpr FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID);

ALTER TABLE Item
	ADD CONSTRAINT fk_itpr FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID),
    ADD CONSTRAINT fk_itcb FOREIGN KEY (Combo_ID) REFERENCES Combo(Combo_ID);

ALTER TABLE Order_Line
	ADD CONSTRAINT fk_olor FOREIGN KEY (Order_ID) REFERENCES `Order`(Order_ID),
    ADD CONSTRAINT fk_olit FOREIGN KEY (Item_ID) REFERENCES Item(Item_ID);
    
-- ALTER TABLE Payment
-- 	ADD CONSTRAINT fk_paor FOREIGN KEY (Order_ID) REFERENCES `Order`(Order_ID),
--  ADD CONSTRAINT fk_pade FOREIGN KEY (Delivery_ID) REFERENCES Delivery(Delivery_ID),
--  ADD CONSTRAINT fk_papr FOREIGN KEY (Promotion_ID) REFERENCES Promotion(Promotion_ID);
    
-- ##################### FUNCTION #######################

DELIMITER $$

CREATE FUNCTION Calculate_Total_Bill(order_id VARCHAR(256)) 
RETURNS DECIMAL(10,2)
READS SQL DATA
BEGIN
    DECLARE final_bill DECIMAL(10,2);
    DECLARE order_price DECIMAL(10,2);
    DECLARE freight_cost DECIMAL(10,2);
    DECLARE order_date DATE;
    DECLARE discount_amount DECIMAL(10,2) DEFAULT 0.00;
    DECLARE discount_type VARCHAR(10);
    DECLARE max_amount DECIMAL(10,2);
    DECLARE min_order DECIMAL(10,2);
    DECLARE promo_start DATE;
    DECLARE promo_end DATE;

    -- Lấy giá trị đơn hàng
    SELECT o.Total_Price, o.Order_Date INTO order_price, order_date
    FROM `Order` o
    JOIN Payment p ON o.Order_ID = p.Order_ID
    WHERE p.Order_ID = order_id;

    -- Lấy phí vận chuyển
    SELECT d.Freight INTO freight_cost
    FROM Delivery d
    JOIN Payment p ON d.Delivery_ID = p.Delivery_ID
    WHERE p.Order_ID = order_id;

    -- Lấy thông tin khuyến mãi
    SELECT pr.Discount_Value, pr.Discount_Method, pr.Maximum_Amount, pr.Minimum_Order INTO discount_amount, discount_type, max_amount, min_order
    FROM Promotion pr
    JOIN Payment p ON pr.Promotion_ID = p.Promotion_ID
    WHERE p.Order_ID = order_id;

    -- Kiểm tra và áp dụng khuyến mãi
    IF (order_date >= promo_start AND order_date <= promo_end) THEN
        IF discount_type = 'PERCENTAGE' THEN
            SET discount_amount = LEAST((order_price * discount_amount / 100), max_amount);
        ELSEIF discount_type = 'AMOUNT' AND order_price >= min_order THEN
            SET discount_amount = discount_amount;
        ELSE
            SET discount_amount = 0.00;
        END IF;
    ELSE
        SET discount_amount = 0.00;
    END IF;

    -- Tính toán tổng hóa đơn
    SET final_bill = order_price + freight_cost - discount_amount;

    RETURN final_bill;
END$$

DELIMITER ;

-- ---------------------------

DELIMITER $$

CREATE FUNCTION Best_Seller(start_date DATE, end_date DATE, branch_id VARCHAR(256)) 
RETURNS VARCHAR(256)
READS SQL DATA
BEGIN
    DECLARE product_name VARCHAR(256);

    SELECT p.Name INTO product_name
    FROM Order_Line ol
    JOIN `Order` o ON ol.Order_ID = o.Order_ID
    JOIN Item i ON ol.Item_ID = i.Item_ID
    JOIN Product p ON i.Product_ID = p.Product_ID
    WHERE o.Order_Date >= start_date AND o.Order_Date <= end_date
      AND o.Branch_ID = branch_id
    GROUP BY ol.Item_ID
    ORDER BY SUM(ol.Total_Price) DESC
    LIMIT 1;

    RETURN product_name;
END$$

DELIMITER ;



-- ##################### PROCEDUCE #######################

DELIMITER $$
--
-- Thủ tục
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `Add_new_employee` (IN `employeeID` VARCHAR(256), IN `NewUserName` VARCHAR(255), IN `NewPassword` VARCHAR(255), IN `NewName` VARCHAR(255), IN `NewPhoneNumber` VARCHAR(20), IN `Gender` ENUM('M','F','O'), IN `DateOfBirth` DATE, IN `NewEmail` VARCHAR(255), IN `LeaseDate` DATE, IN `NewSalary` DECIMAL(10,2), IN `NewJob` VARCHAR(255), IN `NewBranch` VARCHAR(256), IN `NewManager` VARCHAR(256))   BEGIN
    IF(EXISTS (SELECT * FROM Employee WHERE Employee_ID = employeeID)) THEN
        signal sqlstate '45000' set message_text = 'Existing ID';
      ELSEIF(EXISTS (SELECT * FROM Employee WHERE UserName = NewUserName)) THEN
        signal sqlstate '45000' set message_text = 'Existing User Name';
      ELSEIF(EXISTS (SELECT * FROM Employee WHERE Phone_Number = NewPhoneNumber)) THEN
        signal sqlstate '45000' set message_text = 'Existing Phone Number';
      ELSEIF (SELECT LENGTH(NewPhoneNumber) <> 10 || NewPhoneNumber NOT REGEXP "^0[0-9]{9}") THEN
        signal sqlstate '45000' set message_text = 'Invalid Phone Number';
      ELSEIF (CHAR_LENGTH(NewUserName) < 8 || CHAR_LENGTH(NewUserName) > 30) THEN
          SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid User Name';
      ELSEIF (CHAR_LENGTH(NewPassword) < 8 || CHAR_LENGTH(NewPassword) > 30) THEN
          SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid Password';
      ELSEIF NOT EXISTS (SELECT * FROM Employee WHERE Employee_ID = NewManager) THEN
          SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Manager Not Found';
      ELSEIF NOT EXISTS (SELECT * FROM Branch WHERE Branch_ID = NewBranch) THEN
          SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Branch Not Found';
      ELSE
          INSERT INTO Employee (Employee_ID,UserName, Password, Name, Phone_Number, DoB, Sex, Email, Date_of_Lease, Salary, Job_Type, Branch_ID, Manager_ID) 
          VALUES (employeeID, NewUserName, NewPassword, NewName, NewPhoneNumber, DateOfBirth, Gender, NewEmail, LeaseDate, NewSalary, NewJob, NewBranch, NewManager);
      END IF;
  END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteEmployee` (IN `employeeID` VARCHAR(256))   BEGIN
    -- Check if the employee exists
    IF EXISTS (SELECT * FROM Employee WHERE Employee_ID = employeeID) THEN
        -- Delete the employee
        DELETE FROM Employee WHERE Employee_ID = employeeID;
        SELECT 'Employee deleted successfully' AS Result;
    ELSE
        SELECT 'Employee not found' AS Result;
    END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `FilterTotalSalary` (IN `salaryThreshold` DECIMAL(10,2))   BEGIN
    DECLARE tempTableExists INT;
    DECLARE tempIncomeTableExists INT;

    -- Check if the temporary table exists
    SELECT COUNT(*)
    INTO tempTableExists
    FROM information_schema.tables
    WHERE table_name = 'BranchTotalSalary';

    SELECT COUNT(*)
    INTO tempIncomeTableExists
    FROM information_schema.tables
    WHERE table_name = 'BranchTotalIncome';

    IF tempTableExists > 0 THEN
        -- Drop the temporary table
        DROP TEMPORARY TABLE BranchTotalSalary;
    END IF;

    IF tempIncomeTableExists > 0 THEN
        -- Drop the temporary table
        DROP TEMPORARY TABLE BranchTotalIncome;
    END IF;

    -- Create a temporary table to store branch-wise total salary
    CREATE TEMPORARY TABLE IF NOT EXISTS BranchTotalSalary (
        BranchID VARCHAR(256),
        TotalSalary DECIMAL(10, 2)
    );

    CREATE TEMPORARY TABLE IF NOT EXISTS BranchTotalIncome (
        BranchID VARCHAR(256),
        TotalIncome DECIMAL(10, 2)
    );

    -- Calculate and insert total salary for each branch into the temporary table
    INSERT INTO BranchTotalSalary (BranchID, TotalSalary)
    SELECT e.Branch_ID, SUM(e.Salary) AS TotalSalary
    FROM Employee e
    GROUP BY e.Branch_ID;

    -- Calculate and insert total income for each branch into the temporary table
    INSERT INTO BranchTotalIncome (BranchID, TotalIncome)
    SELECT Branch_ID, SUM(b.Total_Price)
    FROM `Order` o 
    JOIN Bill b ON o.Order_ID = b.Order_ID
    GROUP BY o.Branch_ID;

    -- Display branches where the total salary is greater than the specified value
    SELECT b.Branch_ID, b.Name, b.Province, b.District, b.Ward, b.Street, ts.TotalSalary, inc.TotalIncome
    FROM Branch b
    JOIN BranchTotalSalary ts ON b.Branch_ID = ts.BranchID
    JOIN BranchTotalIncome inc ON b.Branch_ID = inc.BranchID
    WHERE ts.TotalSalary > salaryThreshold;

    -- Drop the temporary table
    DROP TEMPORARY TABLE IF EXISTS BranchTotalSalary;
    DROP TEMPORARY TABLE IF EXISTS BranchTotalIncome;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ShowOrderDetail` (IN `billID` VARCHAR(256))   BEGIN
    DECLARE tempProductTableExists INT;
    DECLARE tempComboTableExists INT;

    -- Check if the temporary table exists
    SELECT COUNT(*)
    INTO tempProductTableExists
    FROM information_schema.tables
    WHERE table_name = 'ProductInOrder';

    SELECT COUNT(*)
    INTO tempComboTableExists
    FROM information_schema.tables
    WHERE table_name = 'ComboInOrder';

    IF tempProductTableExists  > 0 THEN
        -- Drop the temporary table
        DROP TEMPORARY TABLE ProductInOrder;
    END IF;

    IF tempComboTableExists > 0 THEN
        -- Drop the temporary table
        DROP TEMPORARY TABLE ComboInOrder;
    END IF;

    CREATE TEMPORARY TABLE IF NOT EXISTS ProductInOrder (
        ProductID VARCHAR(256),
        ProductName VARCHAR(255),
        ProductPrice DECIMAL (10,2),
        OnCartQuantity INT,
        TotalPrice DECIMAL(10,2)
    );

    CREATE TEMPORARY TABLE IF NOT EXISTS ComboInOrder (
        ComboID VARCHAR(256),
        ComboName VARCHAR(255),
        ComboPrice DECIMAL (10,2),
        OnCartQuantity INT,
        TotalPrice DECIMAL(10,2)
    );

    INSERT INTO ProductInOrder (ProductID, ProductName, ProductPrice, OnCartQuantity, TotalPrice)
    SELECT p.Product_ID, p.Name, p.Price, ol.Quantity, ol.Total_Price
    FROM Bill b
    JOIN Order_Line ol ON b.Order_ID = ol.Order_ID
    JOIN Item i ON ol.Item_ID = i.Item_ID
    JOIN Product p ON i.Product_ID = p.Product_ID
    WHERE b.Bill_ID = billID;

    INSERT INTO ComboInOrder (ComboID, ComboName, ComboPrice, OnCartQuantity, TotalPrice)
    SELECT c.Combo_ID, c.Name, c.Price, ol.Quantity, ol.Total_Price
    FROM Bill b
    JOIN Order_Line ol ON b.Order_ID = ol.Order_ID
    JOIN Item i ON ol.Item_ID = i.Item_ID
    JOIN Combo c ON i.Combo_ID = c.Combo_ID
    WHERE b.Bill_ID = billID;

    SELECT * FROM `ProductInOrder`
    UNION ALL
    SELECT * FROM `ComboInOrder`;

    DROP TEMPORARY TABLE IF EXISTS ProductInOrder;
    DROP TEMPORARY TABLE IF EXISTS ComboInOrder;


END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateEmployee` (IN `employeeID` VARCHAR(256), IN `NewName` VARCHAR(255), IN `NewPhone` VARCHAR(20), IN `Gender` ENUM('M','F','O'), IN `DateOfBirth` DATE, IN `NewEmail` VARCHAR(255), IN `LeaseDate` DATE, IN `NewSalary` DECIMAL(10,2), IN `NewJob` VARCHAR(255), IN `NewBranch` VARCHAR(256), IN `NewManager` VARCHAR(256))   BEGIN
    -- Check if the employee exists
    IF EXISTS (SELECT * FROM Employee WHERE Employee_ID = employeeID) THEN
        -- Update the employee information
        UPDATE Employee
        SET Name = NewName,
            Phone_Number = NewPhone,
            SEX = Gender,
            DoB = DateOfBirth,
            Email = NewEmail,
            Date_of_Lease = LeaseDate,
            Salary = NewSalary,
            Job_Type = NewJob,
            Branch_ID = NewBranch,
            Manager_ID = NewManager 
        WHERE Employee_ID = employeeID AND EXISTS(SELECT * FROM Employee WHERE Employee_ID = NewManager) AND EXISTS(SELECT * FROM Branch WHERE Branch_ID = NewBranch);
        
        SELECT 'Employee information updated successfully' AS Result;
    ELSE
        SELECT 'Employee not found' AS Result;
    END IF;
END$$

DELIMITER ;

-- --------------------------------------------------------

-- Top 10 sản phẩm bán chạy nhất
DELIMITER $$

CREATE PROCEDURE Top10_Items(IN start_date DATE, IN end_date DATE, IN branch_id VARCHAR(256))
BEGIN
    SELECT ol.Item_ID, p.Name AS Product_Name, SUM(ol.Total_Price) AS Total_Revenue
    FROM Order_Line ol
    JOIN `Order` o ON ol.Order_ID = o.Order_ID
    JOIN Item i ON ol.Item_ID = i.Item_ID
    JOIN Product p ON i.Product_ID = p.Product_ID
    WHERE o.Order_Date >= start_date AND o.Order_Date <= end_date
      AND o.Branch_ID = branch_id
    GROUP BY ol.Item_ID
    ORDER BY Total_Revenue DESC
    LIMIT 10;
END$$

DELIMITER ;


-- ##################### TRIGGER #######################
DELIMITER $$

CREATE TRIGGER add_bill AFTER UPDATE ON `Order`
FOR EACH ROW
BEGIN
		DECLARE return_bill DECIMAL(10,2);
		IF OLD.Status = 'PROCESSING' AND NEW.Status = 'CONFIRMED' THEN
        
        
        -- Gọi hàm để tính toán Total_Bill
        SET return_bill = Calculate_Total_Bill(NEW.Order_ID);

        -- Insert vào bảng Bill
        INSERT INTO Bill (Bill_ID, Order_ID, Bill_Date, Total_Bill)
        VALUES (CONCAT('HD', SUBSTRING(NEW.Order_ID, 3)), NEW.Order_ID, CURDATE(), return_bill);
    END IF;
END$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;





    
  

