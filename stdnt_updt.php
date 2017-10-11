<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");


$set=mysql_query("select * from `student` ORDER BY `id`");
while($fet=mysql_fetch_array($set)){
	
	$update_id=$fet['id'];
	$dob=$fet['dob'];
	echo $org_dob=date('Y-m-d', strtotime($dob));
echo "update `student` SET `dob`='$org_dob' where `id`='$update_id'";
	mysql_query("update `student` SET `dob`='$org_dob' where `id`='$update_id'");
	echo "<br>";
	
}

?>