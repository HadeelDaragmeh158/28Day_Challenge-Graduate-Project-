<?php
session_start();

$UC_ID=$_GET['UC_ID'];
$C_ID=$_GET['C_ID'];
$U_ID=$_GET['U_ID'];

require_once('../includes/config.php');



mysqli_query($dbConn,"delete from users_challenges where ID='$UC_ID'");




$sql = mysqli_query($dbConn,"select * from tasks where C_ID='$C_ID'");
while ($row = mysqli_fetch_array($sql)){


$T_ID = $row['ID'];

mysqli_query($dbConn,"delete from tasks_records where T_ID='$T_ID' AND U_ID='$U_ID'");



}



	  
echo "<script language='JavaScript'>
			  alert ('This Challenge Has Been Deleted Successfully !');
      </script>";
	  

	echo "<script language='JavaScript'>
document.location='My_Challenges.php';
        </script>";

?>