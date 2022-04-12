<?php
session_start();

require_once('../includes/config.php');



$UTR_ID=$_GET['UTR_ID'];
$U_ID=$_GET['U_ID'];
$Status=$_GET['Status'];
$Total_Points=$_GET['Total_Points'];




if ($Status=='Accepted'){
	
	
	echo "<script language='JavaScript'>
			  alert ('This User Challenge Task Record Already Accepted Before !');
      </script>";
	  

	echo "<script language='JavaScript'>
document.location='View_Users_List.php';
        </script>";
		
	
	
}else{
	




$sql1 = mysqli_query($dbConn,"select * from users where ID='$U_ID'");
$row1 = mysqli_fetch_array($sql1);
$User_Total_Points = $row1['Total_Points'];


$New_Total_Points = $User_Total_Points + $Total_Points;

mysqli_query($dbConn,"update tasks_records set Status='Accepted' where ID='$UTR_ID'");

mysqli_query($dbConn,"update users set Total_Points='$New_Total_Points' where ID='$U_ID'");

					
				
						
						
					
	  
echo "<script language='JavaScript'>
			  alert ('This User Challenge Task Record Has Been Accepted Successfully !');
      </script>";
	  

	echo "<script language='JavaScript'>
document.location='View_Users_List.php';
        </script>";
		
		
		
			
}

?>