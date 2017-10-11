<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");

if(isset($_POST['sub_add']))
{
	$term_id=$_POST['term_id'];
	$category_id=$_POST['category_id'];
	$days=$_POST['no_of_day'];
	$time_from=$_POST['time_from'];
	$time_to=$_POST['time_to'];
	$instructions=$_POST['instruction'];
	mysql_query("Delete from `time_table_instruction`");
	foreach($instructions as $value){
		mysql_query("insert into `time_table_instruction` SET `instruction`='$value'");
	}
}	
	if(isset($_POST['data_sub'])){
		
		$all_subject=$_POST['all_subject'];
		$all_class=$_POST['all_class'];
		$exam_date=$_POST['exam_date'];
		$no_of_day=$_POST['days'];
		$term_id=$_POST['term_id'];
		$category_id=$_POST['category_id'];
		$time_from=$_POST['time_from'];
		$time_to=$_POST['time_to'];
	
		for($i=0;$i<$no_of_day;$i++){
			$date=date('Y-m-d', strtotime($exam_date[$i]));
			$sot=mysql_query("select * from `master_class`");
			while($fot=mysql_fetch_array($sot))
			{
				$cls_id=$fot['id'];
				$class_id=$all_class[$i][$cls_id];
				$subject=implode(',', $all_subject[$i][$cls_id]);
				mysql_query("delete from `time_table` where `class_id`='$class_id',`term_id`='$term_id',`category_id`='$category_id'");
				
				mysql_query("insert into `time_table` SET `class_id`='$class_id',`term_id`='$term_id',`category_id`='$category_id',`date`='$date',`time_from`='$time_from',`time_to`='$time_to',`subject_id`='$subject'");
			}
			
			
		}
		@header('location: time_table_view.php?term='.$term_id.'&time_from='.$time_from.'&time_to='.$time_to);
		exit;
	}
 ?>
<html >
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Master | Time Table</title>
</head>
<?php contant_start(); menu();  ?>
<body>
<div class="page-content-wrapper">
	<div class="page-content">
		<div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-puzzle"></i> Time Table
				</div>
			</div>
			<div class="portlet-body form">
			<!-- BEGIN FORM-->
				<form  class="form-horizontal" id="form_sample_2"  role="form" method="post" > 
					<input type="hidden" name="days" value="<?php echo $days; ?>">
					<input type="hidden" name="category_id" value="<?php echo $category_id; ?>">
					<input type="hidden" name="term_id" value="<?php echo $term_id; ?>">
					<input type="hidden" name="time_from" value="<?php echo $time_from; ?>">
					<input type="hidden" name="time_to" value="<?php echo $time_to; ?>">
					<div class="portlet-body">
							<div class="table-scrollable">
								<table class="table table-striped table-bordered table-hover">
								<caption style="text-align:center;">Exam Time From - <?php echo $time_from; ?> To -<?php echo $time_to; ?></caption>
								<thead>
									<tr>
										<th style="text-align:center;">
											 Date / Class
										</th>
										<?php
										$set=mysql_query("select * from `master_class`");
										while($fet=mysql_fetch_array($set))
										{
											$class_id=$fet['id'];
											$roman=$fet['roman'];
										?>
										<th style="text-align:center"  width="30%">
											 <?php echo $roman; ?>
										</th>
										<?php } ?>
									</tr>
								</thead>
								<tbody>
									<?php for($i=0;$i<$days;$i++){ ?>
									<tr>
										<td style="text-align:center;" >
											<div class="input-icon right">
												<input class="form-control form-control-inline input-small date-picker" required data-date-format="dd-mm-yyyy" placeholder="DD-MM-YYYY" size="16" value="" type="text" name="exam_date[<?php echo $i;?>]" >
											</div>
										</td>
										<?php 
										$set1=mysql_query("select * from `master_class`");
										while($fet1=mysql_fetch_array($set1))
										{
											$class_id=$fet1['id'];
										?>
										<th style="text-align:center" width="30%">
										<input type="hidden" name="all_class[<?php echo $i; ?>][<?php echo $class_id; ?>]" value="<?php echo $class_id; ?>">
										
										<select class="form-control input-small" name="all_subject[<?php echo $i; ?>][<?php echo $class_id; ?>][]" multiple="multiple">
											<option value="">---Select Section---</option>
											<?php 
											$set2=mysql_query("select Distinct(subject_id) from `subject_allocation` where `class_id`='$class_id'");
											while($fet2=mysql_fetch_array($set2))
											{
											$subject_id=$fet2['subject_id'];

											$set3=mysql_query("select * from `subject` where `id`='$subject_id'");
											$fet3=mysql_fetch_array($set3);

											$sub_name=$fet3['subject'];
											?>
											<option value="<?php echo $subject_id; ?>"><?php echo $sub_name; ?></option>
										<?php } ?>
										</select>
										</th>
										<?php } ?>
									</tr>
								<?php } ?>
								</tbody>
								</table>
							</div>
							<div class="form-actions top">
								<div class="row">
									<div class="col-md-offset-3 col-md-9">
										<button type="submit" name="data_sub" class="btn green">Submit</button>
										<button type="reset" class="btn default">Cancel</button>
									</div>
								</div>
							</div>
						</div>
				</form>
			</div>
		<!-- END FORM-->
		</div>
	</div>
</div>
</body>
<?php footer();?>
<?php scripts();?>
</html>