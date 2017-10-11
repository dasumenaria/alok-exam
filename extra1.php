<?php
include('database.php');
 
$class=$_GET['cls'];
$section=$_GET['sec'];
$exam_name=$_GET['exm'];

header("Content-Type: application/xls");
header("Content-Disposition: attachment; filename=Status.xls");
header("Content-Type: application/force-download");
header("Cache-Control: post-check=0, pre-check=0", true);
?>

                  	<!-- BEGIN BORDERED TABLE PORTLET-->
	<table  style="border-color:#FFF;"id="table"  width="100%" border="1">
       <thead>
								 <tr>
								 <th>Sr.No</th>
								 <th>Roll No</th>
								 <th>Name</th>
								 <th>Status</th>
								 <th>Percentage</th>
								</tr>
								</thead>
								<tbody>
									<?php
									 
									$set=mysql_query("select * from `student_result` where `class_id`='$class' && `section_id`='$section' && `term_id`='$exam_name' ORDER BY `roll_no`");
									while($fet=mysql_fetch_array($set))
									{$i++;
										$roll_no=$fet['roll_no'];
										$scholar_no=$fet['scholar_no'];
										$status=$fet['status'];
										$per=$fet['per'];
										
										$set2=mysql_query("select `name` from `student` where `scholar_no`='$scholar_no'");
										$fet2=mysql_fetch_array($set2);
										
										$student_name=$fet2['name'];
										
									?>
									<tr>
									<td><?php echo $i; ?></td>
									<td><?php echo $roll_no; ?></td>		
									<td><?php echo $student_name; ?></td>
									<td><?php echo $status; ?></td>
									<td><?php echo $per; ?></td>
									</tr>
									
									<?php } ?>
								</tbody>
    </table>				