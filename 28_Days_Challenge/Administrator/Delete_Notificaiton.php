<?php
session_start();

$N_ID=$_GET['N_ID'];

require_once('../includes/config.php');


mysqli_query($dbConn,"delete from notifications where ID='$N_ID'");

	  
echo "<script language='JavaScript'>
			  alert ('This Notification Has Been Deleted Successfully !');
      </script>";
	  

	echo "<script language='JavaScript'>
document.location='View_Challenges_List.php';
        </script>";

?>