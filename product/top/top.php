<?php
// top.php

function getTopProducts($startDate, $endDate, $branchID) {
    require_once('db_connection.php'); // Ensure this path is correct
    $conn = OpenCon();

    $topProducts = [];

    if ($conn) {
        // Prepare the SQL call
        $stmt = $conn->prepare("CALL Top10_Items(?, ?, ?)");
        // Bind parameters to the query
        $stmt->bind_param("sss", $startDate, $endDate, $branchID);
        // Execute the query
        $stmt->execute();
        // Fetch the results
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $topProducts[] = $row;
            }
        }

        // Close the statement
        $stmt->close();
    }

    CloseCon($conn); // Close the database connection

    return $topProducts;
}
