<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Food Ordering</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/dataTables.bootstrap5.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <style>
        .form-body {
            overflow: scroll;
        }
    </style>
</head>

<body>
    <div class="container">
        <a href="../product" class="btn btn-warning float-end">Chuyển đến màn hình quản lí sản phẩm</a>
        <h1 class="my-3">Quản lý nhân viên</h1>
        <hr>
        <?php
        if (isset($_GET['err'])) {
            echo "<div class=\"alert alert-warning alert-dismissible fade show\" role=\"alert\">";
            echo "<strong>Error: </strong>" . $_GET['err'];
            echo "<button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button>";
            echo "</div>";
        }
        require_once('db_connnection.php');

                $conn = OpenCon();
                $query = "SELECT * FROM `Employee`;";

                $result = $conn->query($query);

        ?>
        <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#add">Thêm nhân viên mới</button>
        <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="add" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Thêm mới</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="add.php" method="post" enctype="multipart/form-data">
                    <div class="modal-body">
                            <div class="form-group">
                                <label>Mã số nhân viên</label>
                                <input class="form-control my-2" type="text" placeholder="NV01" name="maNhanVien" readonly />
                            </div>
                            <div class="form-group">
                                <label>Tên đăng nhập</label>
                                <input class="form-control my-2" type="text" placeholder="user_0" name="tenDangNhap" readonly />
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input class="form-control my-2" type="text" placeholder="password123" name="password" readonly />
                            </div>
                            <div class="form-group">
                                <label>Tên nhân viên</label>
                                <input class="form-control my-2" type="text" placeholder="Lê Phan Thuỷ Tiên" name="tenNhanVien" />
                            </div>

                            <div class="form-group">
                                <label>Số điện thoại</label>
                                <input class="form-control my-2" type="number" placeholder="0123456789" name="sdt" />
                            </div>

                            <div class="form-group" style="margin-bottom: 2px;">
                                <label>Giới tính</label>
                                <select name="gioiTinh" class="form-select" aria-label="Default select example">
                                    <option selected>Chọn giới tính</option>
                                    <option value="M">Nam</option>
                                    <option value="F">Nữ</option>
                                    <option value="O">Khác</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label>Ngày sinh</label>
                                <input class="form-control my-2" type="date" pattern="\d{4}-\d{2}-\d{2}" placeholder="06/03/2003" name="dob" />
                            </div>
        
                            <div class="form-group">
                                <label>Email</label>
                                <input class="form-control my-2" type="email" placeholder="panicAdmin@gmail.com" name="email" />
                            </div>

                            <div class="form-group">
                                <label>Ngày ký hợp đồng</label>
                                <input class="form-control my-2" type="date" placeholder="06/03/2022" name="leaseDate" />
                            </div>

                            <div class="form-group">
                                <label>Mức lương</label>
                                <input class="form-control my-2" type="number" placeholder="10,000,000VND" name="salary" />
                            </div>
                            
                            <div class="form-group" style="margin-bottom: 2px;">
                                <label>Vị trí</label>
                                <select name="work-position" class="form-select" aria-label="Default select example">
                                    <option selected>Chọn vị trí công việc</option>
                                    <option value="Manager">Manager</option>
                                    <option value="Cashier">Cashier</option>
                                    <option value="Chef">Chef</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Cửa hàng</label>
                                <select name="store" class="form-select" aria-label="Default select example">
                                    <option selected>Chọn cửa hàng</option>
                                    <?php
                                        $queryBranch = "SELECT * FROM `Branch`;";
                                        $resultBranch = $conn->query($queryBranch);

                                        if ($resultBranch ) {
                                            while ($rowBranch = $resultBranch->fetch_assoc()) {
                                                echo "<option value=\"{$rowBranch['Branch_ID']}\"> {$rowBranch['Name']}</option>";
                                            }
                                        }
                                    ?>
                                </select>
                            </div>

                            <div class="form-group">
                                <label>Quản lý</label>
                                <select name="manager" class="form-select" aria-label="Default select example">
                                    <option selected>Chọn quản lý</option>
                                    <?php
                                        $queryBranch = "SELECT * FROM `Employee` WHERE Job_Type = 'Manager';";
                                        $resultBranch = $conn->query($queryBranch);

                                        if ($resultBranch ) {
                                            while ($rowBranch = $resultBranch->fetch_assoc()) {
                                                echo "<option value=\"{$rowBranch['Employee_ID']}\"> {$rowBranch['Name']}</option>";
                                            }
                                        }
                                    ?>
                                </select>
                            </div>
                        
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Đóng lại</button>
                            <button class="btn btn-primary" type="submit">Thêm mới</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <button class="btn btn-info mb-3" data-bs-toggle="modal" data-bs-target="#fun">Khách hàng có điểm cao hơn ...</button>
        <div class="modal fade" id="fun" tabindex="-1" role="dialog" aria-labelledby="fun" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Khách hàng có điểm cao hơn một số nhất định</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="fun.php" method="post" enctype="multipart/form-data">
                        <div class="modal-body">
                            <div class="form-group">
                                <label>Số điểm</label>
                                <input class="form-control my-2" type="number" placeholder="Số điểm" name="soDiem" />
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Đóng lại</button>
                            <button class="btn btn-primary" type="submit">Tìm kiếm</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <table class="table table-striped mt-2" id="tab-user">
            <thead>
                <tr>
                    <th scope="col">Tên đăng nhập</th>
                    <th scope="col">Tên nhân viên</th>
                    <th scope="col">Giới tính</th>
                    <th scope="col">Ngày sinh</th>
                    <th scope="col">Email</th>
                    <th scope="col">Số điện thoại</th>
                    <th scope="col">Vị trí</th>
                    <th scope="col">Chi nhánh</th>
                    <th scope="col">Hành động</th>
                </tr>
            </thead>
            <tbody>
                <?php
                
                if ($result->num_rows > 0) {
                    // OUTPUT DATA OF EACH ROW
                    while ($row = $result->fetch_assoc()) {
                ?>
                        <tr class="justify-content-center">
                            <th class='align-middle' scope="row"><?php echo $row['UserName'] ?></th>
                            <td class='align-middle'><?php echo $row['Name'] ?></td>
                            <td class='align-middle'><?php echo $row['Sex'] ?></td>
                            <td class='align-middle'><?php echo $row['DoB'] ?></td>
                            <td class='align-middle'><?php echo $row['Email'] ?></td>
                            <td class='align-middle'><?php echo $row['Phone_Number'] ?></td>
                            <td class='align-middle'><?php echo $row['Job_Type'] ?></td>
                            <td class='align-middle'><?php echo $row['Branch_ID'] ?></td>
                            <td class='align-middle'>
                                <div class="d-inline-flex">
                                    <button type='button' class='btn-edit btn btn-primary m-1'  data-bs-target='#Edit' data-bs-toggle='modal'>Edit</button>
                                    <button type='button' class='btn-delete btn btn-danger m-1' data-bs-tenDangNhap='<?php echo $row['Employee_ID'] ?>' data-bs-target='#Delete' data-bs-toggle='modal'>Delete</button>
                                </div>
                            </td>
                        </tr>
                <?php
                    }
                }
                ?>

            </tbody>
        </table>
        <div class="modal fade" id="Edit" tabindex="-1" role="dialog" aria-labelledby="Edit" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Chỉnh sửa</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="edit.php" method="post" enctype="multipart/form-data">
                        <div class="modal-body">
                            <div class="form-group">
                                <label>Tên nhân viên</label>
                                <input class="form-control my-2" type="text" placeholder="Lê Phan Thuỷ Tiên" name="tenNhanVien" />
                            </div>

                            <div class="form-group">
                                <label>Số điện thoại</label>
                                <input class="form-control my-2" type="number" placeholder="0123456789" name="sdt" />
                            </div>

                            <div class="form-group" style="margin-bottom: 2px;">
                                <label>Giới tính</label>
                                <select class="form-select" aria-label="Default select example">
                                    <option selected>Chọn giới tính</option>
                                    <option value="M">Nam</option>
                                    <option value="F">Nữ</option>
                                    <option value="O">Khác</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label>Ngày sinh</label>
                                <input class="form-control my-2" type="date" pattern="\d{4}-\d{2}-\d{2}" placeholder="06/03/2003" name="dob" />
                            </div>
        
                            <div class="form-group">
                                <label>Email</label>
                                <input class="form-control my-2" type="email" placeholder="panicAdmin@gmail.com" name="email" />
                            </div>

                            <div class="form-group">
                                <label>Ngày ký hợp đồng</label>
                                <input class="form-control my-2" type="date" placeholder="06/03/2022" name="leaseDate" />
                            </div>

                            
                            
                            <div class="form-group" style="margin-bottom: 2px;">
                                <label>Vị trí</label>
                                <select class="form-select" aria-label="Default select example">
                                    <option selected>Chọn vị trí công việc</option>
                                    <option value="Manager">Manager</option>
                                    <option value="Cashier">Cashier</option>
                                    <option value="Chef">Chef</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Cửa hàng</label>
                                <select class="form-select" aria-label="Default select example">
                                    <option selected>Chọn cửa hàng</option>
                                    <?php
                                        $queryBranch = "SELECT * FROM `Branch`;";
                                        $resultBranch = $conn->query($queryBranch);

                                        if ($resultBranch ) {
                                            while ($rowBranch = $resultBranch->fetch_assoc()) {
                                                echo "<option value=\"{$rowBranch['Branch_ID']}\"> {$rowBranch['Name']}</option>";
                                            }
                                        }
                                    ?>
                                </select>
                            </div>

                            <div class="form-group">
                                <label>Quản lý</label>
                                <select class="form-select" aria-label="Default select example">
                                    <option selected>Chọn quản lý</option>
                                    <?php
                                        $queryBranch = "SELECT * FROM `Employee` WHERE Job_Type = 'Manager';";
                                        $resultBranch = $conn->query($queryBranch);

                                        if ($resultBranch ) {
                                            while ($rowBranch = $resultBranch->fetch_assoc()) {
                                                echo "<option value=\"{$rowBranch['Employee_ID']}\"> {$rowBranch['Name']}</option>";
                                            }
                                        }
                                    ?>
                                </select>
                            </div>
                        
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-bs-dismiss="modal">Đóng lại</button>
                            <button class="btn btn-primary" type="submit">Cập nhật</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="modal fade" id="Delete" tabindex="-1" role="dialog" aria-labelledby="Delete" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Xóa</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="delete.php" method="post">
                        <div class="modal-body">
                            <input type="text" name="tenDangNhap" class="form-control my-2" readonly />
                            <p>Bạn chắc chưa ?</p>
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-primary btn-outline-light" type="button" data-bs-dismiss="modal">Đóng lại</button>
                            <button class="btn btn-danger btn-outline-light" type="submit">Xác nhận</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/dataTables.bootstrap5.min.js"></script>
    <script src="index.js"></script>
</body>

</html>