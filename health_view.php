<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");

if(isset($_POST['sub'])){
	
$class_id=$_POST['cls'];
$section_id=$_POST['sec'];
$exam_id=$_POST['exm'];	
 
 
  	echo "<script>
    location='health_view.php';
		window.open('health_edit_view.php?cls=$class_id&sec=$section_id&exm=$exam_id','_newtab');
    </script>";  
	
}


 ?>
<html >
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Master | Health</title>
</head>
<?php contant_start(); menu();  ?>
<body>
<div class="page-content-wrapper">
		<div class="page-content">
		
		 
			<div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-puzzle"></i> Select Info for Health Status Edit
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
									<select class="form-control user" required name="cls">
									<option value="">---Select Class---</option>
								    <?php 
									$query=mysql_query("select * from `master_class` order by `id`");
									while($fetch=mysql_fetch_array($query))
									{$i++;
										$class_id=$fetch['id'];
										$roman=$fetch['roman'];
										if($class_id<0){
											continue;
										}
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
						<div class="form-group">
							<label class="control-label col-md-3">Section</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user1" required name="sec">
									<option value="">---Select Section---</option>
								    <?php 
									$query1=mysql_query("select * from `section` order by `id`");
									while($fetch1=mysql_fetch_array($query1))
									{$j++;
										$sec_id=$fetch1['id'];
										$sec_name=$fetch1['section'];
									?>
									<option value="<?php echo $sec_id; ?>"><?php echo $sec_name; ?></option>
									<?php } ?>
									</select>
								</div>
								<span class="help-block">
								Please select Section category</span>
							</div>
						</div>
				</div>		
				 
				   
						<div class="form-group">
							<label class="control-label col-md-3">Term</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control" required name="exm">
									<option value="">---Select Term---</option>
										<option value="1">Term-I</option>
										<option value="2">Final-Term</option>
										<option value="3">Kids-Final-Term</option>									 
									</select>
								</div>
								<span class="help-block">
								Please select Term category</span>
							</div>
						</div>
				
						 
					<div class="form-actions top">
						<div class="row">
							<div class="col-md-offset-3 col-md-10">
								<button type="submit" name="sub" class="btn green">Submit</button>
							</div>
						</div>
					</div>
					
					 </div>
					</div>
					
 
				</form>
			</div>
				<!-- END FORM-->
				
				
				<div id="data"></div>
				
				<!--hds-->
				   
			</div>
	</div>

</body>
<?php footer();?>
<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script>
		$(document).ready(function() {		
		
			// initiate layout and plugins
			  $(".user1").live("change",function(){
				  
				   var t=$(".user").val();
				   var k=$(this).val();
				   
		
				  	$.ajax({
			url: "ajax_health_view.php?pon="+t+"&pon1="+k,
			}).done(function(response) {

			$("#call").html(""+response+"");
				
			
			});
			  });	  
			  
			  // initiate layout and plugins
			  $(".user").live("change",function(){
				  
				   var t=$(".user").val();
				   var k=$(this).val();
				   
		
				  	$.ajax({
			url: "ajax_health_view.php?pon="+t,
			}).done(function(response) {

			$("#call1").html(""+response+"");
				
			
			});
			  });	  
			  
			  
		});
	</script>


<?php scripts();?>
 
</html>