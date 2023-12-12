<?php
require_once('db_connection.php');
if (isset($_GET['Product_ID'])) {
    $conn = OpenCon();
    $maMonAn = $_GET['Product_ID'];
    

    // Use prepared statements to prevent SQL injection
    $query = "SELECT * FROM `Product` WHERE Product_ID = ?;";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("s", $maMonAn);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // OUTPUT DATA OF EACH ROW
        while ($row = $result->fetch_assoc()) {
            $maMonAn = $row['Product_ID'];
            $tenMonAn = $row['Name'];
            $moTaMonan = $row['Description'];
            $giaNiemYet = $row['Price'];
            $size = $row['Size'];
            $category = $row['Category'];

            // Fetching the image path directly from the row
            $result2 = $row['Photo'];
            echo "<header>
                <meta charset='utf-8'>
                <meta name='viewport' content='width=device-width, initial-scale=1'>
                <title>Detail</title>
                </header>";
            echo "<div class='card'>
                <img src='$result2' class='card-img-top' alt=''>
                <div class='card-body'>
                    <h5 class='card-title'>$tenMonAn</h5>
                    <p class='card-text'>$moTaMonan</p>
                    <p class='card-text'>Price: $giaNiemYet</p>
                    <p class='card-text'>Size: $size</p>
                    <p class='card-text'>Category: $category</p>
                    <a href='../' class='btn btn-primary'>Trở về trang danh sách sản phẩm</a>
                </div>
            </div>";
        }
    } else {
        echo "No data found for the specified Product_ID.";
    }

    // Close the prepared statement and database connection
    $stmt->close();
    CloseCon($conn);
}
?>