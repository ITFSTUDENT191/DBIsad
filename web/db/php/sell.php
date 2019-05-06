<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="UTF-8">
	<style type="text/css">
		.order_list{
			background: yellow;
			width: 300px;
			display: inline-block;
			padding: 1em;
		}
	</style>
</head>
<body>
<?php 
	function conn(){
		$conn = new mysqli("localhost", "root","", "zoo2");
		return $conn;
	}
	$type = ['Fly','Ground','Aquatic'];
	if($_POST['submit']=='submit'){
		$type_name = $_POST['type_name'];
		$race_name = $_POST['race_name'];
		$amount = $_POST['amount'];
		$conn = conn();
		$sql = "INSERT INTO animal2(
		 	type_name,
		 	race_name,
		 	amount
		 	)
		 	VALUES ('$type_name',
		 	'$race_name',
		 	'$amount'
		 	)";
		$conn->query($sql);
}
?>
 <form method="POST">
 	<select name='type_name'>
 	<?php
 	for ($i=0;$i<sizeof($type);$i++) {?>
	 		<option value="<?=$type[$i]?>"><?=$type[$i]?></option>
	<?php
 	}
 	?>
 	</select>
 	<input type="text" name="race_name" value=""><input type="number" name="amount" value="">
 	<button name="submit" value="submit">Submit</button>
 </form>

<?php
$conn = conn();
$sql = "SELECT * FROM animal2";
$result = $conn->query($sql);
while($row = $result->fetch_assoc()) {
	?>
	<div class="order_list">
		<h2><?=$row['id']?> : <?=$row['type_name']?></h2>
		<h1><?=$row['race_name']?></h1>
	</div>
	<?php
	}
	?>
</body>
</html>