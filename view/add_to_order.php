<?php

require_once('db_connnection.php');
$conn = OpenCon();

$productID = $_POST['productID'];
$Name = $_POST['productName'];
$price = $_POST['price'];
$userNote = $_POST['userNote'];

$query = "INSERT INTO Order (Product_ID, Name, Price, Note) VALUES ('$productID', '$Name', '$price', '$userNote')";
$result = $conn->query($query);

// Kiểm tra và thông báo kết quả
if ($result) {
    echo "Sản phẩm đã được thêm vào đơn hàng thành công!";
} else {
    echo "Có lỗi khi thêm sản phẩm vào đơn hàng: " . $conn->error;
}

// Đóng kết nối
CloseCon($conn);
?>
