<!DOCTYPE html>
<html lang="en">
<head>
	<title>Example- Store Data</title>
</head>
<body>
	<center>
		<h1>Attendance Registration Form</h1>	
			<form action="insert1.php" method="post">
				<!-- Taking ID of user -->
				<label for="roll_no">roll_no.</label>
			    <input type="text" name="roll_no" id="roll_no">

			    <!-- Taking Name of user -->
				<label for="student_name">student_name:</label>
				<input type="text" name="student_name" id="student_name">

				<!-- Taking Email of user -->
			    <label for="email">Email:</label>
			    <input type="text" name="email" id="email">	

				<!-- Taking Date  -->
				<label for="date">Date of attendance:</label>
				<input type="date" name="date" id="date">

			    <button type="submit">Submit</button>
			</form>
	</center>
</body>
</html>


