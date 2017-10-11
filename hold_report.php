<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");
$login_id=$_SESSION['id'];
 ?>
<html>
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Report | Hold</title>
<style>
.table>thead>tr>th{
	font-size:12px !important;
}

 @media print
   {
     .printdata{
		 display:none;
	 }
   }
</style>
</head>
<?php contant_start(); menu();  ?>
<body>
	<div class="page-content-wrapper">
		 <div class="page-content">
			 
			<div class="portlet box blue">
			<div class="portlet-title printdata">
				<div class="caption">
					<i class="icon-puzzle"></i> Hold Report
				</div>
			</div>
			<div class="portlet-body form">
			<!-- BEGIN FORM-->
				<form  class="form-horizontal" id="form_sample_2"  role="form" method="post"> 
					<div class="form-body">
						<div class="form-group printdata">
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
		if(t.length > 0){
		$.ajax({
			url: "ajax_hold_report.php?pon="+t,
			}).done(function(response) {
			$("#call").html(""+response+"");
			});
		}
		else
		{
			$("#call").html("");
		}
	});	  
});
	</script>
	

	<script>
    $(document).ready(function() {		
    
    // initiate layout and plugins
    $(".user1").live("change",function(){
		var s=$(this).val();
		if(s.length > 0){
		var t=$(".user").val();
		$.ajax({
			url: "ajax_hold_report.php?pon1="+s+"&pon="+t,
			}).done(function(response) {
			$("#rpt").html(""+response+"");
		});
		}
		else
		{$('#rpt').html('');
		}
    });	  
    
    // initiate layout and plugins
    $(".user2").live("change",function(){
		var u=$(this).val();
		if(u.length > 0){
		var t=$(".user").val();
		var s=$(".user1").val();
		
		$.ajax({
			url: "ajax_hold_report.php?pon1="+s+"&pon="+t+"&pon3="+u,
			}).done(function(response) {
			$("#sht").html(""+response+"");
		});
		}
		else
		{
		$('#sht').html('');	
		}
    });	  
});
    </script>
	 
<?php scripts();?>

</html>