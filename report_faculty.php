<?php 
include("index_layout.php"); 
include("database.php");
include("authentication.php");
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
			 
			
			<div class="portlet box yellow" style="background-color:white !important">
			<div class="portlet-title">
			<div class="caption">
			<i class="fa fa-gift"></i> Report Faculty
			</div>

			</div>
			<div class="portlet-body form">
			<form class="form-horizontal" role="form" method="post">
			<div class="form-body">



			<div class="table-responsive"  >

	<table class="table table-striped table-bordered table-hover">
								<thead>
								<tr>
									<th style="text-align:center">
										 Sr No
									</th>
									<th style="text-align:center">
										 Class(Sec.) Name
									</th>
									  <?php 
									  $qur=mysql_query("select * from `subject` order by `id`" );
									  while($fet=mysql_fetch_array($qur))
									  {$f++;
										  $subject_id=$fet['id'];
										  
										  
										  $s1=mysql_query("select `subject` from `subject` where `id`='$subject_id'");
										  $f1=mysql_fetch_array($s1);
										  
										  $subject_name=$f1['subject'];
									  ?>
									<th style="text-align:center">
										<?php echo $subject_name; ?>
									</th>
									  <?php } ?>
								</tr>
								</thead>
								<tbody>
						<?php
						
						$f1=0;
							$que=mysql_query("select * from `master_class` order by `id`");
							while($fet=mysql_fetch_array($que))
							{
						
							$cls_id=$fet['id'];
							$cls_name=$fet['roman'];
							
							$qst=mysql_query("select `section_id` from `mapping_section` where `class_id`='$cls_id'");
							while($fst=mysql_fetch_array($qst))
							{$f1++;
								$sec_id=$fst['section_id'];
								
								$st1=mysql_query("select `section` from `master_section` where `id`='$sec_id'");
								$ft1=mysql_fetch_array($st1);
								
								$sec_name=$ft1['section'];
								?>
								<tr>
							<td style="text-align:center">
								<?php echo $f1; ?>
							</td>
							
							<td style="text-align:center">
							<?php echo $cls_name; ?>
								(<?php echo $sec_name; ?>)
							</td>
							<?php 	
							
 ?> 
							
						
						
						
						
							
							
							<?php  $i=0;
									$sect_id=0;
									if($cls_id>10){
										$sect_id=$sec_id;
									}
							
									  $qur1=mysql_query("select * from `subject` ORDER BY `id`");
									  while($fet1=mysql_fetch_array($qur1))
									  {
										  $sub_id=$fet1['id'];
										  
										  $qur2=mysql_query("select * from `subject_allocation` where `class_id`='$cls_id' && `subject_id`='$sub_id' && `elective`='0' && `section_id`='$sect_id'");
										  $sub_count=mysql_num_rows($qur2);
										  
										  $qur3=mysql_query("select * from `subject_allocation` where `class_id`='$cls_id' && `elective`='$sub_id' && `subject_id`='0' && `section_id`='$sect_id'");
										  $elec_count=mysql_num_rows($qur3);
										  
										  
										$sets=mysql_query("select * from `staff_class` where `section_id`='$sec_id' && `class_id`='$cls_id' && `subject`='$sub_id'");
											$fets=mysql_fetch_array($sets);
											
											$fac_id=$fets['staff_id'];
											
											$sets1=mysql_query("select `name` from `login` where `id`='$fac_id'");
											$fets1=mysql_fetch_array($sets1);
											
											$fac_name=$fets1['name'];
										  $i++;
									if($sub_count>0 || $elec_count>0) { ?>
							
							<td style="text-align:center">
								 
								 <?php echo $fac_name; ?>
							</td>
									<?php }else{?>
										<td style="text-align:center">
								 
								 -
							</td>
									
									<?php }?>

									<?php } ?>
						</tr>	
							<?php }} ?>
							
					</tbody>
				</table>
				
				
				</div>
								
								 	 
								</div>
								<div class="form-actions right1">
									<button style="margin-left:35%" type="button" class="btn default">Cancel</button>
									<button type="submit" name="sub_cls" class="btn green">Submit</button>
								</div>
								 
							</form>
						</div>
					</div>
			 
			 
			 
			
		 </div>
	</div>
</body>

<?php footer();?>
<?php scripts();?>

</html>