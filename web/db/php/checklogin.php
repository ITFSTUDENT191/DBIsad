<?php
include 'connectDB.php';

$username = $_POST['username'];
$password = $_POST['password'];

$sql = "SELECT * FROM member WHERE username='".$username."' AND password='".$password."'";
$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
			$uid = $row["uid"];
			$username = $row["username"];
			$coin = $row["coin"];
		}
		header( "location: http://www.ireallyhost.com" );
 exit(0);
		
	} else {
		echo "something error";
	}


?>