<?php
function conn(){
		$conn = new mysqli("localhost", "root","", "stock");
		return $conn;
	}


$p_code = $_POST['p_code'];
$p_name = $_POST['p_name'];
$p_price = $_POST['p_price'];
$w_id = $_POST['l_id'];
$p_quantity = $_POST['p_quantity'];
$cat_id = $_POST['cat_id'];
$p_descript = $_POST['p_descript'];
$conn = conn();
$sql = "INSERT INTO product(p_code,p_name,p_price,l_id,p_quantity,cat_id,p_descript) values ('$p_code','$p_name','$p_price','$w_id','$p_quantity','$cat_id','$p_descript')";
$result = $conn->query($sql);
echo "Add product Success";

?>