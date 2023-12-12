<?php
require_once('product/db_connnection.php');
$username = $_POST['username'];
$password = $_POST['password'];

if ($username === 'admin' && $password === 'all-time-panic-admin') {
    echo "New record created successfully";
    header('Location: user');
}
else {
    $conn = OpenCon();
    $query = "SELECT * FROM `Customer` WHERE `UserName` = '$username' AND `Password` = '$password'";
    $result = mysqli_query($conn, $query);
    $check = mysqli_fetch_array($result);
    $customerInfo = mysqli_fetch_assoc($result);
        if (isset($check)) {
            session_start();
            $_SESSION['customerId'] = $customerInfo['Customer_ID'];
            echo "New record created successfully";
            header('Location: view');
        }
        else {
            echo "Error: " . $query . "<br>" . $conn->error;
            $err = "Invalid User Name or Password";
            header('Location: index.php?err=' . $err);
        }
    
}


?>
