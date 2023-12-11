<?php
require_once('db_connection.php');

function getCustomerInfo($customerId) {
    $conn = OpenCon();

    $sql = "SELECT * FROM Customer WHERE Customer_ID = $customerId";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $customerInfo = $result->fetch_assoc();
        CloseCon($conn);
        return $customerInfo;
    } else {
        CloseCon($conn);
        return null;
    }
}

function getOrderItems($orderId) {
    $conn = OpenCon();

    $sql = "SELECT * FROM `Order` WHERE Order_ID = $orderId";
    $result = $conn->query($sql);

    $orderItems = [];

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $orderItems[] = $row;
        }
    }

    CloseCon($conn);

    return $orderItems;
}

function updateOrderStatus($orderId, $newStatus) {
    $conn = OpenCon();

    $sql = "UPDATE `Order` SET Status = '$newStatus' WHERE Order_ID = $orderId";
    $conn->query($sql);

    CloseCon($conn);
}

function calculateTotalBill($orderId, $promotionId = null) {
    $conn = OpenCon();

    $sql = "SELECT Calculate_Total_Bill('$orderId', '$promotionId') AS totalBill";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        CloseCon($conn);
        return $row['totalBill'];
    } else {
        CloseCon($conn);
        return null;
    }
}

function cancelOrder($orderId) {
    // Hàm này sẽ được gọi khi người dùng muốn hủy đơn hàng

    // Lấy thông tin chi tiết đơn hàng
    $orderDetails = getOrderDetails($orderId);

    if ($orderDetails) {
        if ($orderDetails['Status'] === 'Processing') {
            updateOrderStatus($orderId, 'Cancelled');
            echo "Đơn hàng đã được hủy thành công.";
        } else {
            echo "Không thể hủy đơn hàng vì trạng thái không đúng.";
        }
    } else {
        echo "Không tìm thấy thông tin đơn hàng.";
    }
}

function confirmOrder($orderId) {
    $orderDetails = getOrderDetails($orderId);

    if ($orderDetails) {
        if ($orderDetails['Status'] === 'Processing') {
            updateOrderStatus($orderId, 'Confirmed');
            echo "Đơn hàng đã được xác nhận thành công.";
        } else {
            echo "Không thể xác nhận đơn hàng vì trạng thái không đúng.";
        }
    } else {
        echo "Không tìm thấy thông tin đơn hàng.";
    }
}

function completeOrder() {
    $orderId = $_POST['Order_ID'];
    updateOrderStatus($orderId, 'completed');
    echo "<script>";
    echo "alert('Đơn hàng đã được thanh toán và hoàn tất!');";
    echo "location.reload();"; 
    echo "</script>";
}

function closeModal() {
    echo "<script>";
    echo "var modal = document.getElementById('orderDetailsModal');";
    echo "modal.style.display = 'none';";
    echo "</script>";
}

function getProvinces() {
    $conn = OpenCon();
    $sql = "SELECT DISTINCT Province FROM Customer WHERE Province IS NOT NULL";
    $result = $conn->query($sql);

    $provinces = [];
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $provinces[] = $row['Province'];
        }
    }
    CloseCon();
    return $provinces;
}

function getDistricts($province) {
    $conn = OpenCon();
    $sql = "SELECT DISTINCT District FROM Customer WHERE Province = '$province' AND District IS NOT NULL";
    $result = $conn->query($sql);

    $districts = [];
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $districts[] = $row['District'];
        }
    }
    CloseCon();
    return $districts;
}

function getWards($province, $district) {
    $conn = OpenCon();
    $sql = "SELECT DISTINCT Ward FROM Customer WHERE Province = '$province' AND District = '$district' AND Ward IS NOT NULL";
    $result = $conn->query($sql);

    $wards = [];
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $wards[] = $row['Ward'];
        }
    }
    CloseCon();
    return $wards;
}

function getStreets($province, $district, $ward) {
    $conn = OpenCon();
    $sql = "SELECT DISTINCT Street FROM Customer WHERE Province = '$province' AND District = '$district' AND Ward = '$ward' AND Street IS NOT NULL";
    $result = $conn->query($sql);

    $streets = [];
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $streets[] = $row['Street'];
        }
    }
    CloseCon();
    return $streets;
}

function getPhoneNumbers() {
    $conn = OpenCon();
    $sql = "SELECT DISTINCT Phone FROM Customer WHERE Phone IS NOT NULL";
    $result = $conn->query($sql);

    $phoneNumbers = [];
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $phoneNumbers[] = $row['Phone'];
        }
    }
    CloseCon();
    return $phoneNumbers;
}

$conn = OpenCon();

echo "
<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Giỏ hàng</title>
    <link rel='stylesheet' href='styles.css'>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        main {
            max-width: 800px;
            margin: 20px auto;
        }

        .cart {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }

        .order {
            border: 1px solid #ddd;
            padding: 10px;
            cursor: pointer;
            width: 200px;
            text-align: center;
            transition: transform 0.2s ease-in-out;
        }

        .order:hover {
            transform: scale(1.05);
        }

        .modal {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 80%;
    max-width: 600px;
    background-color: #fff;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    z-index: 1000;
}

.modal-content {
    max-height: 400px;
    overflow-y: auto;
}

.close {
    position: absolute;
    top: 10px;
    right: 10px;
    cursor: pointer;
    font-size: 18px;
}
    </style>
</head>
<body>
    <div id='cart'>";

$sql = "SELECT * FROM `Order`";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<div class='order' onclick='viewOrderDetails(" . $row['OrderID'] . ")'>";
        echo "<p>OrderID: <span>" . $row['OrderID'] . "</span></p>";
        echo "</div>";
    }
} else {
    echo "0 results";
}

echo "</div>";

CloseCon($conn);

?>

<div id="orderDetailsModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <h2>Thông tin đơn hàng</h2>
        <form id="orderDetailsForm">
            <?php
            if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['viewOrder'])) {
                $orderId = $_POST['Order_ID'];
                $orderStatus = $_POST['Status'];

                $customerInfo = getCustomerInfo($orderId);
                $orderItems = getOrderItems($orderId);
                $selectedPromotion = isset($_POST['promo']) ? $_POST['promo'] : null;

                echo "<label for='promo'>Khuyến mãi, giảm giá:</label>";
                echo "<select id='promo' name='promo'>";

                $conn = OpenCon();
                $sqlPromotions = "SELECT Name, Discount_Value, Discount_Method FROM Promotion";
                $resultPromotions = $conn->query($sqlPromotions);

                if ($resultPromotions->num_rows > 0) {
                    while ($rowPromo = $resultPromotions->fetch_assoc()) {
                        $selected = ($rowPromo['Name'] == $selectedPromotion) ? 'selected' : '';
                        echo "<option value='" . $rowPromo['Name'] . "' $selected>";
                        echo $rowPromo['Name'] . " - ";
                        echo "Giá trị giảm: " . $rowPromo['Discount_Value'] . "% ";
                        echo "Hình thức: " . $rowPromo['Discount_Method'] . " ";
                        echo "</option>";
                    }
                } else {
                    echo "<option value=''>Không có chương trình khuyến mãi</option>";
                }
                echo "</select>";
                CloseCon();

                echo "<label for='delivery'>Đơn vị vận chuyển:</label>";
                echo "<select id='delivery' name='delivery'>";
                echo "<option value='" . $customerInfo['Delivery_ID'] . "'>" . $customerInfo['Name'] . " - Freight: $" . $customerInfo['Freight'] . "</option>";

                $conn = OpenCon();
                $sqlDeliveries = "SELECT Delivery_ID, Name, Freight FROM Delivery";
                $resultDeliveries = $conn->query($sqlDeliveries);

                if ($resultDeliveries->num_rows > 0) {
                    while ($rowDelivery = $resultDeliveries->fetch_assoc()) {
                        echo "<option value='" . $rowDelivery['Delivery_ID'] . "'>" . $rowDelivery['Name'] . " - Freight: $" . $rowDelivery['Freight'] . "</option>";
                    }
                } else {
                    echo "<option value=''>Không có đơn vị vận chuyển hỗ trợ</option>";
                }
                echo "</select>";
                CloseCon();

                echo "<label for='paymentMethod'>Phương thức thanh toán:</label>";
                echo "<select id='paymentMethod' name='paymentMethod'>";
                echo "<option value='CASH'>CASH</option>";
                echo "<option value='MOMO'>MOMO</option>";
                echo "<option value='BANKING'>BANKING</option>";
                echo "</select>";

                $provinces = getProvinces();
                $districts = getDistricts($selectedProvince); 
                $wards = getWards($selectedProvince, $selectedDistrict); 
                $streets = getStreets($selectedProvince, $selectedDistrict, $selectedWard);

                echo "<label for='province'>Thành phố:</label>";
                echo "<select id='province' name='province'>";
                foreach ($provinces as $province) {
                    echo "<option value='$province'>$province</option>";
                }
                echo "</select>";

                echo "<label for='district'>District:</label>";
                echo "<select id='district' name='district'>";
                foreach ($districts as $district) {
                    echo "<option value='$district'>$district</option>";
                }
                echo "</select>";

                echo "<label for='ward'>Ward:</label>";
                echo "<select id='ward' name='ward'>";
                foreach ($wards as $ward) {
                    echo "<option value='$ward'>$ward</option>";
                }
                echo "</select>";

                echo "<label for='street'>Street:</label>";
                echo "<select id='street' name='street'>";
                foreach ($streets as $street) {
                    echo "<option value='$street'>$street</option>";
                }
                echo "</select>";

                $phoneNumbers = getPhoneNumbers();

                echo "<label for='phone'>Phone:</label>";
                echo "<select id='phone' name='phone'>";
                foreach ($phoneNumbers as $phoneNumber) {
                    echo "<option value='$phoneNumber'>$phoneNumber</option>";
                }
                echo "</select>";

                $totalBill = calculateTotalBill($orderId, $selectedPromotion);

                echo "<p>Total Price: <span>" . $totalBill . "</span></p>";
                
                if ($orderStatus === "Confirmed") {
                    echo "<button type='button' onclick='completeOrder()'>Thanh toán</button>";
                }
            }
            ?>
            <button type="button" onclick="cancelOrder()">Hủy đơn hàng</button>
            <button type="button" onclick="confirmOrder()">Xác nhận đơn hàng</button>
            <button type="button" onclick="closeModal()">Đóng</button>
        </form>
    </div>
</div>

<script src="script.js"></script>
</body>
</html>
