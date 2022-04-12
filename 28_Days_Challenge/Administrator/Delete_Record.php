<?php
session_start();

$CR_ID=$_GET['CR_ID'];

require_once('../includes/config.php');

mysqli_query($dbConn,"delete from challenges_records where ID='$CR_ID'");
	  
echo "<script language='JavaScript'>
			  alert ('This User Challenge Record Has Been Deleted Successfully !');
      </script>";
	  

	echo "<script language='JavaScript'>
document.location='View_Users_List.php';
        </script>";

?>