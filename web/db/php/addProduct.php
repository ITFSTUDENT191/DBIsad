<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<form action="addp.php" method="POST">
		Product Code : <input type="text" name="p_code" value="_____">
		<br>
		<h1>ProductDetail</h1>
		Name : <input type="text" name="p_name" value="___">
		<br>
		Price : <input type="text" name="p_price" value="___">
		<br>
		Zone : <select>
			  <option value="a">A</option>
			  <option value="b">B</option>
			  <option value="c">C</option>
			  <option value="d" selected>D</option>
			</select>

		<br>
		Category: <select>
			  <option value="food">อาหาร</option>
			  <option value="drink">เครื่องดื่ม/option>
			  <option value="stuff">ของใช้ทั่วไป</option>
			  <option value="electronics" selected>เครื่องใช้ไฟฟ้า</option>
			</select>

		<br>
		Descipt: <input type="text" name="p_descript" value="___">
		<br>
		<input type="submit" value="ok">
</body>
</html>