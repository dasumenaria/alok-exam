<?php
include("index_layout.php");
include("database.php");
include("authentication.php");

$class=$_GET['cls'];
$section=$_GET['sec'];
$exam_name=$_GET['trm'];

 $fets=explode(',', $subject_fetch);
  
	 $subject=$fets[0];
	 $sub_subject_id=$fets[1];
 

 $sect_id=$section;

$ster=mysql_query("select `roman` from `master_class` where `id`='$class'");
$fter=mysql_fetch_array($ster); 

$cl_name=$fter['roman'];

$ster1=mysql_query("select `section` from `master_section` where `id`='$section'");
$fter1=mysql_fetch_array($ster1); 

$se_name=$fter1['section'];

$ster2=mysql_query("select `subject` from `subject` where `id`='$subject'");
$fter2=mysql_fetch_array($ster2); 

$su_name=$fter2['subject']; 

$ster3=mysql_query("select `name` from `master_term` where `id`='$exam_name'");
$fter3=mysql_fetch_array($ster3); 

$trm_name=$fter3['name'];

if(isset($_POST['sub'])){

//echo "<meta http-equiv='refresh' content='0;url=marks.php'>";
$class_id=$_POST['class_id'];
$section_id=$_POST['section_id'];
$term_id=$_POST['term_id'];
$max_attendance=$_POST['max_attendance'];
$attendance=$_POST['attendance'];

$query=mysql_query("select * from `student` where `class_id`='$class_id' && `section_id`='$section_id' order By `name`"); $i=0;
	 while($fets=mysql_fetch_array($query))
		{ $f++; $i++;
			$roll_no=$fets['roll_no'];
			$scholar_no=$fets['scholar_no'];
			 $max_attendance_value=$max_attendance[$scholar_no];
			 $attendance_value=$attendance[$scholar_no];
			 
			 $slt=mysql_query("select * from `attendance` where `scholar_no`='$scholar_no' && `term`='$term_id'");
			 $flt=mysql_fetch_array($slt);
			 $cunt=mysql_num_rows($slt);
			 @$updt_id=$flt['id'];
			 if($cunt>0){
				 mysql_query("update `attendance` SET `max_attendance`='$max_attendance_value',`attendance`='$attendance_value' where `id`='$updt_id'");
			 }else if(empty($cunt)){
				 
				 mysql_query("insert into `attendance` SET `scholar_no`='$scholar_no',`term`='$term_id',`max_attendance`='$max_attendance_value',`attendance`='$attendance_value'");
			 }
			 
		}	

}

?>
<html>
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Marks | Fill</title>
</head>
<?php contant_start(); menu();  ?>
<body>
	<div class="page-content-wrapper">
		 <div class="page-content">
			<div class="portlet box blue">
				<div class="portlet-title">
					<div class="caption">
						<i class="fa fa-gift"></i>Fill Marks for Category - 
						<b><?php echo $cat_name; ?></b>
					</div>
				</div>
				<div class="col-md-offset-1 col-md-9" style="padding-top:10px;font-size:15px;">
					<div class="col-md-2"><b>Class:- </b><?php echo $cl_name ;?></div>
					<div class="col-md-offset-1 col-md-2"><b>Section:- </b><?php echo $se_name ;?></div>
					<div class="col-md-offset-1 col-md-3"><b>Attendance</b></div>
					<div class="col-md-offset-1 col-md-2"><b>Term:- </b><?php echo $trm_name ;?></div>
					
				</div>
<div class="portlet-body">
	<div class="table-scrollable">
	<form  class="form-horizontal" id="form_sample_2"  role="form" method="post"> 
				
                
	<table class="table   table-hover" width="100%" style="font-family:Open Sans;">
								<thead>
								<tr style="background:#F5F5F5">
									<th width="5%">S.No.</th>
									<th>Roll No.</th>
                                    <th >Scholar No.</th>
									<th >Student Name</th>
									<th >Total Meeting</th>
									<th >Meeting Attend</th>
								</tr>
							</thead>
				<input class="form-control" type="hidden" id="cls" name="class_id" value="<?php echo $class; ?>">
                <input class="form-control" type="hidden" id="sec" name="section_id" value="<?php echo $section; ?>">
                <input class="form-control" type="hidden" id="trm" name="term_id" value="<?php echo $exam_name; ?>">
		<tbody>
<?php $query=mysql_query("select * from `student` where `class_id`='$class' && `section_id`='$section' order By `name`"); $i=0;
	 while($fets=mysql_fetch_array($query))
		{ 	$f++; $i++;
			$roll_no=$fets['roll_no'];
			$scholar_no=$fets['scholar_no'];
			$student_name=$fets['name'];
			
			$slt=mysql_query("select `attendance`,`max_attendance` from `attendance` where `scholar_no`='$scholar_no' && `term`='$exam_name'");
			$flt=mysql_fetch_array($slt);
			
			$attend=$flt['attendance'];
			$max_attend=$flt['max_attendance'];
			?>
			<tr>
				<td><?php echo $i ;?></td>				
				<td><?php echo $roll_no ;?></td>				
				<td><?php echo $scholar_no ;?></td>				
				<td><?php echo $student_name ;?></td>	

                <td>
				<input class="number number_only check_max" maxmarks="<?php echo $max_marks;?>" name="max_attendance[<?php echo $scholar_no; ?>]" examcategorytype="max_attendance" scholarno="<?php echo $scholar_no; ?>" value="<?php echo $max_attend; ?>">
				</td>
				<td>
				<input class="number number_only check_max" maxmarks="<?php echo $max_marks;?>" name="attendance[<?php echo $scholar_no; ?>]" examcategorytype="attendance" scholarno="<?php echo $scholar_no; ?>" value="<?php echo $attend; ?>">
				</td>
				
                </td>
			</tr>
		<?php } ?>
		</tbody>
	</table>
	<div id="data"></div>
	<div class="col-md-offset-5 col-md-6" style="padding-top:10px;">
	<button type="submit" name="sub" class="btn btn-primary">Submit</button>
	<button type="reset" class="btn default">Cancel</button>
</div>
	</form>
</div>

</div>
</div>
</div>
</div>

</body>
<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script>
jQuery(document).ready(function() {
	<!--- NUMBER VALIDATION  ------>		
	$('.number_only').live('keyup',function(){
		var inputtxt=  $(this).val();
		var numbers =  /^[0-9ATML]*\.?[0-9]*$/;
		if(inputtxt.match(numbers))  
		{}else  
		{  
			$(this).val('');
			return false;  
		}
	});
 
	$(".number").on('keyup',function(){	
		var marks=$(this).val();
		if(marks>0){
		var class_id=$("#cls").val();
		var section_id=$("#sec").val();
		var term=$("#trm").val();
		var scholarno=$(this).closest('td').find('input').attr('scholarno');
		var examcategorytype=$(this).closest('td').find('input').attr('examcategorytype');
		var marks=$(this).val();
		 $.ajax({
				url: "update_attendance_marks.php?class_id="+class_id+"&section_id="+section_id+"&term="+term+"&scholarno="+scholarno+"&marks="+marks+"&examcategorytype="+examcategorytype,
				}).done(function(response) {
			   $("#data").html(""+response+"");
			}); 
		}
	});
	

});
</script>

<?php footer();?>
<?php scripts();?>
</html>

