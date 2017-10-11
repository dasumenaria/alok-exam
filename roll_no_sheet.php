<?php 
include("index_layout.php"); 
include("database.php");
include("authentication.php");

$class_id=$_GET['cls'];
$section_id=$_GET['sec'];
$subject=$_GET['sub'];
$all_subject=explode(',', $subject);
$subject_id=$all_subject[0];
$sub_subject_id=$all_subject[1];
$term_id=$_GET['trm'];

$st=mysql_query("select * from `school`");
$ft=mysql_fetch_array($st);
$school=$ft['school'];

$st1=mysql_query("select `name` from `master_term` where `id`='$term_id'");
$ft1=mysql_fetch_array($st1);
$term_name=$ft1['name'];

$st2=mysql_query("select `roman` from `master_class` where `id`='$class_id'");
$ft2=mysql_fetch_array($st2);
$class_name=$ft2['roman'];

$st3=mysql_query("select `section` from `master_section` where `id`='$section_id'");
$ft3=mysql_fetch_array($st3);
$section_name=$ft3['section'];

$st3=mysql_query("select `section` from `master_section` where `id`='$section_id'");
$ft3=mysql_fetch_array($st3);
$section_name=$ft3['section'];

$st4=mysql_query("select `subject` from `subject` where `id`='$subject_id'");
$ft4=mysql_fetch_array($st4);
$sub_name=$ft4['subject'];

$st5=mysql_query("select `name` from `master_sub_subject` where `id`='$sub_subject_id'");
$ft5=mysql_fetch_array($st5);
$sub_sub_name=$ft5['name'];

if(!empty($sub_sub_name)){
	$subject_name=$sub_name.'-'.$sub_sub_name;
}else{
	$subject_name=$sub_name;
}
?>

<html>
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Index</title>
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
<?php contant_start(); menu();  ?>
<body>
	<div class="page-content-wrapper">
		 <div class="page-content">
			 
			 <div class="portlet box blue">
			<div class="portlet-title printdata">
				<div class="caption">
					<i class="icon-puzzle"></i> Roll No List
				</div>
			</div>			 
		 
			 <div class="portlet-body">
							<div class="table-responsive">
							
							<p id="list_roll_stdnt">

<div style=" float:left;width:100%;border:1px solid">
<br>
<table width="100%">
<tbody><tr>
<td width="50%">

<table style="text-align:center;font-size:13px;" width="100%" align="left">
		<tbody><tr style="font-size:20px">
			<td colspan="2">
				<strong><?php echo $school; ?></strong>
			</td>
		</tr>
		<tr>
			<td style="padding-top:5PX" colspan="2">
				<b>MARK-LIST</b>
			</td>
		</tr>
		<tr>
			<td style="padding-top:5PX" colspan="2">
				<b>SESSION 2016-2017</b>
			</td>
		</tr>
		<tr>
			<td style="padding-top:5PX" colspan="2">
				<b>EXAM &nbsp; <?php echo $term_name; ?><br>   </b>
			</td>
          
		</tr>
</tbody></table>
<br><table style="text-align:center;font-size:15px;" width="100%" cellspacing="0" cellpadding="0" align="left">

		<tbody><tr>
			<td style="padding-left:10px; text-align:left ; padding-top:5PX;" width="15%">
				<b>	CLASS </b>
			</td>  
            <td style="padding-left:10px;text-align:left;padding-top:5PX;" width="15%">
				<b><?php echo $class_name; ?></b>
			</td>
			<td style="padding-left:10px ; text-align:left;padding-top:5PX;" width="15%">
				<b>SECTION  </b>
			</td>
			 <td style="padding-left:10px;text-align:left;padding-top:5PX;" width="15%">
				<b><?php echo $section_name; ?></b>
			</td>
		</tr>
	
		<tr>
			
			<td style="padding-left:10px;text-align:left;padding-top:5PX;">
				<b>DATE OF SUBMI</b>
			</td>
            <td style="padding-left:10px;text-align:left;padding-top:5PX;">
				<b> ..../......./201... </b>
			</td>
			<td style="padding-left:10px;padding-top:5PX;;padding-bottom:5PX;text-align:left;">
				<b>MAXIMUM MARKS</b>
			</td>
<td style="padding-left:10px;padding-top:5PX;padding-bottom:5PX;text-align:left"><b> ...................... </b></td>
		</tr>
<tr>
		</tr>
        	<tr><td style="padding-left:10px;padding-top:5PX;;padding-bottom:5PX;text-align:left;">
            <b>PASS MARKS</b>
        </td>
        <td style="padding-left:10px;padding-top:5PX;padding-bottom:5PX;text-align:left">
       <b> %</b>
        </td>
        
        <td style="padding-left:10px;padding-top:5PX;;padding-bottom:5PX;text-align:left;">
				<b>SUBJECT</b>
			</td>
		<td style="padding-left:10px;padding-top:5PX;padding-bottom:5PX;text-align:left">
			<b><?php echo $subject_name; ?> </b></td>
        </tr>

</tbody></table> 
</td>
<td style="padding-left:1%" width="49%">
<table style="text-align:center;font-size:13px;" width="100%" align="left">
		<tbody><tr style="font-size:20px">
			<td colspan="2">
				<strong><?php echo $school; ?></strong>
			</td>
		</tr>
		<tr>
			<td style="padding-top:5PX" colspan="2">
				<b>MARK-LIST</b>
			</td>
		</tr>
		<tr>
			<td style="padding-top:5PX" colspan="2">
				<b>SESSION 2016-2017</b>
			</td>
		</tr>
		<tr>
			<td style="padding-top:5PX" colspan="2">
				<b>EXAM &nbsp; <?php echo $term_name; ?><br>   </b>
			</td>
          
		</tr>
</tbody></table>
<br><table style="text-align:center;font-size:15px;" width="100%" cellspacing="0" cellpadding="0" align="left">

		<tbody><tr>
			<td style="padding-left:10px; text-align:left ; padding-top:5PX;" width="15%">
				<b>	CLASS </b>
			</td>  
            <td style="padding-left:10px;text-align:left;padding-top:5PX;" width="15%">
				<b><?php echo $class_name; ?></b>
			</td>
			<td style="padding-left:10px ; text-align:left;padding-top:5PX;" width="15%">
				<b>SECTION  </b>
			</td>
			 <td style="padding-left:10px;text-align:left;padding-top:5PX;" width="15%">
				<b><?php echo $section_name; ?></b>
			</td>
		</tr>
	
		<tr>
			
			<td style="padding-left:10px;text-align:left;padding-top:5PX;">
				<b>DATE OF SUBMI</b>
			</td>
            <td style="padding-left:10px;text-align:left;padding-top:5PX;">
				<b> ..../......./201... </b>
			</td>
			<td style="padding-left:10px;padding-top:5PX;;padding-bottom:5PX;text-align:left;">
				<b>MAXIMUM MARKS</b>
			</td>
<td style="padding-left:10px;padding-top:5PX;padding-bottom:5PX;text-align:left"><b> ...................... </b></td>
		</tr>
<tr>
		</tr>
        	<tr><td style="padding-left:10px;padding-top:5PX;;padding-bottom:5PX;text-align:left;">
            <b>PASS MARKS</b>
        </td>
        <td style="padding-left:10px;padding-top:5PX;padding-bottom:5PX;text-align:left">
       <b> %</b>
        </td>
        
        <td style="padding-left:10px;padding-top:5PX;;padding-bottom:5PX;text-align:left;">
				<b>SUBJECT</b>
			</td>
<td style="padding-left:10px;padding-top:5PX;padding-bottom:5PX;text-align:left"><b>Hindi&nbsp;Reading Skill </b></td>
        </tr>

</tbody></table> 

</td>
</tr>
</tbody></table>







</div>


<br>
  <div style=" float:left;width:50%">
  <br>
<table style="text-align:center;font-size:15px" width="100%" border="1">
	<tbody>
		<tr>
			<th rowspan="2" width="70PX">
			S. NO.
			</th>
			<th rowspan="2" width="100PX">
			ROLL NO.
			</th>
			<th rowspan="2" width="PX">
			NAME
			</th>
			<?php 
			
$sst=mysql_query("select Distinct(exam_category_id) from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$term_id'");
$count_category=mysql_num_rows($sst);


			?>
			<th colspan="<?php echo $count_category; ?>" style="text-align:center !important;">
			MARKS OBTAINED
			</th>
			<th rowspan="2" width="100">
			Total
			</th>
		</tr>
		<tr>
		<?php 
		while($fft=mysql_fetch_array($sst))
		{
			$exam_category_id=$fft['exam_category_id'];
			$sst1=mysql_query("select `name` from `exam_category` where `id`='$exam_category_id'");
			$fft1=mysql_fetch_array($sst1);
			$category_name=$fft1['name'];
			?>
			<th width="20%" style="text-align:center !important;">
				<?php echo $category_name; ?>
			</th>
			<?php } ?>
		</tr>
<?php 

$set=mysql_query("select * from `student` where `class_id`='$class_id' && `section_id`='$section_id'");
while($fet=mysql_fetch_array($set)){
	$i++;
	$roll_no=$fet['roll_no'];
	$scholar_no=$fet['scholar_no'];
	$student_name=$fet['name'];
	?>
	<tr>
		<th  width="70PX">
			<?php echo $i; ?>
		</th>
		<th width="100PX">
			<?php echo $roll_no; ?>
		</th>
		<th  width="PX">
			<?php echo $student_name; ?>
		</th>
<?php 
$ssts=mysql_query("select Distinct(exam_category_id) from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$term_id'");
$count_category=mysql_num_rows($ssts);
 
		while($ffts=mysql_fetch_array($ssts))
		{
			$exam_category_id=$ffts['exam_category_id'];
			$total_marks=0;
			$sot=mysql_query("select * from `student_marks` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$term_id' && `exam_category_id`='$exam_category_id' && `scholar_no`='$scholar_no'");
			while($fot=mysql_fetch_array($sot)){
				
				$fetch_mark=$fot['marks'];
				$total_marks+=$fetch_mark;
			}
			?>
			<th width="20%" style="text-align:center !important;">
				<?php echo $total_marks; ?>
			</th>
			<?php } ?>
		<th  width="100">
			
		</th>
	</tr>
<?php } ?>


	</tbody>
</table>

</div>
<div style="float:right; width:48%">
<br>
<table style="text-align:center;font-size:15px" width="100%" border="1">
<tbody><tr>
<th rowspan="2" width="70PX">
S. NO.
</th>
<th rowspan="2" width="100PX">
ROLL NO.
</th>
<th rowspan="2" width="PX">
NAME</th>

<th colspan="3" style="text-align:center !important;">
MARKS OBTAINED
</th>

<th rowspan="2" width="100">
Total
</th>

</tr>
<tr>
<th width="10%">
I
</th>
<th width="10%">
II
</th>
<th width="10%">
III
</th>
</tr>

<?php 

$set=mysql_query("select * from `student` where `class_id`='$class_id' && `section_id`='$section_id'");
while($fet=mysql_fetch_array($set)){
	
	$roll_no=$fet['roll_no'];
	$student_name=$fet['name'];
	?>
	<tr>
		<th width="70PX">
			<?php echo $i++; ?>
		</th>
		<th width="100PX">
			<?php echo $roll_no; ?>
		</th>
		<th width="PX">
			<?php echo $student_name; ?>
		</th>
		<th colspan="3">
			
		</th>
		<th width="100">
			
		</th>
	</tr>
<?php } ?>

</tbody></table>
</div>
<br>
<br>
<table style="text-align:left;font-size:15px" width="100%">

<tbody><tr>
<td style="text-align:left; padding-left:15px">
<b>Passed ......................</b>
</td><td rowspan="3" style="padding-top:30px; text-align:center">
<b>Signature Teacher </b>
</td>
</tr>
<tr>
<td style="text-align:left; padding-left:15px">
<b>Failed .........................</b>
</td>
</tr>
<tr>
<td style="text-align:left; padding-left:15px">
<b> Total Student &nbsp;0 </b>
</td>
</tr>

</tbody></table><table>
</table></p>


								<table class="table table-bordered">
								
								<tbody>
								</tbody>
								</table>
							</div>
						</div>
			  
			</div>
			
		 </div>
	</div>
</body>

<?php footer();?>
<?php scripts();?>

</html>
