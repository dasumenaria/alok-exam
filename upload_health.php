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
	 $health_id=$_POST['health_id'];
	 $section_id=$_POST['section'];
 
	$sect_id=$section_id;
		
     
	$filename=$_FILES["file"]["tmp_name"];
	$fil=$_FILES['file']['name'];
	$ext=pathinfo($fil, PATHINFO_EXTENSION);

	 
    if(($_FILES["file"]["size"] >0) && ($ext=='csv'))
    { 
        $file = fopen($filename, "r");
 
	$count = 0;                                         // add this line
	while (($emapData = fgetcsv($file, 10000, ",")) !== FALSE)
	{ 
    $count++;  	// add this line


    if($count>1){  


	$sql4 = "SELECT `id` from `subject` where `subject`='$emapData[4]'";
	$sets1=mysql_query($sql4);
	$fets1=mysql_fetch_array($sets1);
	$sub_id=$fets1['id'];
	 
	   
	  $sql2= "select * from `student_health` where `scholar_no`='$emapData[3]' && `master_health_id`='$health_id'";
	  $check=mysql_query($sql2);
	  $cunt=mysql_num_rows($check);
	  
	  if($cunt>0)
	  {
		  ?>
		  <script>
			alert("Marks Is Already In DataBase");
		  </script>
		  <?php 
	  }
	  else{
		   
			    $sql3="insert into `student_health` SET `scholar_no`='$emapData[3]',`master_health_id`='$health_id',`value`='$emapData[5]'";
			   mysql_query($sql3);
			   $exacle_marks++;
		 

	  }

    }

}
 
fclose($file);
       // echo 'CSV File has been successfully Imported';
        header('Location: upload_health.php');
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
					<i class="icon-puzzle"></i> Upload Health Sheet
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
	
	$(".user").live("change",function(){
		var t=$(this).val();
		if(t.length > 0){
		$.ajax({
			url: "ajax_upload_health.php?pon="+t,
			}).done(function(response) {
			$("#call").html(""+response+"");
		});
		}
		else
		{$("#call").html("");}
	});	  
	
	
	// initiate layout and plugins
	$(".user1").live("change",function(){
	
		var s=$(this).val();
		if(s.length > 0){
		var t=$(".user").val();
		$.ajax({
			url: "ajax_upload_health.php?pon1="+s+"&pon="+t,
			}).done(function(response) {
			$("#sec").html(""+response+"");
		});
		}
		else
		{$("#sec").html("");}
	});
	
	// initiate layout and plugins
	$(".user2").live("change",function(){
		var t=$(".user").val();
		var s=$(".user1").val();
		var v=$(".user2").val();
		if(v.length > 0){
		// var t=$("#login_id").val();
		$.ajax({
			url: "ajax_upload_health.php?cls="+t+"&sec="+s+"&sub="+v,
			}).done(function(response) {
			$("#exl").html(""+response+"");
		});
		}
		else
		{$("#exl").html("");}
	});  
	
	
	////////////
	$(".user2").live("change",function(){
		var t=$(".user").val();
		var s=$(".user1").val();
		var v=$(".user2").val();
		if(v.length > 0){
		$.ajax({
			url: "ajax_upload_health.php?cls="+t+"&sec="+s+"&sub="+v,
			}).done(function(response) {
			$("#exl").html(""+response+"");
		});
		}
		else
		{$("#exl").html("");}
	}); 
////////////			  

});
</script>

<?php scripts();?>

</html>