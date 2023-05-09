USE QuanLyBanHang;

-- Hiển thị các thông tin OrderCustomer--
SELECT * FROM OrderCustomer;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách--
SELECT C.cName, P.pName
FROM Customer AS C JOIN OrderCustomer AS O ON C.cID = O.cID
				   JOIN OrderDetail AS OD ON O.oID = OD.oID
                   JOIN Product AS P ON OD.pID = P.pID;
                   
-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào--
SELECT C.cName
FROM Customer AS C LEFT JOIN OrderCustomer O ON C.cID = O.cID
WHERE O.cID IS NULL;

-- Hiển thị mã hóa đơn, ngày bán và --
-- giá tiền của từng hóa đơn --
-- (giá một hóa đơn được tính bằng --
-- tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)--
SELECT O.oID, O.oDate, SUM(OD.odQTY*P.pPrice) AS TotalPrice
FROM OrderCustomer AS O  JOIN OrderDetail AS OD ON O.oID = OD.oID
					     JOIN Product P ON OD.pID = P.pID
GROUP BY O.oID;