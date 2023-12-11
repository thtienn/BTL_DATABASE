<?php
require_once('db_connection.php');

// Kiểm tra xem có dữ liệu được gửi từ trang sản phẩm không
if (isset($_POST['productID']) && isset($_POST['userNote']) && isset($_POST['selectedOrder'])) {
    $productID = $_POST['productID'];
    $userNote = $_POST['userNote'];
    $selectedOrder = $_POST['selectedOrder'];

    // Gọi hàm thêm sản phẩm vào đơn hàng
    addToOrder($productID, $userNote, $selectedOrder);
} else {
    // Nếu không có dữ liệu, trả về mã lỗi
    http_response_code(400);
    echo 'Invalid data';
}

function addToOrder($productID, $userNote, $selectedOrder) {
    $conn = OpenCon();

    // Thực hiện thêm sản phẩm vào đơn hàng
    $query = "INSERT INTO Order_Line (Order_ID, Item_ID, Quantity, Total_Price)
              VALUES (?, ?, 1, (SELECT Price FROM Product WHERE Product_ID = ?))";

    $stmt = $conn->prepare($query);
    $stmt->bind_param("sss", $selectedOrder, $productID, $productID);

    if ($stmt->execute()) {
        // Thêm ghi chú vào đơn hàng (Order)
        $updateOrderQuery = "UPDATE `Order` SET Note = ? WHERE Order_ID = ?";
        $updateOrderStmt = $conn->prepare($updateOrderQuery);
        $updateOrderStmt->bind_param("ss", $userNote, $selectedOrder);
        
        if ($updateOrderStmt->execute()) {
            echo 'Product added to order successfully';
        } else {
            echo 'Failed to update order note';
        }
    } else {
        echo 'Failed to add product to order';
    }

    CloseCon($conn);
}
?>
