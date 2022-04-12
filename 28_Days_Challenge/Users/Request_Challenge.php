<?php
session_start();

$C_ID=$_GET['C_ID'];
$U_ID = $_SESSION['U_Log'];

require_once('../includes/config.php');




$sql5 = mysqli_query($dbConn,"select * from users_challenges where U_ID='$U_ID' AND C_ID='$C_ID'");

if (mysqli_num_rows($sql5)>0){
	
	
		echo "<script language='JavaScript'>
			  alert ('You Already Have This Challenge Before !');
      </script>";
	  
	  
	  echo "<script language='JavaScript'>
document.location='My_Challenges.php';
        </script>";
		
		
	  
}else{




mysqli_query($dbConn,"insert into users_challenges (U_ID,C_ID) values ('$U_ID','$C_ID')");

	  
echo "<script language='JavaScript'>
			  alert ('This Challenge Has Been Added Successfully !');
      </script>";
	  

	echo "<script language='JavaScript'>
document.location='My_Challenges.php';
        </script>";
		
		
}

?>