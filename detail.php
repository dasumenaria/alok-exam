<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");
 ?>
<html>
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Details </title>
</head>
<?php contant_start(); menu();  ?>
<body>
	<div class="page-content-wrapper">
		 <div class="page-content">
			
			
			
			<div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-puzzle"></i> Student Details
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
									<select class="form-control user" required name="roman">
									<option value="">---Select Class---</option>
								   
								   <?php 
								   $query=mysql_query("select * from `master_class` Order By `id`");
								   while($fet=mysql_fetch_array($query))
								   {$f++;
										$class_id=$fet['id'];
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
		if(t.length >0 ){
			$.ajax({
				url: "ajax_detail.php?pon="+t,
				}).done(function(response) {
				$("#call").html(""+response+"");
			});
		}
		else
		{$("#call").html("");
		}
	});	  
	 
	// initiate layout and plugins
	$(".user1").live("change",function(){
	
		var s=$(this).val();
		var t=$(".user").val();
		if(s.length >0 ){
			$.ajax({
				url: "ajax_detail.php?pon1="+s+"&pon="+t,
				}).done(function(response) {
				$("#rpt").html(""+response+"");
			});
		}
		else
		{$("#rpt").html("");
		}
	});	  
 	// initiate layout and plugins
	$(".user2").live("change",function(){
		var u=$(this).val();
		var t=$(".user").val();
		var s=$(".user1").val();
		if(u.length >0 ){
			$.ajax({
				url: "ajax_detail.php?pon1="+s+"&pon="+t+"&pon3="+u,
				}).done(function(response) {
				$("#sht").html(""+response+"");
			});
		}
		else
		{$("#sht").html("");
		}
	});	  
});
</script>
	 
<?php scripts();?>

</html>