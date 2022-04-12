<?php
session_start();

$C_ID=$_GET['C_ID'];

require_once('../includes/config.php');

mysqli_query($dbConn,"delete from tasks where C_ID='$C_ID'");
mysqli_query($dbConn,"delete from notifications where C_ID='$C_ID'");
mysqli_query($dbConn,"delete from users_challenges where C_ID='$C_ID'");
mysqli_query($dbConn,"delete from challenges where ID='$C_ID'");
	  
echo "<script language='JavaScript'>
			  alert ('This Challenge Has Been Deleted Successfully !');
      </script>";
	  

	echo "<script language='JavaScript'>
document.location='View_Challenges_List.php';
        </script>";

?>