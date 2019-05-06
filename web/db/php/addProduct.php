<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<form action="addp.php" method="POST">
		Product Code : <input type="text" name="p_code" value="">
		<br>
		<h1>ProductDetail</h1>
		Name : <input type="text" name="p_name" value="">
		<br>
		Price : <input type="text" name="p_price" value="">
		<br>
		Value : <input type="text" name="p_quantity" value="">
		<br>
		Zone : <select name= "l_id">
			  <option value="1">1</option>
			  <option value="2">2</option>
			  <option value="3">3</option>
			  <option value="4">4</option>
			  <option value="5">5</option>
			  <option value="6">6</option>
			</select>

		<br>
		Category: <select name="cat_id">

			  <option value="1">ของใช้ทั่วไป</option>
			  <option value="2">อุปกรณ์</option>
			  <option value="3">ยา</option>
			  <option value="4" selected>อาหาร</option>
			  <option value="5" selected>ของเล่น</option>
			</select>

		<br>
		Descipt: <input type="text" name="p_descript" value="">
		<br>
		<input type="submit" value="ok">
		</form>
</body>
</html>