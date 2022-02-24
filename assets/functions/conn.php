<?php
$servername = "localhost";
$username = "root";
$password = "asdasd";
$dbname = "tiktok-survey";



// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

function selectData($sqlQuery)
{
    global $conn;
    $result = $conn->query($sqlQuery);

    if ($result->num_rows > 0) {
        // output data of each row
        // while ($row = $result->fetch_assoc()) {
        //     echo "id: " . $row["id"] . " - Name: " . $row["firstname"] . " " . $row["lastname"] . "<br>";
        // }

        $temp = [];
        while ($row = $result->fetch_assoc()) {
            //echo "id: " . $row["id"] . " - Name: " . $row["firstname"] . " " . $row["lastname"] . "<br>";
            array_push($temp, $row);
        }
        return json_encode($temp);
    } else {
        return "No Data";
    }
    $conn->close();
}

function queryData($sql)
{
    global $conn;
    if ($conn->query($sql) === TRUE) {
        return "success";
    } else {
        return "Error: "  . $conn->error;
    }

    $conn->close();
}
