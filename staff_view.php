<?php 
include("index_layout.php");
include("database.php");
//include("authentication.php");

$school_id=$_SESSION['school_id'];

if(isset($_POST['sub'])){
	$del=$_POST['del_id'];
	mysql_query("delete from `login` where `id`='$del'");
	mysql_query("Delete from `staff_class` where `staff_id`='$del'");
	header("location:staff_view.php"); 
}

 ?>
<html>
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Index</title>
</head>
<?php contant_start(); menu();  ?>
<body>
	<div class="page-content-wrapper">
		 <div class="page-content">
			
			<div class="portlet box yellow">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-user"></i>Staff View
							</div>
						 
						</div>
						<div class="portlet-body">
							 <div class="table-scrollable"><table aria-describedby="sample_2_info" role="grid" class="table table-striped table-bordered table-hover dataTable no-footer" id="sample_2">
							<thead>
							<tr role="row"><th style="width: 24px;" colspan="1" rowspan="1" class="table-checkbox sorting_disabled">
									<div class="checker"><span><input class="group-checkable" data-set="#sample_2 .checkboxes" type="checkbox"></span></div>
								</th><th aria-label="
									 Username
								: activate to sort column ascending" aria-sort="ascending" style="width: 93px;" colspan="1" rowspan="1" aria-controls="sample_2" tabindex="0" class="sorting_asc">
									 Name
								</th><th aria-label="
									 Email
								: activate to sort column ascending" style="width: 160px;" colspan="1" rowspan="1" aria-controls="sample_2" tabindex="0" class="sorting">
									 Subject
								</th><th aria-label="
									 Email
								: activate to sort column ascending" style="width: 160px;" colspan="1" rowspan="1" aria-controls="sample_2" tabindex="0" class="sorting">
									 Branch
								</th><th aria-label="
									 Status
								: activate to sort column ascending" style="width: 81px;" colspan="1" rowspan="1" aria-controls="sample_2" tabindex="0" class="sorting">
									 Status
								</th></tr>
							</thead>
							<tbody>
							
							 <?php 
							 $set=mysql_query("select * from `login`");
							 while($fet=mysql_fetch_array($set))
							 {$f++;
							 $member_id=$fet['id'];
							 $name=$fet['name'];
							 $username=$fet['username'];
							 $subject=$fet['subject'];
							 $flag=$fet['flag'];
							 if($flag==1){
								 
								 $brch='Sector';
							 }else if($flag==2){
								 
								 $brch='Pratap';
							 }
							 $set2=mysql_query("select `subject` from `subject` where `id`='$subject'");
							 $fet2=mysql_fetch_array($set2);
							 
							 $sub_name=$fet2['subject'];
							 
							 ?>
							<tr role="row" class="gradeX odd">
								<td>
									<div class="checker"><span><input class="checkboxes" value="<?php echo $member_id; ?>" type="checkbox"></span></div>
								</td>
								<td>
									<?php echo $name; ?>
								</td>
								<td>
									<?php echo $sub_name; ?>
								</td>
								<td>
									<?php echo $brch; ?>
								</td>
								<td>
									<a href="staff_search.php?user=<?php echo $member_id; ?>" class="btn btn-xs blue">
									View<i class="fa fa-search"></i>
									</a>


									<a href="staff_edit.php?user=<?php echo $member_id; ?>" class="btn btn-xs yellow">
									Edit<i class="fa fa-edit"></i>
									</a>
									
									
									<a class="btn btn-xs red" data-toggle="modal" href="#<?php echo $member_id; ?>">
									Delete 
									</a>
									
			         <div class="modal fade" id="<?php echo $member_id; ?>" tabindex="-1" role="basic" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
											<h4 class="modal-title"><font color="red">Delete <?php echo $name; ?> From Staff</font></h4>
										</div>
										<div class="modal-body">
											 You Want To Confirm <font color="red">Delete</font>
										</div>
										<form method="post">
										<div class="modal-footer">
											<button type="button" class="btn default" data-dismiss="modal">Close</button>
											<input type="hidden" name="del_id" value="<?php echo $member_id; ?>">
											<button type="submit" name="sub" class="btn blue">Delete</button>
										</div>
										</form>
									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal-dialog -->
				      </div>
					  
					  
					  

								</td>
								 
							</tr>
							
					      <?php } ?>
							</tbody>
							</table></div ></div>
					</div>
			
		 </div>
	</div>
</body>

<?php footer();?>
<?php scripts();?>

</html>