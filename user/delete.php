<?php
require_once('db_connnection.php');
if (isset($_POST['idAddr'])) {
    $id = $_POST['idAddr'];

    $conn = OpenCon();
    $query = "CALL DeleteEmployee('$id')";

    if ($conn->query($query) === TRUE) {
        echo "Successfully";
        header('Location: index.php');
    } else {

        echo "Error: " . $query . "<br>" . $conn->error;
        header('Location: index.php?err=' . $conn->error);
    }
}

