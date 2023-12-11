<?php
require_once('db_connnection.php');

$productID = $_GET['productID'];
$conn = OpenCon();

$query = "SELECT * FROM Product WHERE Product_ID = '$productID';";
$result = $conn->query($query);

if ($result->num_rows > 0) {
    $productInfo = $result->fetch_assoc();
    echo json_encode($productInfo);
} 
?>
