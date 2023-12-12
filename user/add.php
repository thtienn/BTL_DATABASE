<?php
    require_once('db_connection.php');

    if(isset($_POST['submit'])) {
        $maNhanVien = $_POST['maNhanVien'];
        $tenDangNhap = $_POST['tenDangNhap'];
        $password = $_POST['password'];
        $tenNhanVien = $_POST['tenNhanVien'];
        $sdt = $_POST['sdt'];
        $gioitinh = $_POST['gioiTinh'];
        $ngaySinh = $_POST['dob'];
        $email = $_POST['email'];
        $hopDong = $_POST['leaseDate'];
        $mucLuong = $_POST['salary'];
        $viTri = $_POST['work-position'];
        $cuaHang = $_POST['store'];
        $quanLy = $_POST['manager'];
        
        $conn = OpenCon();
        $query = "CALL Add_new_employee('$maNhanVien', '$tenDangNhap', '$password', '$tenNhanVien', '$sdt', '$gioitinh', '$ngaySinh', '$email', '$hopDong', '$mucLuong', '$viTri', '$cuaHang', '$quanLy');";

        if ($conn->query($query) === TRUE) {
            echo "New record created successfully";
            header('Location: index.php');
        } else {
            echo"quametmoiroi";
            echo $ngaySinh;
            echo "Error: " . $query . "<br>" . $conn->error;
            header('Location: index.php?err=' . $conn->error);
        }
    }
    