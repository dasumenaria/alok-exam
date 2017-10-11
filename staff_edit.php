<?php
include("index_layout.php");
include("database.php");
include("authentication.php");

$user_id=$_GET['user'];
$school_id=$_SESSION['school_id'];

if(isset($_POST['sub'])){
	
	$new_name=$_POST['new_name'];
	$class_id=$_POST['class_id'];
	$section_id=$_POST['section_id'];
	$subject_id=$_POST['subject_id'];
	$user_name=$_POST['user_name'];
	$new_pass=$_POST['new_pass'];
    $actual_pass=md5($new_pass);
	if(!empty($_POST['new_pass'])){
		mysql_query("update `login` SET `name`='$new_name',`class`='$class_id',`section`='$section_id',`subject`='$subject_id',`username`='$user_name',`password`='$actual_pass' where `id`='$user_id' ");
	}
	else
	{	mysql_query("update `login` SET `name`='$new_name',`class`='$class_id',`section`='$section_id',`subject`='$subject_id',`username`='$user_name' where `id`='$user_id' ");
	}
}

if(isset($_POST['sub_cls'])){
	
	$user_id=$_GET['user'];
	$class_id=$_POST['cls']; 
	$section_id=$_POST['sec'];   
	$f1=0;
		$que=mysql_query("select * from `master_section` order by `id`");
		while($fet=mysql_fetch_array($que))
		{$f1++;

			$sec_id=$fet['id'];
			  $sec_name=$fet['roman'];  
			$i=0;
				mysql_query("Delete from `staff_class` where `class_id`='$class_id' && `section_id`='$sec_id' && `staff_id`='$user_id'");
				  $qur1=mysql_query("select * from `subject` ORDER BY `id`");
				  while($fet1=mysql_fetch_array($qur1))
				  {
					    $sub_id=$fet1['id'];  
					   $qqqq= (int)@$_POST["check_".$sec_id."_".$sub_id];
					  if($qqqq==1){
						   
						 mysql_query("insert into `staff_class` SET `class_id`='$class_id',`section_id`='$sec_id',`subject`='$sub_id',`staff_id`='$user_id'");
				  }
			  }
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
								<i class="fa fa-gift"></i> Staff Edit
							</div>
						 
						</div>
						<div class="portlet-body form">
							<form class="form-horizontal" role="form" method="post">
								<div class="form-body">
								
								<?php 
								//echo "select * `login` where `id`='$user_id'";
								$sect=mysql_query("select * from `login` where `id`='$user_id'");
								$fect=mysql_fetch_array($sect);
								$name=$fect['name'];
								$class=$fect['class'];
								$section=$fect['section'];
								$subject=$fect['subject'];
								$username=$fect['username'];
								 
								 
								
								$set1=mysql_query("select `subject` from `subject` where `id`='$subject'");
								$fet1=mysql_fetch_array($set1);
								
								$sub_name=$fet1['subject'];
								
								$set2=mysql_query("select `roman` from `master_class` where `id`='$class'");
								$fet2=mysql_fetch_array($set2);
								
								$class_name=$fet2['roman'];
								
								$set3=mysql_query("select `section` from `master_section` where `id`='$section'");
								$fet3=mysql_fetch_array($set3);
								
								$sec_name=$fet3['section'];
								?>
									 
									<div class="form-group">
										<label class="col-md-1 control-label">Name</label>
										<div class="col-md-4">
											<input class="form-control" name="new_name"  type="text" value="<?php echo $name; ?>">
											<input type="hidden" name="usr" id="sr" value="<?php echo $user_id; ?>">
										</div>
										  
										<label class="col-md-1 control-label">Class</label>
										<div class="col-md-4">
											<select class="form-control user1" name="class_id" >
											<?php 
											$s1=mysql_query("select * from `master_class` Order By id");
											while($f1=mysql_fetch_array($s1))
											{$t1++;
											   $cls_id=$f1['id'];
											   $cls_rmn=$f1['roman'];
											?>
												<option value="<?php echo $cls_id; ?>"  <?php if($class==$cls_id){?> selected <?php } else{}?>><?php echo $cls_rmn; ?></option>
											<?php } ?>
											</select>
											
										</div>
									 
									</div>
									 
									 
									 <div class="form-group">
										<label class="col-md-1 control-label">Section</label>
										<div class="col-md-4">
											<select class="form-control" name="section_id">
											<?php 
											$s2=mysql_query("select * from `master_section` Order By id");
											while($f2=mysql_fetch_array($s2))
											{$t2++;
											   $sec_id=$f2['id'];
											   $sec_nm=$f2['section'];
											?>
												<option value="<?php echo $sec_id; ?>"  <?php if($section==$sec_id){?> selected <?php } else{}?>><?php echo $sec_nm; ?></option>
											<?php } ?>
											</select>
											
										</div>
										
										
										<label class="col-md-1 control-label">Subject</label>
										<div class="col-md-4">
											<select class="form-control" name="subject_id">
											<?php 
											$s3=mysql_query("select * from `subject` Order By id");
											while($f3=mysql_fetch_array($s3))
											{$t3++;
											   $sub_id=$f3['id'];
											   $sub_nm=$f3['subject'];
											?>
												<option value="<?php echo $sub_id; ?>"  <?php if($subject==$sub_id){?> selected <?php } else{}?>><?php echo $sub_nm; ?></option>
											<?php } ?>
											</select>
											
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-md-1 control-label">Username</label>
										<div class="col-md-4">
											<input class="form-control" name="user_name"  type="text" value="<?php echo $username; ?>">
										</div>
										<label class="col-md-1 control-label">Password</label>
										<div class="col-md-4">
											<input class="form-control"  name="new_pass" type="text" value="">
										</div>
									</div>
									 
								</div>
								<div class="form-actions right1">
									<button style="margin-left:35%" type="submit" name="sub" class="btn green">Submit</button>
								</div>
								 
							</form>
						</div>
					</div>
			
			<div id="call"></div>
			
						 
			
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
	
			 
 
		});
	</script>
	 
	<script>
	
		$(document).ready(function() {		
		 
				   
				   var k=$(".user1").val();
				   var t=$("#sr").val();
		
				  	$.ajax({
			url: "ajax_staff_edit.php?pon="+k+"&pon1="+t,
			}).done(function(response) {
				
			$("#call").html(""+response+"");
				
			
			});
			 	  
		});
	
	</script>

	
<script>
		$(document).ready(function() {		
		
			// initiate layout and plugins
			  $(".user1").live("change",function(){
				   
				   var k=$(this).val();
				   var t=$("#sr").val();
		
				  	$.ajax({
			url: "ajax_staff_edit.php?pon="+k+"&pon1="+t,
			}).done(function(response) {
				
			$("#call").html(""+response+"");
				
			
			});
			  });	  
		});
	</script>
 	
<?php scripts();?>

</html>