<?php 
include("index_layout.php"); 
include("database.php"); 
include("authentication.php");

///////////////////////////////EXCEL FILE UPLOAD//////////////////////////////////////////
	
if(isset($_POST["Import"]))
{
	 $session=$_SESSION['sess'];
	 $exam_name=$_POST['exam_name'];
	 $class_id=$_POST['roman'];
	 $subject_fetching=$_POST['subject'];
	 $section_id=$_POST['section'];
	 $category_id=$_POST['category_id'];

	 $feet=explode(',', $subject_fetching);
	 
		$subject_id=$feet[0];
		$sub_subject_id=$feet[1];
		$sect_id=$section_id;
		
 
	$filename=$_FILES["file"]["tmp_name"];
	$fil=$_FILES['file']['name'];
	$ext=pathinfo($fil, PATHINFO_EXTENSION);

	$set=mysql_query("select `exam_category_type_id` from `exam_mapping` where `class_id`='$class_id' && `section_id`='$sect_id' && `subject_id`='$subject_id' && `sub_subject_id`='$sub_subject_id' && `exam_category_id`='$category_id' && `term_id`='$exam_name'");
	while($fet=mysql_fetch_array($set))
	{
		$exam_type_id[]=$fet['exam_category_type_id'];
	}
	
    if(($_FILES["file"]["size"] >0) && ($ext=='csv'))
    { 
        $file = fopen($filename, "r");
 
	$count = 0;                                         // add this line
	while (($emapData = fgetcsv($file, 10000, ",")) !== FALSE)
	{ 
    $count++;  	// add this line


    if($count>1 && !empty($emapData[3])){  

	$sql4 = "SELECT `id` from `subject` where `subject`='$emapData[4]'";
	$sets1=mysql_query($sql4);
	$fets1=mysql_fetch_array($sets1);
	$sub_id=$fets1['id'];
	$exacle_marks=5;
	 
 	foreach($exam_type_id as $exam_type_id_value)
		{
			
			$sql2= "select `id` from `student_marks` where `scholar_no`='$emapData[3]' && `subject_id`='$sub_id' && `sub_subject_id`='$sub_subject_id' && `term_id`='$exam_name' && `exam_category_id`='$category_id' && `master_exam_type_id`='$exam_type_id_value'";
			$check=mysql_query($sql2);
			$cunt=mysql_num_rows($check);
			 			
				if($cunt>0)
				{
					$ftc_exmdata=mysql_fetch_array($check);
					$update_id=	 $ftc_exmdata['id'];
					
					 $sqlupdate="update `student_marks` SET `scholar_no`='$emapData[3]',`subject_id`='$sub_id',`sub_subject_id`='$sub_subject_id',`term_id`='$exam_name',`master_exam_type_id`='$exam_type_id_value',`marks`='$emapData[$exacle_marks]',`exam_category_id`='$category_id' where `id` = '$update_id'";
					mysql_query($sqlupdate);
					
				}
				else
				{
					$sql3="insert into `student_marks` SET `scholar_no`='$emapData[3]',`subject_id`='$sub_id',`sub_subject_id`='$sub_subject_id',`term_id`='$exam_name',`master_exam_type_id`='$exam_type_id_value',`marks`='$emapData[$exacle_marks]',`exam_category_id`='$category_id'";
					mysql_query($sql3);
					
				}
				
			$exacle_marks++;
		
		}
     }
 }
 
 
 fclose($file);
       // echo 'CSV File has been successfully Imported';
        header('Location: upload_marks.php');
    }  	
    else{
		// echo Wrong File Please TRy Again';
		$msg=1;
		?>
		<script>
		alert('Invalid File:Please Upload CSV File');
		</script>
		<?php
        echo 'Invalid File:Please Upload CSV File';
}
exit;
}

?>
<html>
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Marks | Upload</title>
</head>
<?php contant_start(); menu();  ?>
<body>
	<div class="page-content-wrapper">
		 <div class="page-content">
			
			

			<div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-puzzle"></i> Upload Marks
				</div>
			</div>
			<div class="portlet-body form">
			<!-- BEGIN FORM-->
				<form  class="form-horizontal" id="form_sample_2" enctype="multipart/form-data" role="form" method="post"> 
					<div class="form-body">
						<div class="form-group">
							<label class="control-label col-md-3">Class</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user" required name="roman">
									<option value="">---Select Class---</option>
								   
								   <?php 
								   $query=mysql_query("select * from `master_class` Order By `id`");
								   while($fet=mysql_fetch_array($query))
								   {$f++;
										$class_id=$fet['id'];
										if($class_id<1){
											continue;
										}
										$class_name=$fet['roman'];
								   ?>
									<option value="<?php echo $class_id; ?>"><?php echo $class_name; ?></option>
								   <?php } ?>
									</select>
								</div>
								<span class="help-block">
								please select class category</span>
							</div>
						</div>
					
					<div id="call"></div>
					
					 
						 
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
	
		// initiate layout and plugins
		$(".user").live("change",function(){
			var t=$(this).val();
			
			$.ajax({
				url: "ajax_upload.php?pon="+t,
				}).done(function(response) {
				$("#call").html(""+response+"");
			});
		});	  
		// initiate layout and plugins
		$(".user1").live("change",function(){
			var s=$(this).val();
			var t=$(".user").val();
			if(s.length>0){
			$.ajax({
				url: "ajax_upload.php?pon1="+s+"&pon="+t,
				}).done(function(response) {
				$("#sec").html(""+response+"");
			});
			}else{$("#sec").html("");
			}
		});
		
		// initiate layout and plugins
		$(".user2").live("change",function(){
			var t=$(".user").val();
			var s=$(".user1").val();
			var v=$(".user2").val();
			if(v.length>0){
			// var t=$("#login_id").val();
			$.ajax({
				url: "ajax_upload.php?cls="+t+"&sec="+s+"&sub="+v,
				}).done(function(response) {
				$("#exl").html(""+response+"");
			});
			}else
			{$('#exl').html('');}
		});  
		
		
		////////////
		$(".user2").live("change",function(){
			var t=$(".user").val();
			var s=$(".user1").val();
			var v=$(".user2").val();
			$.ajax({
				url: "ajax_upload.php?cls="+t+"&sec="+s+"&sub="+v,
				}).done(function(response) {
				$("#exl").html(""+response+"");
			});
		}); 
		////////////			  
	
	});
	</script>

<?php scripts();?>

</html>