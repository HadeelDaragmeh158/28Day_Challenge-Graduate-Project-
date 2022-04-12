<?php
session_start();

$T_ID=$_GET['T_ID'];

require_once('../includes/config.php');


mysqli_query($dbConn,"delete from tasks_records where T_ID='$T_ID'");
mysqli_query($dbConn,"delete from tasks where ID='$T_ID'");

	  
echo "<script language='JavaScript'>
			  alert ('This Task Has Been Deleted Successfully !');
      </script>";
	  

	echo "<script language='JavaScript'>
document.location='View_Challenges_List.php';
        </script>";

?>