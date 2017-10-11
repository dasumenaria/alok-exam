<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");

if(isset($_POST['sub'])){
	$term=$_POST['term'];
	mysql_query("UPDATE `master_term` SET `block`='1'");
	mysql_query("UPDATE `master_term` SET `block`='0' where `id`='$term'");
}

 ?>
<html>
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Term | Block</title>
</head>
<?php contant_start(); menu();  ?>
<body>
	<div class="page-content-wrapper">
		 <div class="page-content">
			
					<div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption">
					<i class="icon-puzzle"></i> Activate Exam
				</div>
			</div>
			<div class="portlet-body form">
			<!-- BEGIN FORM-->
				<form  class="form-horizontal" id="form_sample_2"  role="form" method="post"> 
					<div class="form-body">
						 
						 <div class="radio-list">
								<label class="col-md-3 control-label">Exam </label>
								<?php 
								$set=mysql_query("select * from `master_term` Order By id");
								while($fet=mysql_fetch_array($set))
								{$f++;
							
									$exam_id=$fet['id'];
									$exam_name=$fet['name'];
									$block=$fet['block'];
							?>
									<label class="radio-inline">
									<span><input type="radio" name="term" value="<?php echo $exam_id; ?>" <?php if($block=='0'){ ?> checked="" <?php }else{  } ?> ></span>&nbsp; <?php echo $exam_name; ?></label>
								<?php } ?>	  
								</div>
							</div>
					 
					<div class="form-actions top">
						<div class="row">
							<div class="col-md-offset-3 col-md-9">
								<button type="submit" name="sub" class="btn green">Submit</button>
								<button type="button" class="btn default">Cancel</button>
							</div>
						</div>
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