<?php
session_start();

$UC_ID=$_GET['UC_ID'];

require_once('../includes/config.php');

mysqli_query($dbConn,"delete from users_challenges where ID='$UC_ID'");
	  
echo "<script language='JavaScript'>
			  alert ('This User Challenge Has Been Deleted Successfully !');
      </script>";
	  

	echo "<script language='JavaScript'>
document.location='View_Users_List.php';
        </script>";

?>