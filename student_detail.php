<?php
include('database.php');
$class=$_GET['cls'];
$section=$_GET['sec'];

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
								 <th>Name</th>
								 <th>Father Name</th>
								 <th>Mother Name</th>
								 <th>Roll No</th>
								 <th>Scholar No</th>
								 <th>Class</th>
								 <th>Section</th>
								</tr>
								</thead>
								<tbody>
									<?php
									 
									$set=mysql_query("select * from `student` where `class_id`='$class' && `section_id`='$section' ORDER BY `roll_no`");
									while($fet=mysql_fetch_array($set))
									{$i++;
										$student_name=$fet['name'];
										$father_name=$fet['father_name'];
										$mother_name=$fet['mother_name'];
										$roll_no=$fet['roll_no'];
										$scholar_no=$fet['scholar_no'];
										$class_id=$fet['class_id'];
										$section_id=$fet['section_id'];
										
										$set2=mysql_query("select `roman` from `master_class` where `id`='$class_id'");
										$fet2=mysql_fetch_array($set2);
										
										$class=$fet2['roman'];
										
										$sets2=mysql_query("select `section` from `master_section` where `id`='$class_id'");
										$fets2=mysql_fetch_array($sets2);
										
										$section=$fets2['section'];
										
									?>
									<tr>
									<td><?php echo $i; ?></td>
									<td><?php echo $student_name; ?></td>		
									<td><?php echo $father_name; ?></td>
									<td><?php echo $mother_name; ?></td>
									<td><?php echo $roll_no; ?></td>
									<td><?php echo $scholar_no; ?></td>
									<td><?php echo $class; ?></td>
									<td><?php echo $section; ?></td>
									</tr>
									
									<?php } ?>
								</tbody>
    </table>				