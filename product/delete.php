<?php
require_once('db_connection.php');
$Product_ID = $_POST['Product_ID'];

$conn = OpenCon();
$query = "CALL Delete_Product('$Product_ID')";

if ($conn->query($query) === TRUE) {
    echo "Successfully";
    header('Location: index.php');
} else {
    echo "Error: " . $query . "<br>" . $conn->error;
    header('Location: index.php?err=' . $conn->error);
}
