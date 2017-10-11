<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");
  
 ?>
<html >
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Master | Marksheet</title>
</head>
<?php contant_start(); menu();  ?>
<body>
<div class="page-content-wrapper">
		<div class="page-content">
		
		
		
			<div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-puzzle"></i>Marksheet
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
									<select class="form-control cls" required name="roman">
									<option value="">---Select Class---</option>
								   <?php 
								   $query=mysql_query("select * from `master_class` Order by `id`");
								   while($fetch=mysql_fetch_array($query))
								   {$f++;
										$class_id=$fetch['id'];
										if($class_id<1){
											continue;
										}
										$class_name=$fetch['roman'];
							   ?>
								   
									<option value="<?php echo $class_id; ?>"><?php echo $class_name; ?></option>
								   <?php } ?>
									</select>
								</div>
								<span class="help-block">
								please select class category</span>
							</div>
						</div>
						<div id="s1" ></div>
					
					
						
					
						
				
						
						
						
						
					</div>
					 

				</form>
				
				
			</div>
				<!-- END FORM-->
				
				
							<div id="data"></div>
				
				<!--hds-->
				   
			</div>
		
	</div>
</div>
</body>
<?php footer();?>
<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script>
$(document).ready(function() {		
	
	// initiate layout and plugins
	$("#single").live("click",function(){
	
	var p=$(".cls").val();
	var q=$(".sec").val();
	var r=$(".ex").val();
	
	$.ajax({
	url: "ajax_marksheet1.php?cls="+p+"&sec="+q+"&ex="+r,
	}).done(function(response) {
	
	$("#data").html(""+response+"");
	
	
	});
	});
	
	
	
	$(".ex").live("change",function(){
	
	var m='HELLO';
	var p=$(".cls").val();
	var q=$(".sec").val();
	var r=$(".ex").val();
	
	
	
	$.ajax({
	url: "ajax_marksheet1.php?flag="+m+"&cls="+p+"&sec="+q+"&ex="+r,
	}).done(function(response) {
	
	$("#row").html(""+response+"");
	$("#data").html("");
	
	
	});
	});			  
	
	
	
	$(".cls").live("change",function(){
	
	var p=$(".cls").val();
	
	
	
	$.ajax({
	url: "ajax_marksheet1.php?cls="+p,
	}).done(function(response) {
	
	$("#s1").html(""+response+"");
	$("#data").html("");
	
	
	});
	});
	
	
	$(".sec").live("change",function(){
	
	var q=$(".sec").val();
	
	$.ajax({
	url: "ajax_marksheet1.php?sec="+q,
	}).done(function(response) {
	
	$("#tr").html(""+response+"");
	$("#data").html("");
	
	
	});
	});

});
	</script>

<?php scripts();?>

</html>