<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Food Ordering</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap5.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <a href="../../product/" class="btn btn-warning float-end mx-2">Quản lý sản phẩm</a>
        <a href="../../user" class="btn btn-warning float-end">Quản lý khách hàng</a>
        <h1 class="my-3">Manage Products</h1>
        <hr>

        <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
            <div class="mb-3">
                <label for="startDate" class="form-label">Start Date</label>
                <input type="date" class="form-control" id="startDate" name="startDate" required>
            </div>
            <div class="mb-3">
                <label for="endDate" class="form-label">End Date</label>
                <input type="date" class="form-control" id="endDate" name="endDate" required>
            </div>
            <div class="mb-3">
                <label for="branchID" class="form-label">Branch ID</label>
                <input type="text" class="form-control" id="branchID" name="branchID" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>

        <h4 class="text-primary my-4">Top sản phẩm bán chạy</h4>
        <table class="table table-striped mt-2">
                    <thead>
                            <tr>
                                <th>Mã sản phẩm</th> <!-- Added Item_ID header -->
                                <th>Tên món ăn</th>
                                <th>Doanh số</th>
                            </tr>
                        </thead>
            <tbody>
            <?php
                if ($_SERVER["REQUEST_METHOD"] == "POST") {
                    include 'top.php'; // Include the top.php file
                    $startDate = $_POST['startDate'];
                    $endDate = $_POST['endDate'];
                    $branchID = $_POST['branchID'];

                    $topProducts = getTopProducts($startDate, $endDate, $branchID);

                    if (count($topProducts) > 0) {
                        foreach ($topProducts as $product) {
                            echo "<tr class='justify-content-center'>";
                            echo "<td class='align-middle'>" . htmlspecialchars($product['Item_ID']) . "</td>";
                            echo "<td class='align-middle'>" . htmlspecialchars($product['Product_Name']) . "</td>";
                            echo "<td class='align-middle'>" . htmlspecialchars($product['Total_Revenue']) . "</td>";
                            echo "</tr>";
                        }
                    } else {
                        echo "<tr><td colspan='3'>No data found</td></tr>";
                    }
                    // It is crucial that this closing brace is here to close the if statement.
                }
                // If there were other PHP blocks of code, ensure they are also properly closed.
                ?>

            </tbody>
        </table>
    </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>
    <script src="index.js"></script>
</body>

</html>