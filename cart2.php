<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ Hàng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa;
        }

        main {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .card {
            margin-bottom: 20px;
        }

        .card-title {
            font-size: 1.5rem;
        }

        .card-text {
            color: #6c757d;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>

    <main class="container py-5">
        <h1 class="text-center mb-4">Giỏ Hàng</h1>

        <?php
        require_once('db_connection.php');

        $conn = OpenCon();

        $customerID = 'your_customer_id';
        $orderQuery = "SELECT * FROM `Order` WHERE Customer_ID = '$customerID'";
        $orderResult = $conn->query($orderQuery);

        if ($orderResult->num_rows > 0) {
            while ($order = $orderResult->fetch_assoc()) {
                $orderID = $order['Order_ID'];
                $orderStatus = $order['Status'];
                $orderTotalPrice = $order['Total_Price'];

                echo "<div class='card'>
                        <div class='card-body'>
                            <h5 class='card-title'>Đơn Hàng #$orderID</h5>
                            <p class='card-text'>Trạng Thái: $orderStatus</p>
                            <p class='card-text'>Tổng Giá: $orderTotalPrice Đ</p>
                            <button class='btn btn-primary' onclick='showPaymentModal($orderID)'>Thanh Toán</button>
                        </div>
                      </div>";
            }
        } else {
            echo "<p>Không có đơn hàng nào trong giỏ hàng của bạn.</p>";
        }

        CloseCon($conn);
        ?>

        <div class="modal fade" id="paymentModal" tabindex="-1" aria-labelledby="paymentModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <!-- Nội dung modal sẽ được cập nhật bằng JavaScript -->
                </div>
            </div>
        </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script>
        function showPaymentModal(orderID) {
            var xhr = new XMLHttpRequest();
            xhr.open('GET', 'get_payment_modal.php?orderID=' + orderID, true);
            xhr.onload = function () {
                if (xhr.status >= 200 && xhr.status < 300) {
                    document.querySelector('.modal-content').innerHTML = xhr.responseText;
                    $('#paymentModal').modal('show');
                } else {
                    console.error('Yêu cầu thất bại. Mã lỗi: ' + xhr.status);
                }
            };
            xhr.onerror = function () {
                console.error('Có lỗi khi kết nối đến máy chủ.');
            };
            xhr.send();
        }
    </script>

</body>

</html>
