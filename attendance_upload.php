<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");
$login_id=$_SESSION['id'];
 ///////////////////////////////EXCEL FILE UPLOAD//////////////////////////////////////////
	
if(isset($_POST["Import"]))
{
		$term=$_POST['exam_name'];
		//First we need to make a connection with the database
 		$filename=$_FILES["file"]["tmp_name"];
		$fil=$_FILES['file']['name'];
		$ext=pathinfo($fil, PATHINFO_EXTENSION);
		if(($_FILES["file"]["size"] > 0) && ($ext=='csv'))
		{
			$file = fopen($filename, "r");
			$emapData = fgetcsv($file, 10000, ",");
			$emapData=array_filter($emapData);
			$count = 0;                                         // add this line
			while (($emapData = fgetcsv($file, 10000, ",")) !== FALSE)
			{ 
				$count++;                                      // add this line
				if($count>0){ 
					if(!empty($emapData[3]))
					{
						mysql_query("delete from`attendance` where `scholar_no`='$emapData[3]' && `term`='$term'");
						$sql1 = "INSERT into attendance(scholar_no,term,attendance,max_attendance) values ('$emapData[3]','$term','$emapData[5]','$emapData[4]')";
						mysql_query($sql1);
						$sql1;
					}
				}     
			}
			fclose($file);
			header('Location: attendance_upload.php');
		}  	
		else
		{
			$msg=1;
			echo 'Invalid File:Please Upload CSV File';
		}
}

 ?>
<html>
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Marks</title>
</head>
<?php contant_start(); menu();  ?>
<body>
	<div class="page-content-wrapper">
		 <div class="page-content">
			
			
			
			<div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-puzzle"></i> Upload Attendance Sheet
				</div>
			</div>
			<div class="portlet-body form">
			<!-- BEGIN FORM-->
				<form  enctype="multipart/form-data" class="form-horizontal" id="form_sample_2"  role="form" method="post"> 
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
										$class_name=$fet['roman'];
										 
										$st1=mysql_query("select `role` from `login` where `id`='$login_id'");
										$ft1=mysql_fetch_array($st1);
										
										$login_role=$ft1['role'];
										if($login_role=='1'){
											
											
										$s1=mysql_query("select * from `login` where `id`='$login_id'");
										$f1=mysql_fetch_array($s1);
										
										$staff_class_count=mysql_num_rows($s1);
										$cls_id=$f1['class'];
										if($staff_class_count>0){
											
											if($cls_id==$class_id){
			 				   ?>
									<option value="<?php echo $class_id; ?>"><?php echo $class_name; ?></option>
											<?php } } }
										else if($login_role==2){
											?>
									<option value="<?php echo $class_id; ?>"><?php echo $class_name; ?></option>
									
<?php									}
										
										} ?>
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
		if(t.length >0){
		$.ajax({
			url: "ajax_attendance_upload.php?pon="+t,
			}).done(function(response) {
			$("#call").html(""+response+"");
		});
		}else
		{$("#call").html("");}
	});	  
	
	// initiate layout and plugins
	$(".user1").live("change",function(){
		var s=$(this).val();
		var t=$(".user").val();
		if(s.length >0){
		$.ajax({
			url: "ajax_attendance_upload.php?pon1="+s+"&pon="+t,
			}).done(function(response) {
			$("#rpt").html(""+response+"");
		});
		}
		else
		{$("#rpt").html("");}
	});	  
	// initiate layout and plugins
	$(".user2").live("change",function(){
	
		var u=$(this).val();
		if(u.length >0){
		var t=$(".user").val();
		var s=$(".user1").val();
		$.ajax({
			url: "ajax_attendance_upload.php?pon1="+s+"&pon="+t+"&pon3="+u,
			}).done(function(response) {
			$("#sht").html(""+response+"");
		});
		}
		else
		{$("#sht").html("");}
	});	  
});
</script>
	 
<?php scripts();?>

</html>