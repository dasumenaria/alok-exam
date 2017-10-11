<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");

if(isset($_POST['sub']))
{
	$class_id=$_POST['class_id'];
	$subject_id=$_POST['subjc'];
	$section_id=$_POST['section_id'];
	$term_id=$_POST['term_id'];
 	$category_id=$_POST['category_id'];


$ssl=mysql_query("select * from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$term_id' && `exam_category_id`='$category_id'");
while($ffl=mysql_fetch_array($ssl)){
	
	$d_exam_category_type_id=$ffl['exam_category_type_id'];
	$d_subject_id=$ffl['subject_id'];
	$d_sub_subject_id=$ffl['sub_subject_id'];
	$d_max_marks=$ffl['max_marks'];
	
	$del_array[$class_id][$section_id][$d_subject_id][$d_sub_subject_id][$term_id][$category_id][$d_exam_category_type_id]=$d_max_marks;
}
mysql_query("delete from `exam_mapping` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$term_id' && `exam_category_id`='$category_id'");
 
							$f1=0;
							$qr=mysql_query("select `subject_id`,`sub_subject_id` from `subject_allocation` where `class_id`='$class_id' && `elective`='0' && `section_id`='$section_id' ");
							while($fr=mysql_fetch_array($qr))
							{$c++;
						
								
						
								$sub_id=$fr['subject_id'];
								$sub_subject_id=$fr['sub_subject_id'];
								
								
								
								  $s1=mysql_query("select `subject` from `subject` where `id`='$sub_id'");
								  $f1=mysql_fetch_array($s1);
								  
								  $sub_name=$f1['subject'];
								
							
							
							 
							$i=0;

									  $qur1=mysql_query("select `id` from `exam_category_type` ORDER BY `id`");
									  while($fet1=mysql_fetch_array($qur1))
									  {$i++;
										  $exam_id=$fet1['id'];
										  
										$sets=mysql_query("select * from `exam_mapping` where `class_id`='$class_id' && `exam_category_type_id`='$exam_type' && `section_id`='$section_id' && `term_id`='$term_id'");
											$count=mysql_num_rows($sets);
										   
										  
										  $i++;
										    $scholar_no;
										    $elec_id;
										 // echo "---------------";
										    $qqqq= (int)@$_POST["check_".$c."_".$exam_id];
											//echo "<br>";
										  // echo "---------";
										  if($qqqq==1){
											  
											 $updt_marks=$del_array[$class_id][$section_id][$sub_id][$sub_subject_id][$term_id][$category_id][$exam_id];
									
											 mysql_query("insert into `exam_mapping` SET `class_id`='$class_id',`exam_category_type_id`='$exam_id',`subject_id`='$sub_id',`sub_subject_id`='$sub_subject_id',`section_id`='$section_id',`term_id`='$term_id',`exam_category_id`='$category_id',`max_marks`='$updt_marks'");
											 	 
												
											}
			 }
			 
	 }
 	 
	 $qr=mysql_query("select `elective`,`sub_subject_id` from `subject_allocation` where `class_id`='$class_id' && `subject_id`='0' && `section_id`='$section_id'");
							while($fr=mysql_fetch_array($qr))
							{$c++;
								echo $sub_id=$fr['elective'];
								$sub_subject_id=$fr['sub_subject_id'];
								
								  $s1=mysql_query("select `subject` from `subject` where `id`='$sub_id'");
								  $f1=mysql_fetch_array($s1);
								  
								  $sub_name=$f1['subject'];
								 
							
							$i=0;

									  $qur1=mysql_query("select `id` from `exam_category_type` ORDER BY `id`");
									  while($fet1=mysql_fetch_array($qur1))
									  {$i++;
										  $exam_id=$fet1['id'];
										  
										$sets=mysql_query("select * from `exam_mapping` where `class_id`='$class_id' && `exam_category_type_id`='$exam_type' && `section_id`='$section_id' && `term_id`='$term_id'");
											$count=mysql_num_rows($sets);
										   
										  
										  $i++;
										    $scholar_no;
										    $elec_id;
										 
										    $qqqq= (int)@$_POST["check_".$c."_".$exam_id];
											 
										  if($qqqq==1){
											 
											 mysql_query("insert into `exam_mapping` SET `class_id`='$class_id',`exam_category_type_id`='$exam_id',`subject_id`='$sub_id',`sub_subject_id`='$sub_subject_id',`section_id`='$section_id',`term_id`='$term_id',`exam_category_id`='$category_id'");
										  }
 
			 }
	 }
	 							 
}



 ?>
<html >
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Master | Marks</title>
</head>
<?php contant_start(); menu();  ?>
<body>
<div class="page-content-wrapper">
		<div class="page-content">
			<div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-puzzle"></i> Exam Mapping
				</div>
			</div>
			<div class="portlet-body form">
			<!-- BEGIN FORM-->
				<form  class="form-horizontal" id="form_sample_2"  role="form" method="post"> 
					<div class="form-body">
						<div class="form-group">
							<label class="control-label col-md-3">Class</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user" required name="class_id" >
									<option value="">---Select Class---</option>
								    <?php 
									$query=mysql_query("select * from `master_class` order by `id`");
									while($fetch=mysql_fetch_array($query))
									{$i++;
										$class_id=$fetch['id'];
										$roman=$fetch['roman'];
									?>
									<option value="<?php echo $class_id; ?>"><?php echo $roman; ?></option>
									<?php } ?>
									</select>
								</div>
								<span class="help-block">
								please select Class category</span>
							</div>
						</div>
					<div id="dt"></div>
					<div id="data"></div>
					
					 	 
					</div>
					

				</form>
			</div>
				<!-- END FORM-->
				 
		</div>		   
			</div>
	</div>

</body>
<?php footer();?>
<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script>
		$(document).ready(function() {

$(".chk_input").live("click",function(){
				  
	var attr_val= $(this).attr('chk_val');			   
	var valu=$(this).is( ':checked' );
	
if(valu==0)
	{
		$(".all_chk"+attr_val ).parent('span').removeClass('checked');
		$(".all_chk"+attr_val ).removeAttr('checked','checked');
	}
else
	{
		$(".all_chk"+attr_val ).parent('span').addClass('checked');
		$(".all_chk"+attr_val ).attr('checked','checked');
	}
});
	 	
		
	// initiate layout and plugins
	$(".user").live("change",function(){
		var t=$(this).val();
		
		$.ajax({
		url: "ajax_assign.php?pon="+t,
		}).done(function(response) {
			$("#dt").html(""+response+"");
			$("#data").html("");
		});
	});	  
			  
			  
			  
	$(".user1").live("change",function(){
		var s=$(this).val();
		var t=$(".user").val();

		$.ajax({
		url: "ajax_assign.php?pon="+t+"&pon1="+s,
			}).done(function(response) {
			$("#tr").html(""+response+"");
		});
	});
			  
	$(".user3").live("change",function(){
		var m=$(this).val();
		if(m.length > 0){
			var t=$(".user").val();
			$.ajax({
				url: "ajax_assign.php?pon="+t+"&pon1="+m,
				}).done(function(response) {
				$("#ms").html(""+response+"");
			});
		}else
		{$("#ms").html("");
		}
	});
			  
	$(".user4").live("change",function(){
		var l=$(this).val();
		if(l.length > 0)
		{
			var m=$(".user3").val();
			var t=$(".user").val();
			
			$.ajax({
				url: "ajax_assign.php?pon="+t+"&pon1="+m+"&pon3="+l,
				}).done(function(response){
				$("#cs").html(""+response+"");
			});
		}
		else
		{
			$("#cs").html("");
		}
	});
			  
			  
	$(".ust").live("change",function(){
	
		var q=$(this).val();
		if(q.length > 0)
		{
			var l=$(".user4").val();
			var t=$(".user").val();
			var s=$(".user1").val();
			var v=$(".user3").val();
	
			$.ajax({
				url: "ajax_assign.php?pon="+t+"&pon1="+v+"&pon3="+l+"&pon5="+q,
				}).done(function(response) {
				$("#data").html(""+response+"");
			});
		}
		else
		{
			$("#data").html("");
		}
	});
			  
			  
			  
			  
		});
	</script>
		
<?php scripts();?>
		 
  
</html>