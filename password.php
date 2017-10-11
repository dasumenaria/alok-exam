<?php
include("index_layout.php");
include("database.php");
include("authentication.php");
  
$school_id=$_SESSION['school_id'];

if(isset($_POST['sub'])){
	
	$old_pass=$_POST['old_pass']; 
	$old_pass1=base64_encode($old_pass);
	$new_pass=$_POST['new_pass']; 
	$new_pass1=base64_encode($new_pass);
	$confirm_pass=$_POST['confirm_pass'];
	$confirm_pass1=base64_encode($confirm_pass);
	
	@session_start();
	$user_id=$_SESSION['id'];
	
	$set=mysql_query("select `password` from `login` where `id`='$user_id'");
	$fet=mysql_fetch_array($set);
	$password=$fet['password'];
	//echo "<br>".$new_pass1.'<br>'.$confirm_pass1;
	// exit;
	if($password==$old_pass1 && $new_pass1==$confirm_pass1){
	 	
		mysql_query("update `login` SET `password`='$confirm_pass1' where `id`='$user_id'");
		
		/////////////EXAM///SESSION//CODE////START////////////////////////////////////////////////	
		
		$st=mysql_query("select * from `wwwsmtma_exam_session`.`school` where `id`!='$school_id'");
		$ft=mysql_fetch_array($st);
		$dbs=$ft['db_code'];
		
		$st=mysql_query("select * from `wwwsmtma_exam_session`.`login_session` where `school_id`!='$school_id'");
		$ft=mysql_fetch_array($st);
		$sess=$ft['session'];
		
		$sesssion_final=$dbs.'_'.$sess;
		
		mysql_query("update `".$sesssion_final."`.`login` SET `password`='$confirm_pass1' where `id`='$user_id'");
		
		mysql_query("update `wwwsmtma_exam_session`.`login` SET `password`='$confirm_pass1' where `id`='$user_id'");
		
		/////////////EXAM///SESSION//CODE////END///////////////////////////////////////////////////			
		?>
		<script>
		alert("Password Is Change Successfully");
		</script>
	<?php 	
	}
	 
	if($password!=$old_pass1){
	
	?>
		<script>
			alert("Current Password Is Not Correct");
		</script>
	<?php 
	}
	
	if($new_pass1!=$confirm_pass1){
		
	?>
		<script>
			alert("Confirm Is Not Match");
		</script>
    <?php 
	}
	 
}

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
								<i class="fa fa-gift"></i>Change Password
							</div>
						 
						</div>
						<div class="portlet-body form">
							<form class="form-horizontal" role="form" method="post">
								<div class="form-body">
							 		 
									<div class="form-group">
										<label class="col-md-3 control-label">Current Password</label>
										<div class="col-md-4">
											<input class="form-control" name="old_pass" placeholder="*******" type="password" value="">
										</div>
									 
									</div>
									  
									
									<div class="form-group">
										 
										<label class="col-md-3 control-label">New Password</label>
										<div class="col-md-4">
											<input class="form-control"  name="new_pass" reqiured placeholder="*******" type="password" value="">
										</div>
									</div>
									
										<div class="form-group">
										 
										<label class="col-md-3 control-label">Confirm Password</label>
										<div class="col-md-4">
											<input class="form-control"  name="confirm_pass" reqiured placeholder="*******" type="password" value="">
										</div>
									</div>
									 
									 
								</div>
								<div class="form-actions right1">
									<button style="margin-left:35%" type="reset" class="btn default">Cancel</button>
									<button type="submit" name="sub" class="btn green">Submit</button>
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