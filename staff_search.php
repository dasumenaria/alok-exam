<?php
include("index_layout.php");
include("database.php");
//include("authentication.php");

$user_id=$_GET['user'];
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
			
			
				<div class="portlet box purple" style="background-color:white !important">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-gift"></i> Staff View
							</div>
						 
						</div>
						<div class="portlet-body form">
							<form class="form-horizontal" role="form">
								<div class="form-body">
								
								<?php 
								//echo "select * `login` where `id`='$user_id'";
								$sect=mysql_query("select * from `login` where `id`='$user_id'");
								$fect=mysql_fetch_array($sect);
								
								  $name=$fect['name'];
								  $class=$fect['class'];
								$section=$fect['section'];
								$subject=$fect['subject'];
								$username=$fect['username'];
								$password=$fect['password'];
								
								  $orignal=base64_decode($password);
								//echo $orignal=DES_DECRYPT($password);
								 
								
								$set1=mysql_query("select `subject` from `subject` where `id`='$subject'");
								$fet1=mysql_fetch_array($set1);
								
								$sub_name=$fet1['subject'];
								
								$set2=mysql_query("select `roman` from `master_class` where `id`='$class'");
								$fet2=mysql_fetch_array($set2);
								
								$class_name=$fet2['roman'];
								
								$set3=mysql_query("select `section` from `master_section` where `id`='$section'");
								$fet3=mysql_fetch_array($set3);
								
								$sec_name=$fet3['section'];
								?>
									 
									<div class="form-group">
										<label class="col-md-1 control-label">Name</label>
										<div class="col-md-4">
											<input class="form-control" readonly type="text" value="<?php echo $name; ?>">
										</div>
										<label class="col-md-1 control-label">Class</label>
										<div class="col-md-4">
											<input class="form-control" readonly type="text" value="<?php echo $class_name; ?>">
										</div>
									</div>
									 
									 
									 <div class="form-group">
										<label class="col-md-1 control-label">Section</label>
										<div class="col-md-4">
											<input class="form-control" readonly type="text" value="<?php echo $sec_name; ?>">
										</div>
										<label class="col-md-1 control-label">Subject</label>
										<div class="col-md-4">
											<input class="form-control" readonly type="text" value="<?php echo $sub_name; ?>">
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-md-1 control-label">Username</label>
										<div class="col-md-4">
											<input class="form-control" readonly type="text" value="<?php echo $username; ?>">
										</div>
										 
									</div>
									 
									  
								</div>
								 
							</form>
						</div>
					</div>
					
					<div class="portlet box purple" style="background-color:white !important">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-gift"></i> Staff Subject
							</div>
						 
						</div>
						<div class="portlet-body form">
							<form class="form-horizontal" role="form" method="post">
								<div class="form-body">
								
								
								
							<div class="table-responsive" >
								<table class="table table-striped table-bordered table-hover">
								<thead>
								<tr>
									<th style="text-align:center">
										 Sr No
									</th>
									<th style="text-align:center">
										 Class Name
									</th>
									<th style="text-align:center">
										Section Name
									</th>
									<th style="text-align:center">
										Subject Name
									</th>
								</tr>
								</thead>
								<tbody>
						<?php
						
						$f1=0;
							$que=mysql_query("select * from `staff_class` where `staff_id`='$user_id'");
							while($fet=mysql_fetch_array($que))
							{$f1++;
						
							$class_id=$fet['class_id'];
							$section_id=$fet['section_id'];
							$subject_id=$fet['subject'];
							
						$qur1=mysql_query("select `roman` from `class` where `id`='$class_id'");
						$fet1=mysql_fetch_array($qur1);
						
						$class_name2=$fet1['roman'];
							
						$qur2=mysql_query("select `section` from `section` where `id`='$section_id'");
						$fet2=mysql_fetch_array($qur2);
						
						$section_name=$fet2['section'];
						
						
						$qur3=mysql_query("select `subject` from `subject` where `id`='$subject_id'");
						$fet3=mysql_fetch_array($qur3);
						
						$subject_name=$fet3['subject'];
							
							
							
							
 ?> 
							
						
						
						<tr>
							<td style="text-align:center">
								<?php echo $f1; ?>
							</td>
							
							<td style="text-align:center">
								<?php echo $class_name2; ?>
							</td>
							
							<td style="text-align:center">
								<?php echo $section_name; ?>
							</td>
							
							
							<td style="text-align:center">
								<?php echo $subject_name; ?>
							</td>
							 
						</tr>	
							<?php } ?>
							
					</tbody>
				</table>
			 
			</div>
					
				</div>	
			
			
			
		 </div>
	</div>
</body>

<?php footer();?>
<?php scripts();?>

</html>