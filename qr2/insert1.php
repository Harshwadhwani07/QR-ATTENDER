<?php

$servername = "localhost";

$username = "harsh";

$password = "123456";

$dbname = "qrattender";


// Create connection

$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection

if (!$conn) {
 
die("Connection failed: " . mysqli_connect_error());

}


   /*     $roll_no=  $_POST['roll_no'];
 
        $student_name =  $_POST['student_name'];

        $email =  $_POST['email'];

        $date =  $_POST['date'];

   
     
$sql = "INSERT INTO toc_attendance(roll_no,student_name,email,date) VALUES ('$roll_no',' $student_name',' $email',' $date')";


 
 $roll_no=  $_POST['roll_no'];
 
        $student_name =  $_POST['student_name'];

        $email =  $_POST['email'];

        $date =  $_POST['date'];

   
     
$sql = "INSERT INTO tc_attendance(roll_no,student_name,email,date) VALUES ('$roll_no',' $student_name',' $email',' $date')";


 
 $roll_no=  $_POST['roll_no'];
 
        $student_name =  $_POST['student_name'];

        $email =  $_POST['email'];

        $date =  $_POST['date'];

   
     
$sql = "INSERT INTO dccn_attendance(roll_no,student_name,email,date) VALUES ('$roll_no',' $student_name',' $email',' $date')";


 
 $roll_no=  $_POST['roll_no'];
 
        $student_name =  $_POST['student_name'];

        $email =  $_POST['email'];

        $date =  $_POST['date'];

   
     
$sql = "INSERT INTO mp_attendance(roll_no,student_name,email,date) VALUES ('$roll_no',' $student_name',' $email',' $date')";


 
 $roll_no=  $_POST['roll_no'];
 
        $student_name =  $_POST['student_name'];

        $email =  $_POST['email'];

        $date =  $_POST['date'];

   
     
$sql = "INSERT INTO dms_attendance(roll_no,student_name,email,date) VALUES ('$roll_no',' $student_name',' $email',' $date')";

 */
 
 $roll_no=  $_POST['roll_no'];
 
        $student_name =  $_POST['student_name'];

        $email =  $_POST['email'];

        $date =  $_POST['date'];

   
     
$sql = "INSERT INTO dbms_attendance(roll_no,student_name,email,date) VALUES ('$roll_no',' $student_name',' $email',' $date')";


 

 
if (mysqli_query($conn, $sql)) {
 
echo "your Attendence is successfully done....!";

} else {
 
echo "Error: " . $sql . "<br><br><br>" . mysqli_error($conn);

}


mysqli_close($conn);

?>
