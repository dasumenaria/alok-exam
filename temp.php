<?php
include_once('database.php');
$query=mysql_query("select * from `temp` order by `scholar_no` ASC");
	while($fetch=mysql_fetch_array($query))
	{
 		$id=$fetch['id'];
		$scholar_no=$fetch['scholar_no'];
 		mysql_query("delete from `student` WHERE `scholar_no`='$scholar_no'");
 	}

?>
