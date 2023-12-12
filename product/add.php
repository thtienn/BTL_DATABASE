<?php
require_once('db_connection.php');
$Name = $_POST['Name'];
$Product_ID = $_POST['Product_ID'];
$Description = $_POST['Description'];
$Size = $_POST['Size'];
$Price = $_POST['Price'];

$conn = OpenCon();
$query = "CALL Add_Product('$Name', '$Product_ID', '$Description,', '$Size','$Price');";

if ($conn->query($query) === TRUE) {
    echo "New record created successfully";
    header('Location: index.php');
} else {
    echo "Error: " . $query . "<br>" . $conn->error;
    header('Location: index.php?err=' . $conn->error);
}
