<?php
include("index_layout.php");
include("database.php");
include("authentication.php");

$class_id=$_GET['cls'];
$section_id=$_GET['sec'];
$exam_id=$_GET['exm']; 

 ?>
<html >
<head>
<?php ?>
<style>
td{
	border: 1px solid #ddd;

}
th{
	border: 2px solid #ddd;

}
tr{
	border: 1px solid #ddd;

}
.table-bordered {
    border: 1px solid #ddd;

}
.table {
    width: 100%;
    max-width: 100%;
    margin-bottom: 20px;
}
.table {
    background-color: transparent;
}
.table {
    border-spacing: 0;
    border-collapse: collapse;
	    white-space: normal;
    line-height: normal;
    font-weight: normal;
    font-size: medium;
    font-variant: normal;
    font-style: normal;
    color: -webkit-text;
    text-align: start;
	    display: table;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Master | Health</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<?php css(); ?>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>


</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
<body style="background-color:#FFF;">
<!-- BEGIN HEADER -->

<!-- BEGIN CONTAINER -->
	<!-- END SIDEBAR -->
	<!-- BEGIN CONTENT -->
	
		<div class="page-content">
			<div class="row">
				<div class="col-md-12">
					<?php 
		$cl=mysql_query("select `roman` from `master_class` where `id`='$class_id'");
		$sf=mysql_fetch_array($cl);
		
		$cl_romn=$sf['roman'];
		
		$cl1=mysql_query("select `section` from `master_section` where `id`='$section_id'");
		$sf1=mysql_fetch_array($cl1);
		
		$sc_name=$sf1['section'];
		?>
		
		
			<div class="portlet box blue">
			<div class="portlet-title">
				<div class="caption"  style="text-align:center;">
					<h4 color="black"><i class="icon-puzzle"></i> Edit Health Status Of Class: <?php echo $cl_romn; ?> and Section: <?php echo $sc_name; ?></h4>
				</div>
			</div>
			<div class="portlet-body form">
			<!-- BEGIN FORM-->
			
				<input type="hidden" name="cls" value="<?php echo $class_id; ?>">
				<input type="hidden" name="sec" value="<?php echo $section_id; ?>">
				<input type="hidden" name="exm" value="<?php echo $exam_id; ?>">
					<div class="form-body">
						 
						 <div class="table-responsive">
								<table id="user" class="table table-bordered table-striped">
								<thead>
								<tr>
									<th rowspan='2'>
										 Sr.no
									</th>
									<th rowspan='2'>
										 Roll.no
									</th>
									<th rowspan='2'>
										 Name
									</th>
									<?php 
									
									$st=mysql_query("select * from `master_health`");
									$count=mysql_num_rows($st);
									?>
									
									<th style="text-align:center" colspan="<?php echo $count; ?>" >
										 Health Status
									</th>
									  
								</tr> 
								<tr>
								<?php
								$st1=mysql_query("select * from `master_health`");
								while($ft1=mysql_fetch_array($st1))
								{
									$hlth_id=$ft1['id'];
									$health_type=$ft1['health_type'];
									$parameter=$ft1['parameter'];
									 
								?>
									<th style="text-align:center">
										 <?php echo $health_type; ?><br>( <?php echo $parameter ?> )
									</th> 
							<?php } ?>
									
								</tr>
								</thead>
								<tbody>
									
								<?php 
								$w=0;
								
									$qr=mysql_query("select * from `student` where `class_id`='$class_id' && `section_id`='$section_id' ORDER BY `name`");
									while($fr=mysql_fetch_array($qr))
									{$w++;
									$schlr_id=$fr['id'];
									$scholar_no=$fr['scholar_no'];
									$name=$fr['name'];
									$roll_no=$fr['roll_no'];
									?>
									<tr>
									<td><?php echo $scholar_no; ?></td>
									<td><?php echo $roll_no; ?></td>
									<td><?php echo $name; ?></td>
									
								<?php 
								
									$st2=mysql_query("select * from `master_health`");
									while($ft2=mysql_fetch_array($st2))
									{
									$hlth_id=$ft2['id'];
									$health_type=$ft2['health_type'];
									$parameter=$ft2['parameter'];
									 
									 
									$qst=mysql_query("select * from `student_health` where `scholar_no`='$scholar_no' && `master_health_id`='$hlth_id' ");
									$fst=mysql_fetch_array($qst);
									
									$retrive_type=$sub_subject_name;
									$id=$fst['id'];
									$value_sub=$fst['value'];
										 
									?>
									
									<td style="text-align:center">
										
 <a href="#" class="number" max="<?php echo $max_marks; ?>" stdnt_id="<?php echo $id; ?>" stdnt_sub="attendance" data-type="text" data-pk="1" data-original-title="Enter Number"><?php if(!empty($value_sub)){ echo $value_sub;} else{ echo"-";} ?></a>
									</td>
									 
									<?php  } } ?>
										
			 
										
									 
								</tbody>
								</table>
							</div>
						 
						 
					</div>
					

				
			</div>
				<!-- END FORM-->
				</div>
			</div>
			
			<!-- END PAGE CONTENT-->
		</div>
	
	<!-- END CONTENT -->
	
</div>
 

<script src="assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<!-- BEGIN PLUGINS USED BY X-EDITABLE -->

<script type="text/javascript" src="assets/global/plugins/moment.min.js"></script>
<script type="text/javascript" src="assets/global/plugins/jquery.mockjax.js"></script>
<script type="text/javascript" src="assets/global/plugins/bootstrap-editable/bootstrap-editable/js/bootstrap-editable.js"></script>
<!-- END X-EDITABLE PLUGIN -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="assets/admin/pages/scripts/form-editable.js"></script>
<script>

function check(){
		var max=$(this).closest('td').find('a').attr('max');
	
}

jQuery(document).ready(function() {
// initiate layout and plugins
Metronic.init(); // init metronic core components
FormEditable.init();

	$('.editable-submit').live('click', function(e){
		var id=$(this).closest('td').find('a').attr('stdnt_id');
		var sub_column=$(this).closest('td').find('a').attr('stdnt_sub');
		var number=$(this).closest('form').find('input').val();
		//var max=$(this).closest('td').find('a').attr('max');

 		$.ajax({
				url: "update_health.php?id="+id+"&sub_column="+sub_column+"&number="+number,
			});
	});
	

	
	$('form input[type=text]').live('keyup', function(e){
		var no=eval($(this).val());
		 var max=eval($(this).closest('td').find('a').attr('max'));
		 var value=eval($(this).closest('td').find('a').text());
		  if(max<no)
		 {
			 $(this).val(value);
		 }
		 else if('AB'==no || 'M'==no || 'T'==no || no=='0')
		 {
			 
		 }
 
		 
	});
});
</script>
<?php //scripts(); ?>
<!-- END PAGE LEVEL SCRIPTS -->
</body>
<!-- END BODY -->
</html> 