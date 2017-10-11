<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");

if(isset($_POST['sub']))
{
	$class_id=$_POST['class_id'];
 	$section_id=$_POST['section_id'];
	$term_id=$_POST['term_id'];
 	$category_id=$_POST['category_id'];
	$maximum_category=$_POST['maximum_category'];
	$scalling=$_POST['scalling'];
	
	$cat_value=implode(',', $category_id);
	 
	 $set=mysql_query("select * from `master_scalling` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$term_id' && `category_id`='$cat_value' && `maximum_of_category`='$maximum_category' && `scale`='$scalling'");
	 $count=mysql_num_rows($set);
	 
	if($count>0){
	 ?>
	 <script>
		alert("Data Is Already Available");
	 </script>
	 <?php
 }
 else{
	 mysql_query("insert into `master_scalling` SET `class_id`='$class_id',`section_id`='$section_id',`term_id`='$term_id',`category_id`='$cat_value',`maximum_of_category`='$maximum_category',`scale`='$scalling'");

	  ?>
	 <script>
		alert("Data Is Already Available");
	 </script>
	 <?php
	 
 }

}

 ?>
<html >
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Master | Scale</title>
</head>
<?php contant_start(); menu();  ?>
<body>
<div class="page-content-wrapper">
		<div class="page-content">
			<div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-puzzle"></i> Assign Scalling
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
									<select class="form-control user" required name="class_id" >
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
								please select Class category</span>
							</div>
						</div>
					<div id="dt"></div>
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
			url: "ajax_scalling.php?pon="+t,
			}).done(function(response) {

		   $("#dt").html(""+response+"");
		   $("#data").html("");
		   
				
			
			});
			  });	  
			  
			   
			   $(".user1").live("change",function(){
				  
				   var s=$(this).val();
				   var t=$(".user").val();
				  // var t=$("#login_id").val();
				   
			
				  	$.ajax({
			url: "ajax_scalling.php?pon="+t+"&pon1="+s,
			}).done(function(response) {

		   $("#tr").html(""+response+"");
				
			
			});
			  });
			  
			   $(".user3").live("change",function(){
				  
				   var m=$(this).val();
 				   var t=$(".user").val();
				   
 				  	$.ajax({
			url: "ajax_scalling.php?pon="+t+"&pon1="+m,
			}).done(function(response) {
 
 $("#ms").html(""+response+"");
				
			
			});
			  });
			  
			    $(".user4").live("change",function(){
				  
				   var l=$(this).val();
				   var m=$(".user3").val();
 				   var t=$(".user").val();
				  // var t=$("#login_id").val();
 			
				  	$.ajax({
			url: "ajax_scalling.php?pon="+t+"&pon1="+m+"&pon3="+l,
			}).done(function(response) {
				
  		   $("#cs").html(""+response+"");
		 //  $(".select2me").select2me();
					   $('.select2me').select2();	
			
			});
			  });
			  
			  
			   $(".ust").live("change",function(){
				  
				   var q=$(this).val();
				   var l=$(".user4").val();
				   var t=$(".user").val();
				   var s=$(".user1").val();
				   var v=$(".user3").val();
				   
			
				  	$.ajax({
			url: "ajax_scalling.php?pon="+t+"&pon1="+v+"&pon3="+l+"&pon5="+q,
			}).done(function(response) {

		   $("#data").html(""+response+"");
				
			
			});
			  });
			  			    
		});
	</script>
		
<?php scripts();?> 
</html>