<?php 
include("index_layout.php"); 
include("database.php");
include("authentication.php");
$show_report=0;
if(isset($_POST['view_report']))
{
	$term=$_POST['term'];
	$show_report=1;
}

?>
<html>
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Index</title>
</head>
<?php contant_start(); menu();  ?>
<body>
	<div class="page-content-wrapper">
		 <div class="page-content">

			 <div class="portlet box blue">
			<div class="portlet-title hide_print">
				<div class="caption">
					<i class="icon-puzzle"></i> 100% Attendance Report
				</div>
			</div>			 
			
			 <div class="portlet-body">
				<div class="table-responsive">
					<form  enctype="multipart/form-data" class="form-horizontal" id="form_sample_2"  role="form" method="post"> 
					<div class="form-body hide_print">
						<div class="form-group">
							<label class="control-label col-md-3">Exam</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control ust" required name="term">
										<option value="">---Select Exam---</option>
											<?php 
												$query2=mysql_query("select * from `master_term` ORder By `id`"); 
												while($fetch2=mysql_fetch_array($query2))
												{
													$i++;
													$ex_id=$fetch2['id'];
													$exam_name=$fetch2['name'];
												?>
												<option value="<?php echo $ex_id; ?>"><?php echo $exam_name; ?></option>
											<?php } ?>
									</select>
								</div>
								<span class="help-block">
								Please select Exam category</span>
							</div>
						</div>
						<div class="col-md-12" align="center">
							<button type="submit" name="view_report" class="btn green">Report</button>
						</div>
						
						</div>
					</form>
					
					<?php if($show_report==1)
					{
						$query2=mysql_query("select * from `master_term` where `id` = '$term'"); 
						$fetch2=mysql_fetch_array($query2);
						$exam_name=$fetch2['name'];
						$st=mysql_query("select * from `school`");
						$ft=mysql_fetch_array($st);
						
						$school_name=$ft['school'];
						$school_address=$ft['address'];
						$logo=$ft['logo'];
						?>
						<button   type="button" class="btn btn-primary hide_print" onclick="window.print()" align="right" value="Print Admit Card">Print </button>
						
						<h3 align="center" style="display:none"><center><img src="img/<?php echo $logo; ?>" height="100px" width="100px"></center></h3>
						<h2 style="text-align:center"><?php echo $school_name; ?></h2>
						<h4 style="text-align:center"><?php echo $school_address; ?></h4>
						<h5 style="text-align:center"><b>Attendence Report of <?php echo $exam_name;?></b></h5>
  					<table class="table table-bordered" style="margin-top: 65px;">
						<thead>
							<tr> 
								<th width="10%">S.No.</th>
								<th width="10%">Scholar No.</th>
								<th width="20%">Roll No</th>
								<th width="30%">Name</th>
								<th width="30%">Father Name</th>
								<th width="10%">Attendance %</th>
							</tr>
						</thead>
						<tbody>
						<?php 
							$f=0;
  							$ftc_class=mysql_query("select * from `attendance` where `term`='$term'");
							while($fetch=mysql_fetch_array($ftc_class))
							{
								
								$id=$fetch['id']; 
								$scholar_no=$fetch['scholar_no'];
								$attendance=$fetch['attendance'];
								$max_attendance=$fetch['max_attendance'];
								$term=$fetch['term'];
							if(!empty($attendance))
							{
								$attendanceMarks=$attendance;
								$attendanceMaxMarks=$max_attendance;
								@$AttendancePrecentage=(($attendanceMarks/$attendanceMaxMarks)*100);
								if($attendance==$max_attendance)
								{
									$f++;
									$query=mysql_query("select * from `student` where `scholar_no`='$scholar_no'");
									$fetch=mysql_fetch_array($query);
									$id=$fetch['id'];
									$name=$fetch['name'];
									$roll_no=$fetch['roll_no'];
									$father_name=$fetch['father_name'];
									 
									$set=mysql_query("select `roman` from `class` where `id`='$class_id'");
									$fet=mysql_fetch_array($set);
									
									$class_name=$fet['roman'];

									$set1=mysql_query("select `section` from `section` where `id`='$section_id'");
									$fet1=mysql_fetch_array($set1);
									$section_name=$fet1['section'];
											
									?> 	
										<tr>
											<td><?php echo $f;?></td>
											<td><?php echo $scholar_no;?></td>
											<td><?php echo $roll_no; ?></td>
											<td><?php echo $name; ?></td>
											<td><?php echo $father_name; ?></td>
											<td><?php echo $AttendancePrecentage; ?>%</td>
										</tr>
						<?php   }
							}
						}						?>
							 
						</tbody>
					</table>
					<?php } ?>
				</div>
			</div>
			</div>
		</div>
	</div>
</body>

<?php footer();?>
<?php scripts();?>

</html>
