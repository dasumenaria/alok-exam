<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");

if(isset($_POST['sub']))
{
	$class_id=$_POST['class_id'];
	$subject_id=$_POST['subjc'];
	$section_id=$_POST['section_id'];
	$term_id=$_POST['term_id'];
 	$category_id=$_POST['category_id'];

}
 ?>
<html >
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Master | Marks</title>
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
					<i class="icon-puzzle"></i> Seating Arrangement
				</div>
			</div>
			<div class="portlet-body form">
			<!-- BEGIN FORM-->
				<form  class="form-horizontal" id="form_sample_2"  role="form" method="post" action="final_time_table.php"> 
					<div class="form-body printdata">
						<div class="form-group">
						<label class="control-label col-md-3">Term</label>
							<div class="col-md-4">
							   <div class="input-icon right">
									<i class="fa"></i>
									<select class="form-control user4" required name="term_id">
										<option value="">---Select Term---</option>
											<?php 
												$query2=mysql_query("select * from `master_term` ORder By `id`"); 
												while($fetch2=mysql_fetch_array($query2))
												{
													$i++;
													$exam_id=$fetch2['id'];
													$exam_name=$fetch2['name'];
												?>
												<option value="<?php echo $exam_id; ?>"><?php echo $exam_name; ?></option>
											<?php } ?>
									</select>
								</div>
								<span class="help-block">
								Please select Term category</span>
							</div>
					</div>
		
				<div id="cs" ></div>
					
					 	 
					</div>
					<div id="data"></div>

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
	 	
			  
	$(".user4").live("change",function(){
		var l=$(this).val();
		if(l.length > 0)
		{
			var m=$(".user3").val();
			var t=$(".user").val();
			
			$.ajax({
				url: "ajax_seat_arang.php?pon="+t+"&pon1="+m+"&pon3="+l,
				}).done(function(response){
				$("#cs").html(""+response+"");
			});
		}
		else
		{
			$("#cs").html("");
		}
	});
			  
			  
	$(".ust").live("change",function(){
		var q=$(this).val();
		if(q.length > 0)
		{
			var l=$(".user4").val();
	
			$.ajax({
				url: "ajax_seat_arang.php?pon3="+l+"&pon5="+q,
				}).done(function(response) {
				$("#dys").html(""+response+"");
			});
		}
		else
		{
			$("#dys").html("");
		}
	});
	
	$(".rm").live("blur",function(){
		var s=$(this).val();
		if(s.length > 0)
		{
			var l=$(".user4").val();
			var q=$(".ust").val();
			$.ajax({
				url: "ajax_seat_arang.php?pon3="+l+"&pon5="+q+"&pon6="+s,
				}).done(function(response) {
				$("#cap").html(""+response+"");
			});
		}
		else
		{
			$("#cap").html("");
		}
	});
	
	$(".cpact").live("blur",function(){
		var t=$(this).val();
		if(t.length > 0)
		{
			var l=$(".user4").val();
			var q=$(".ust").val();
			var s=$(".rm").val();
			$.ajax({
				url: "ajax_seat_arang.php?pon3="+l+"&pon5="+q+"&pon6="+s+"&pon7="+t,
				}).done(function(response) {
				$("#rws").html(""+response+"");
			});
		}
		else
		{
			$("#rws").html("");
		}
	});
	
	$(".rows").live("change",function(){
		var u=$(this).val();
		if(u.length > 0)
		{
			var l=$(".user4").val();
			var q=$(".ust").val();
			var s=$(".rm").val();
			var t=$(".cpact").val();
			$.ajax({
				url: "seating_arre_table.php?con="+u+"&con1="+t+"&con2="+s+"&con3="+l,
				}).done(function(response) {
				$("#data").html(""+response+"");
			});
		}
		else
		{
			$("#data").html("");
		}
	});
	

	$(".all").live("keyup",function(){
		
		var v=$(this).attr('cal');
		var sb_cnt=eval($('#coulmn_dubb_inc').val());
		var first_roll=eval($('#first_roll'+ v).val());
		var std_cnt=eval($('#rows').val());

		for(var i=1;i<=std_cnt;i++)	
		{
			$('#roll_' + i + v ).val(first_roll);	
			first_roll=first_roll + 1 ;
		}
	}); 
	
});
	</script>
		
<?php scripts();?>
		 
  
</html>