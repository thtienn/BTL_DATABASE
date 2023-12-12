<!doctype html>
<html lang='en'>

<head>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <title>F&B</title>
    <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css' rel='stylesheet' integrity='sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65' crossorigin='anonymous'>
</head>

<body>
    <?php
    require_once(__DIR__ . '\db_connection.php');

    function getOrderList() {
        $conn = OpenCon();

        $query = "SELECT Order_ID, Status FROM `Order` WHERE Status = 'PROCESSING';";
        $result = $conn->query($query);

        $orderList = array();

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $orderList[] = $row['Order_ID'];
            }
        }

        CloseCon($conn);

        return $orderList;
    }

    $orderList = getOrderList();
    ?>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var addToCartButtons = document.querySelectorAll('.addToCartBtn');

            addToCartButtons.forEach(function (button) {
                button.addEventListener('click', function () {
                    var productID = button.getAttribute('ProduceID');
                    addToCart(productID);
                });
            });

            function addToCart(productID) {
                var userNote = prompt("Nhập ghi chú (nếu có):");
                var selectedOrder = prompt('Chọn đơn hàng:', '<?php echo implode("', '", $orderList); ?>');

                if (selectedOrder && <?php echo in_array($selectedOrder, $orderList) ? 'true' : 'false'; ?>) {
                    addProductToExistingOrder(productID, userNote, selectedOrder);
                } else {
                    var createNewOrder = confirm('Bạn muốn tạo đơn hàng mới?');
                    if (createNewOrder) {
                        createNewOrderAndAddProduct(productID, userNote);
                    } else {
                        alert('Sản phẩm không được thêm vào đơn hàng.');
                    }
                }
            }

            function addProductToExistingOrder(productID, userNote, selectedOrder) {
                var xhr = new XMLHttpRequest();
                xhr.open('POST', 'add_to_order.php', true);
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

                xhr.onload = function () {
                    if (xhr.status >= 200 && xhr.status < 300) {
                        var response = xhr.responseText;
                        console.log('Phản hồi từ máy chủ:', response);
                        alert('Sản phẩm đã được thêm vào giỏ hàng!');
                    } else {
                        console.error('Yêu cầu thất bại. Mã lỗi: ' + xhr.status);
                    }
                };

                xhr.onerror = function () {
                    console.error('Có lỗi khi kết nối đến máy chủ.');
                };

                var data = 'productID=' + productID + '&userNote=' + userNote + '&selectedOrder=' + selectedOrder;
                xhr.send(data);
            }

            function createNewOrderAndAddProduct(productID, userNote) {
                var xhr = new XMLHttpRequest();
                xhr.open('POST', 'create_new_order.php', true);
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

                xhr.onload = function () {
                    if (xhr.status >= 200 && xhr.status < 300) {
                        var newOrderID = xhr.responseText;
                        addProductToExistingOrder(productID, userNote, newOrderID);
                    } else {
                        console.error('Yêu cầu thất bại. Mã lỗi: ' + xhr.status);
                    }
                };

                xhr.onerror = function () {
                    console.error('Có lỗi khi kết nối đến máy chủ.');
                };

                xhr.send();
            }
        });
    </script>
    <main>

        <section class='py-5 text-center container'>
            <div class='row py-lg-5'>
                <div class='col-lg-6 col-md-8 mx-auto'>
                    <h1 class='fw-light'>Trang bán hàng chính</h1>
                    <p class='lead text-muted'>Ở đây sẽ liệt kê các sản phẩm chính của trang web, bao gồm cả ảnh vào nhà hàng đang chế biến nó</p>
                    <p>
                        <a href='../cart2.php' class='btn btn-primary my-2'>Đến giỏ hàng</a>
                        <a href='../' class='btn btn-secondary my-2'>Trở lại đăng nhập</a>
                    </p>
                </div>
            </div>
        </section>

        <div class='album py-5 bg-light'>
            <div class='container'>

                <div class='row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3'>
                    <?php
                    require_once('db_connection.php');

                    $conn = OpenCon();
                    $query = "SELECT * FROM Product;";

                    $result = $conn->query($query);

                    if ($result->num_rows > 0) {
                        // OUTPUT DATA OF EACH ROW
                        while ($row = $result->fetch_assoc()) {
                            $Product_ID = $row['Product_ID'];
                            $Name = $row['Name'];
                            $Description = $row['Description'];
                            $Price = $row['Price'];
                            $query = "SELECT * FROM `Product` WHERE Product_ID = '$Product_ID';";

                            $result1 = $conn->query($query);
                            $result2 = $result1->fetch_assoc()['Photo'];
                            
                            echo "<div class='col'>
    <div class='card shadow-sm'>
        <img src='$result2' alt=''>

        <div class='card-body'>
            <h4 class='card-title'>$Name</h4>
            <p class='card-text'>$Description</p>
            <div class='d-flex justify-content-between align-items-center'>
                <div class='btn-group'>
                    <button type='button' class='btn btn-outline-secondary'><a href='view_detail/index.php?Product_ID=$Product_ID'>Xem</a></button>
                </div>
                <div>
                    <button onclick=\"addToCart('$Name', $Price)\">Thêm vào đơn hàng</button>
                </div>
                <div class='text-muted text-bold align-middle'>Giá: $Price Đ</div>
            </div>
        </div>
    </div>
</div>";
                        }
                    }

                    $query = "SELECT * FROM `Combo`;";

                    $result = $conn->query($query);

                    if ($result->num_rows > 0) {
                        // OUTPUT DATA OF EACH ROW
                        while ($row = $result->fetch_assoc()) {
                            $Product_ID = $row['Combo_ID'];
                            $Name = $row['Name'];
                            $Description = $row['Description'];
                            $Price = $row['Price'];
                            $query = "SELECT * FROM `Combo` WHERE Combo_ID = '$Product_ID';";

                            $result1 = $conn->query($query);
                            $result2 = $result1->fetch_assoc()['Photo'];
                            
                            echo "<div class='col'>
                            <div class='card shadow-sm'>
                                <img src='$result2' alt=''>
                        
                                <div class='card-body'>
                                    <h4 class='card-title'>$Name</h4>
                                    <p class='card-text'>$Description</p>
                                    <div class='d-flex justify-content-between align-items-center'>
                                        <div class='btn-group'>
                                            <button type='button' class='btn btn-outline-secondary'><a href='view_detail/index.php?Product_ID=$Product_ID'>Xem</a></button>
                                        </div>
                                        <div>
                                            <button onclick=\"addToCart('$Name', $Price)\">Thêm vào đơn hàng</button>
                                            <div class='text-muted text-bold align-middle'>Giá: $Price Đ</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>";
                                    }
                                }
                                ?>
                            </div>
                        </div>
                    </div>
            
                </main>
                <script src='https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js' integrity='sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4' crossorigin='anonymous'></script>
            </body>
            
            </html>