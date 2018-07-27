<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "th";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT std_id, std_dep, std_email FROM student";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "id: " . $row["std_id"]. " - Name: " . $row["std_dep"]. " " . $row["std_email"]. "<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>