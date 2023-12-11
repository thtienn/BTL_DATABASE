<?php
    require_once('db_connnection.php');

    $conn = OpenCon();
    $query = "CALL Add_khach_hang('$tenDangNhap', '$tenKhachHang', '$diaChi,', '$sdt', '$target_file', '$diemTichLuy');";

    if ($conn->query($query) === TRUE) {
        echo "New record created successfully";
        header('Location: index.php');
    } else {
        echo "Error: " . $query . "<br>" . $conn->error;
        header('Location: index.php?err=' . $conn->error);
    }
