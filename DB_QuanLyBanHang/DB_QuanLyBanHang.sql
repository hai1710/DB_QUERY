USE QuanLyBanHang;

-- Đưa dữ liệu vào bảng Customer--
INSERT INTO Customer (cName, cAge)
VALUES ('Minh Quan',10),
	   ('Ngoc Oanh', 20),
       ('Hong Ha',50);

-- Đưa dữ liệu vào bảng OrderCustomer--
INSERT INTO OrderCustomer (cID, oDate)
VALUES (1,'2006-03-21'),
	   (2, '2006-03-23'),
       (1, '2006-03-16');
       
-- Đưa dữ liệu vào bảng Product--
INSERT INTO Product (pName,pPrice)
VALUES ('May Giat',3),
       ('Tu Lanh',5),
       ('Dieu Hoa',7),
       ('Quat',1),
       ('Bep Dien',2);
              
-- Đưa dữ liệu vào bảng OrderDetail--
INSERT INTO OrderDetail
VALUES (1,1,3),
	   (1,3,7),
       (1,4,2),
       (2,1,1),
       (3,1,8),
       (2,5,4),
       (2,3,3)