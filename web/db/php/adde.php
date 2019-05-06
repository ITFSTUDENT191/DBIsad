<?php
include 'connectDB.php';
function conn(){
		$conn = new mysqli("localhost", "root","", "stocking");
		return $conn;
	}

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
$checkEmpID =  $conn->query("SELECT LAST(emp_id) FROM employees");
$RanPass = rand(100000,999999);
$sqlinsert = "INSERT INTO employees (emp_id,user_id,user_pass,emp_name,role) VALUES ('".$checkEmpID."', '".$_POST["user_id"]."', '".$ranpass."', '".$_POST["emp_name"]."', '".$_post["
role"]."')";

$result = $conn->query($sql);

?>