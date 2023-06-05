<html>
    <head>
        <title>SQL Stuff</title>
    </head>
<body>
<?php 

$server = "localhost";
$user = "hydrohomie";
$password = "waterh2o";
$db = "hydrohomie";

$db_connect = mysqli_connect($server, $user, $password, $db);

if( !$db_connect) {
    die("ERROR: Cannot connect to database $db on server $server using username $user (".mysqli_connect_errno().", ".mysqli_connect_error().")");
}

$emp_id = $_POST['emp_id'];
$username = $_POST['username'];
$password = $_POST['password'];
$email = $_POST['email'];

$UserQuery = "INSERT INTO employees (emp_id, username, password, email) VALUES ('$emp_id', '$username', '$password', '$email')";

$result = mysqli_query($db_connect, $UserQuery);

if (!$result) {
    die("Could not successfully run query ($UserQuery) from $db: " . mysqli_error($db_connect));
} 
else {
    print("<h1>Added new employee record</h1>");
    print("<p>The following record was added to the employees table:</p>");
    print("<table border='0'>
        <tr><td>Employee ID</td><td>$emp_id</td></tr>
        <tr><td>Username</td><td>$username</td></tr>
        <tr><td>Password</td><td>$password</td></tr>
        <tr><td>Email</td><td>$email</td></tr>
        </table>");
}

mysqli_close($db_connect); // closes the database connection

?>

</body>
</html>
