<?php include("index_layout.php");
include("database.php");
include("authentication.php");

if(isset($_POST['sub']))
{
	$role_id=$_POST['role_id'];
	mysql_query("DELETE FROM `user_settings` WHERE `role_id`='$role_id'");	
	$chk=$_POST['check'];
 	if (is_array($chk))
		{
			foreach ($chk as $value)
			{
				mysql_query("insert into `user_settings` set `role_id`='$role_id',`module_id`='$value'");
			}
		}
}



 ?>
<html >
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Master | User</title>
</head>
<?php contant_start(); menu();  ?>
<body>
<div class="page-content-wrapper">
		<div class="page-content">
			<div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-puzzle"></i> User Privileges
				</div>
			</div>
			<div class="portlet-body form">
			<!-- BEGIN FORM-->
				<form  class="form-horizontal" id="form_sample_2"  role="form" method="post"> 
					<div class="form-body">
						<div class="form-group">
							<label class="control-label col-md-3">User</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user" required name="role_id" >
									<option value="">---Select User---</option>
								    <?php 
									$query=mysql_query("select * from `role` order by `id` DESC");
									while($fetch=mysql_fetch_array($query))
									{$i++;
										$role_id=$fetch['id'];
										$role_name=$fetch['role'];
									?>
									<option value="<?php echo $role_id; ?>"><?php echo $role_name; ?></option>
									<?php } ?>
									</select>
								</div>
								<span class="help-block">
								please select User category</span>
							</div>
						</div>
					
					 <div id="data">
					 
					 
					 </div>
					
					 	 
					</div>
					

				</form>
			</div>
				<!-- END FORM-->
				 
				   
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
				  // var t=$("#login_id").val();
				   
			
				  	$.ajax({
			url: "ajax_user.php?pon="+t,
			}).done(function(response) {

		   $("#data").html(""+response+"");
				
			
			});
			  });	  
		});
	</script>
		
<?php scripts();?>
		
<script>
 
 function check(){
 
var c=$(".chk_input").val();
value = +$('.chk_input').is( ':checked' );

if(value==0)
	{
		$(".all_chk" ).parent('span').removeClass('checked');
		$(".all_chk" ).removeAttr('checked','checked');
	}
else
	{
		$(".all_chk" ).parent('span').addClass('checked');
		$(".all_chk" ).attr('checked','checked');
	}
} 
</script>
  
</html>