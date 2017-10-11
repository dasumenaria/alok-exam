<?php
include("index_layout.php");
include("database.php");
include("authentication.php");

$class=$_GET['cls'];
$section=$_GET['sec'];
$subject_fetch=$_GET['sub'];
$exam_name=$_GET['trm'];
$cat=$_GET['cat'];

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

$ster4=mysql_query("select `name` from `exam_category` where `id`='$cat'");
$fter4=mysql_fetch_array($ster4); 

$cat_name=$fter4['name'];

if(isset($_POST['sub'])){

//echo "<meta http-equiv='refresh' content='0;url=marks.php'>";
$class_id=$_POST['class_id'];
$section_id=$_POST['section_id'];
$subject_id=$_POST['subject_id'];
$sub_subject_id=$_POST['sub_subject_id'];
$term_id=$_POST['term'];
$category=$_POST['category'];
$marks=$_POST['marks'];

$query=mysql_query("select * from `student` where `class_id`='$class_id' && `section_id`='$section_id' order By `roll_no` ASC"); $i=0;
	 while($fets=mysql_fetch_array($query))
		{ $f++; $i++;
			$roll_no=$fets['roll_no'];
			$scholar_no=$fets['scholar_no'];
			
			$set=mysql_query("select * from `exam_mapping` where `class_id`='$class_id'  && `section_id`='$section_id' && `subject_id`='$subject_id' && `sub_subject_id`='$sub_subject_id' && `term_id`='$term_id' && `exam_category_id`='$category'");
				while($fet=mysql_fetch_array($set))
				{
					$exam_category_type=$fet['exam_category_type_id'];
					
					$student_marks_data=mysql_query("select * from `student_marks` where `scholar_no`='$scholar_no' && `subject_id`='$subject_id' && `sub_subject_id`='$sub_subject_id' && `term_id`='$term_id' && `exam_category_id`='$category' && `master_exam_type_id`='$exam_category_type'");
					$count=mysql_num_rows($student_marks_data);
					$student_dat=mysql_fetch_array($student_marks_data);
					$update_id=$student_dat['id'];
					$update_marks=$marks[$scholar_no][$exam_category_type];
					
					if(!empty($count)){
						
						mysql_query("update `student_marks` SET `scholar_no`='$scholar_no',`subject_id`='$subject_id',`sub_subject_id`='$sub_subject_id',`term_id`='$term_id',`exam_category_id`='$category',`master_exam_type_id`='$exam_category_type',`marks`='$update_marks' where `id`='$update_id'");
					}else if(empty($count)){
						
						mysql_query("insert into `student_marks` SET `scholar_no`='$scholar_no',`subject_id`='$subject_id',`sub_subject_id`='$sub_subject_id',`term_id`='$term_id',`exam_category_id`='$category',`master_exam_type_id`='$exam_category_type',`marks`='$update_marks'");
					}
					
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
					<div class="col-md-offset-1 col-md-3"><b>Subject:- </b><?php echo $su_name ;?></div>
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
									<?php 
									$set=mysql_query("select * from `exam_mapping` where `class_id`='$class' && `section_id`='$sect_id' && `subject_id`='$subject' && `sub_subject_id`='$sub_subject_id' && `term_id`='$exam_name' && `exam_category_id`='$cat'");
						while($fet=mysql_fetch_array($set))
						{
							$exam_category_type=$fet['exam_category_type_id'];
							$max_marks=$fet['max_marks'];
							
								$set1=mysql_query("select `Exam` from `exam_category_type` where `id`='$exam_category_type'");
								$fet1=mysql_fetch_array($set1);
								
								$exam=$fet1['Exam'];
								?>
                                    <th width="15%"><?php echo $exam; ?> (<?php echo $max_marks; ?>)</th>
						<?php } ?>
                                    
								</tr>
							</thead>
		<tbody>
<?php $query=mysql_query("select * from `student` where `class_id`='$class' && `section_id`='$section' order By `roll_no` ASC"); $i=0;
	 while($fets=mysql_fetch_array($query))
		{ 
			$roll_no=$fets['roll_no'];
			$scholar_no=$fets['scholar_no'];
			$student_name=$fets['name'];
			$query7=mysql_query("select `subject` from `subject` where `id`='$subject'");
			$fet7=mysql_fetch_array($query7);
			$subject_name=$fet7['subject'];
			$qwq.="$f,$roll_no,$student_name,$scholar_no,$subject_name";
			
			$slt=mysql_query("select * from `subject_allocation` where `class_id`='$class' && `section_id`='$section' && `elective`='$subject'");
			$elective_count=mysql_num_rows($slt);
			if($elective_count>0){
				
				$sts=mysql_query("select * from `elective` where `scholar_id`='$scholar_no' && `subject_id`='$subject'");
				$elec_count=mysql_num_rows($sts);
				if($elec_count>0){
					
				}
				else{
					continue;
				}
				
			}
			$f++; $i++;	 			
			?>		
			<tr>
				<td><?php echo $i ;?></td>				
				<td><?php echo $roll_no ;?></td>				
				<td><?php echo $scholar_no ;?></td>				
				<td><?php echo $student_name ;?></td>	

				<?php 
				$set=mysql_query("select * from `exam_mapping` where `class_id`='$class'  && `section_id`='$sect_id' && `subject_id`='$subject' && `sub_subject_id`='$sub_subject_id' && `term_id`='$exam_name' && `exam_category_id`='$cat'");
				while($fet=mysql_fetch_array($set))
				{
					$exam_category_type=$fet['exam_category_type_id'];
					$max_marks=$fet['max_marks'];
					
					$student_marks_data=mysql_query("select * from `student_marks` where `scholar_no`='$scholar_no' && `subject_id`='$subject' && `sub_subject_id`='$sub_subject_id' && `term_id`='$exam_name' && `exam_category_id`='$cat' && `master_exam_type_id`='$exam_category_type'");
					
					$student_marks_data_single=mysql_fetch_array($student_marks_data);
					$student_marks_data_single_marks=$student_marks_data_single['marks'];
					$set1=mysql_query("select `Exam` from `exam_category_type` where `id`='$exam_category_type'");
					$fet1=mysql_fetch_array($set1);
					$exam=$fet1['Exam'];
				?>
                <td><input class="number number_only check_max" maxmarks="<?php echo $max_marks;?>" name="marks[<?php echo $scholar_no; ?>][<?php echo $exam_category_type; ?>]" examcategorytype="<?php echo $exam_category_type; ?>" scholarno="<?php echo $scholar_no; ?>" value="<?php echo $student_marks_data_single_marks; ?>">
				<input class="form-control" type="hidden" name="class_id" value="<?php echo $class; ?>">
                <input class="form-control" type="hidden" name="section_id" value="<?php echo $section; ?>">
                <input class="form-control" type="hidden" name="subject_id" value="<?php echo $subject; ?>">
                <input class="form-control" type="hidden" name="sub_subject_id" value="<?php echo $sub_subject_id; ?>">
                <input class="form-control" type="hidden" name="term" value="<?php echo $exam_name; ?>">
                <input class="form-control" type="hidden" name="category" value="<?php echo $cat; ?>">
               
                </td>
                
				<?php } ?>

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
	
	$('.check_max').on('keyup',function(){
		var maxMarks = $(this).attr('maxmarks');
		var inputValue = $(this).val();
		if( parseInt(inputValue) > parseInt(maxMarks))
		{
			$(this).val('');
			alert('Input marks should br less than Max marks');
		}
		else
		{}
	});

	$(".number").on('keyup',function(){	
		var marks=$(this).val();
		
		if(marks.length >0){//alert(marks);
		var class_id=$(this).closest('td').find("input[name=class_id]").val();
		var section_id=$(this).closest('td').find("input[name=section_id]").val();
		var subject_id=$(this).closest('td').find("input[name=subject_id]").val();
		var sub_subject_id=$(this).closest('td').find("input[name=sub_subject_id]").val();
		var term=$(this).closest('td').find("input[name=term]").val();
		var category=$(this).closest('td').find("input[name=category]").val();
		var examcategorytype=$(this).closest('td').find('input').attr('examcategorytype');
		var scholarno=$(this).closest('td').find('input').attr('scholarno');
		var marks=$(this).val();
		
		 $.ajax({
				url: "update_assign_marks.php?class_id="+class_id+"&section_id="+section_id+"&subject_id="+subject_id+"&sub_subject_id="+sub_subject_id+"&term="+term+"&category="+category+"&examcategorytype="+examcategorytype+"&scholarno="+scholarno+"&marks="+marks,
					 
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

