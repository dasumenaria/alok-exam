<?php
$query=mysql_query("select * from `temp` order by `scholer` ASC");
	while($fetch=mysql_fetch_array($query))
	{
 		$class_id=$fetch['class'];
		$section_id=$fetch['section'];
		$roll_no=$fetch['roll_no'];
		$name=$fetch['name'];
		$scholer=$fetch['scholer'];
		mysql_query("update `student` SET `class_id`='$class_id' , `section_id`='$section_id'  , `roll_no`='$roll_no' WHERE `scholar_no`='$scholer' && `name`='$name'");
		
	}

?>
