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
	$marksheet_term_id=$_POST['marksheet_term_id'];
	 
	mysql_query("delete from `master_architecture` where `class_id`='$class_id' && `section_id`='$section_id' && `term_id`='$marksheet_term_id' && `marksheet_term_id`='$term_id'");
	  
 foreach($category_id as $value)
 {
	 $value;
	  
	 mysql_query("insert into `master_architecture` SET `class_id`='$class_id',`section_id`='$section_id',`term_id`='$marksheet_term_id',`category_id`='$value',`marksheet_term_id`='$term_id'");
 }

echo "<meta http-equiv='refresh' content='0;url=architecture.php'>";	
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
					 <div id="data"> </div>
				</div>
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
	
	// initiate layout and plugins
	$(".user").live("change",function(){
		var t=$(this).val();
		$.ajax({
			url: "ajax_architecture.php?pon="+t,
			}).done(function(response) {
			$("#dt").html(""+response+"");
			$("#data").html("");
		});
	});	  
	
	
	$(".user1").live("change",function(){
		
		var s=$(this).val();
		var t=$(".user").val();
		$.ajax({
			url: "ajax_architecture.php?pon="+t+"&pon1="+s,
			}).done(function(response) {
			$("#tr").html(""+response+"");
		});
	});
	
	$(".user3").live("change",function(){
		var m=$(this).val();
		if(m.length > 0)
		{
			var t=$(".user").val();
			$.ajax({
				url: "ajax_architecture.php?pon="+t+"&pon1="+m,
				}).done(function(response) {
				$("#ms").html(""+response+"");
			});
		}
		else
		{
			$("#ms").html("");
		}
	});
	
	$(".user4").live("change",function(){
		var l=$(this).val();
		if(l.length > 0)
		{
			var m=$(".user3").val();
			var t=$(".user").val();
			$.ajax({
				url: "ajax_architecture.php?pon="+t+"&pon1="+m+"&pon3="+l,
				}).done(function(response) {
				$("#cs").html(""+response+"");
			});
		}
		else
		{
			$("#cs").html("");
		}
	});
	
	$(".user5").live("change",function(){
		var q=$(this).val();
		if(q.length > 0)
		{
			var l=$(".user4").val();
			var t=$(".user").val();
			var s=$(".user1").val();
			var v=$(".user3").val();
			$.ajax({
				url: "ajax_architecture.php?pon="+t+"&pon1="+v+"&pon3="+l+"&pon6="+q,
				}).done(function(response) {
				$("#data").html(""+response+"");
				$('.select2me').select2();
			});
		}
		else
		{
			$("#data").html("");
		}
	});
});
	</script>
		
<?php scripts();?> 
</html>