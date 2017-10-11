<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");

$term_id=$_GET['term'];
$time_from=$_GET['time_from'];
$time_to=$_GET['time_to'];
 ?>
<html>
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Master | Time Table</title>
<style>
.table>thead>tr>th{
	font-size:12px !important;
}

 @media print
   {
     .printdata{
		 display:none;
	 }
   }

</style>
</head>
<body style="background-color:#E6E6FA">

						<?php 
						$st=mysql_query("select * from `school`");
						$ft=mysql_fetch_array($st);
						
						$school_name=$ft['school'];
						$school_address=$ft['address'];
						$logo=$ft['logo'];
						
						$st1=mysql_query("select `name` from `master_term` where `id`='$id'");
						$ft2=mysql_fetch_array($st1);
						$term_name=$ft2['name'];
						?>
						<a href="index.php"><button type="button" class="btn btn-primary hide_print" align="right">Back </button></a>
						<button   type="button" class="btn btn-primary hide_print" onclick="window.print()" align="right" value="Print Admit Card">Print </button>
								<h3 align="center"><center><img src="img/<?php echo $logo; ?>" height="100px" width="100px"></center></h3>
								<h2 style="text-align:center"><?php echo $school_name; ?></h2>
								<h4 style="text-align:center"><?php echo $school_address; ?></h4>
								<h3 style="text-align:center">Time Table of - <?php echo $term_name; ?></h3>
								<table class="table table-striped table-bordered table-hover " width="100%" border="1">
								<caption style="text-align:center;">Exam Time From - <?php echo $time_from; ?> To -<?php echo $time_to; ?></caption>
								<thead style="font-weight:bold;">
									<tr>
										<th style="text-align:center;">
											 Date/Class
										</th>
										<?php
										$set=mysql_query("select * from `master_class`");
										while($fet=mysql_fetch_array($set))
										{
											$class_id=$fet['id'];
											$roman=$fet['roman'];
										?>
										<th style="text-align:center"  width="9%">
											 <?php echo $roman; ?>
										</th>
										<?php } ?>
									</tr>
								</thead>
								<tbody>
									<?php 
									$slt=mysql_query("select Distinct(date) from `time_table` where `term_id`='$term_id'");
									while($flt=mysql_fetch_array($slt)){ 
										$date=$flt['date'];
										$org_date=date('d-M-Y', strtotime($date));
									?>
									<tr>
										<td>
											<?php echo $org_date; ?>
										</td>
										<?php 
										$set1=mysql_query("select * from `master_class`");
										while($fet1=mysql_fetch_array($set1))
										{
											$class_id=$fet1['id'];	
										$set2=mysql_query("select * from `time_table` where `term_id`='$term_id' && `date`='$date' && `class_id`='$class_id'");
										$fet2=mysql_fetch_array($set2);
										
										$time_from=$fet2['time_from'];
										$time_to=$fet2['time_to'];
										$sub_id=$fet2['subject_id'];
										$subject_views=explode(',', $sub_id);
										 
										?>
										<th>
										<?php 
										foreach($subject_views as $subject_view)
										{
										$subject_id=$subject_view;
										$stl=mysql_query("select `subject` from `subject` where `id`='$subject_id'");
										$ftl=mysql_fetch_array($stl);
											echo $subject_name=$ftl['subject'];
											echo '<br>';
										} ?>
										
										</th>
										<?php } ?>
									</tr>
								<?php } ?>
								</tbody>
								<tfoot>
									<tr>
										<td colspan='100'>
											<h3>Instructions</h3>
											<?php 
											$sst=mysql_query("select * from `time_table_instruction` ORder by `id` ASC");
											while($fft=mysql_fetch_array($sst))
											{
												$r++;
												$instruction=$fft['instruction'];
											?>
											 <span><?php echo $r.'. '. $instruction; ?></span><br>
											<?php } ?>
										</td>
									</tr>
								</tfoot>
							</table>
						
</body>
<?php footer();?>
<?php scripts();?>
</html>