<?php
function conn(){
		$conn = new mysqli("localhost", "root","", "stock");
		return $conn;
	}


$username = $_POST['username'];
$password = $_POST['password'];
$conn = conn();
$sql = "SELECT role FROM employees WHERE user_id='$username' AND user_pass='$password'";
$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		if ($result == 'Manager') {
			header( "location: Manager_page.php" );
		}
		else if ($result == 'Fronted') {
			header( "location: Fronted_page.php" );
		}
		else
		{
			header( "location: Backend_page.php" );
		}
				
	} else {
		echo "something error";
	}


?>