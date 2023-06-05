<?php 

$search_query = $_GET['search_query'];

$server = "localhost";
$user = "hydrohomie";
$password = "waterh2o";
$db = "hydrohomie";

$db_connect = mysqli_connect($server, $user, $password, $db);

if( !$db_connect) {
    die("ERROR: Cannot connect to database $db on server $server using username $user (".mysqli_connect_errno().", ".mysqli_connect_error().")");
}

$sql_query = "SELECT * FROM `DVD` WHERE Title LIKE '%".$search_query."%'";
$result = $db_connect->query($sql_query);

if($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "Result: " . $row["Title"] . "<br>";
    }
} else {
    echo "No results found.";
}

$db_connect->close();

?>
