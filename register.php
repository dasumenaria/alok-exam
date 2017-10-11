<?php
 include("index_layout.php");
 include("database.php");
 include("authentication.php");
 
 
 if(isset($_POST['sub_reg'])){
	
  $name=$_POST['fullname'];	
  $gender=$_POST['gender'];
  $class=$_POST['class'];
  $section=$_POST['sec'];
  $subject=$_POST['subject'];
  $username=$_POST['username'];
  $password=md5($_POST['password']);
  $role=$_POST['role']; 
  
mysql_query("insert into `login` SET `name`='$name',`gender`='$gender',`class`='$class',`section`='$section',`subject`='$subject',`username`='$username',`password`='$password',`role`='$role',`flag`='1'");  
header("location:register.php");
}
 ?>
<html>
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Register</title>
</head>
<?php contant_start(); menu();  ?>
<body>
	<div class="page-content-wrapper">
		 <div class="page-content">
			<div class="portlet box blue">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="icon-puzzle"></i> Add Staff
                    </div>
                </div>
                <div class="portlet-body form">
			<!-- BEGIN FORM-->
				<form  class="form-horizontal" id="form_sample_2"  role="form" method="post"> 
					<div class="form-body">
						                      <div class="form-group">
													<label class="col-md-3 control-label">Full Name</label>
													<div class="col-md-4">
														<input class="form-control" placeholder="Enter Name" required type="text" name="fullname">
														<span class="help-block">
													Please Enter Name</span>
													</div>
												</div>
												<div class="form-group">
												
												<div class="radio-list">
												
													<label class="col-md-3 control-label">Gender</label>
														<label class="radio-inline">
														<span><input type="radio" name="gender" value="Male" checked=""></span> Male </label>
														<label class="radio-inline">
														<span class="checked"><input type="radio" name="gender" value="Female" checked=""></span> Female </label>
													</div>
												</div>
						
						<div class="form-group">
							<label class="control-label col-md-3">Class</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user" required name="class">
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
								Please select Class category</span>
							</div>
						</div>
					 <div id="call1"> 
						<div class="form-group" id="call">
							<label class="control-label col-md-3">Section</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control" required name="section">
									<option value="">---Select Section---</option>
								    <?php 
									$query1=mysql_query("select * from `master_section` order by `id`");
									while($fetch1=mysql_fetch_array($query1))
									{
										$i++;
										$sec_id=$fetch1['id'];
										$section=$fetch1['section'];
									?>
									<option value="<?php echo $sec_id; ?>"><?php echo $section; ?></option>
									<?php } ?>
									</select>
								</div>
								<span class="help-block">
								Please select Section category</span>
							</div>
						</div>
                    </div>
					<div id="call">
					<div class="form-group">
							<label class="control-label col-md-3">Subject</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control" required name="sub">
									<option value="">---Select Subject---</option>
								    <?php 
									$query2=mysql_query("select * from `subject` order by `id`");
									while($fetch2=mysql_fetch_array($query2))
									{
										$i++;
										$sub_id=$fetch2['id'];
										$subject=$fetch2['subject'];
									?>
									<option value="<?php echo $sub_id; ?>"><?php echo $subject; ?></option>
									<?php } ?>
									</select>
								</div>
								<span class="help-block">
								Please select subject category</span>
							</div>
						</div>
                       </div>     
						<div class="radio-list">
													<label class="col-md-3 control-label">Role</label>
													
													<?php 
													$quer=mysql_query("select * from `role` Order By `id` DESC");
													while($feqr=mysql_fetch_array($quer))
													{
														
															$role_id=$feqr['id'];
															$role_name=$feqr['role'];
													
													?>
														<label class="radio-inline">
														<span><input type="radio" name="role" value="<?php echo $role_id; ?>" checked=""></span> <?php echo $role_name; ?> </label>
											   <?php } ?>
													</div>
												</div>
					 
					                            <div class="form-group">
													<label class="col-md-3 control-label">User Name</label>
													<div class="col-md-4">
														<input class="form-control" placeholder="User Name" required type="text" name="username">
														<span class="help-block">
														Please Enter User Name </span>
													</div>
												</div>
					 	 
					                            <div class="form-group">
													<label class="col-md-3 control-label">Password</label>
													<div class="col-md-4">
														<input class="form-control" placeholder="*****" required type="password" name="password">
														<span class="help-block">
														Please Enter Password </span>
													</div>
												</div>
					
					
					<div class="form-actions top">
						<div class="row">
							<div class="col-md-offset-3 col-md-9">
								<button type="submit" name="sub_reg" class="btn green">Submit</button>
								<button type="button" class="btn default">Cancel</button>
							</div>
						</div>
					</div>
				  <br>
				</form>
				</div>
			</div>
		 </div>
	</div>
</body>

<?php footer();?>
<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script>
$(document).ready(function() {		
	
	$(".user1").live("change",function(){
		var t=$(".user").val();
		var k=$(this).val();
		if(k.length>0){
		$.ajax({
			url: "ajax_num_sub.php?pon="+t+"&pon1="+k,
			}).done(function(response) {
			$("#call").html(""+response+"");
		});
		}
		else
		{	$("#call").html("");
			}
	});	  
	
	// initiate layout and plugins
	$(".user").live("change",function(){
		var t=$(".user").val();
		var k=$(this).val();
		if(k.length>0){
		$.ajax({
			url: "ajax_num_sub.php?pon="+t,
			}).done(function(response) {
			$("#call1").html(""+response+"");
		});
		}
		else
		{$("#call1").html("");
		}
	});	 
	 	  
});
</script>
<?php scripts();?>

</html>