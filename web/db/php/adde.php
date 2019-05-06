<?php
include 'connectDB.php';


$username = $_POST['username'];
$password = $_POST['password'];

$sql = "SELECT role FROM employees WHERE username='".$username."' AND password='".$password."'";
$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		if ($result == 'Manager') {
			header( "location: Manager_page.html" );
		}
		else if ($result == 'Fronted') {
			header( "location: Fronted_page.html" );
		}
		else
		{
			header( "location: Backend_page.html" );
		}
				
	} else {
		echo "something error";
	}


?>