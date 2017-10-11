<?php
include("index_layout.php");
include("database.php");
include("authentication.php");

if(isset($_POST['sub']))
{
	$section=$_POST['section'];	
	$check=mysql_query("select `id` from master_section where `section`='$section'");
	$count=mysql_num_rows($check);
	if($count>0){
		?><script>alert('Section already exist');</script><?php
	}
	else
	{
		mysql_query("insert into `master_section` SET `section`='$section'");
	}
	echo "<meta http-equiv='refresh' content='0;url=section.php'>";
}
if(isset($_POST['sub_del']))
{
	$delet_class=$_POST['delet_class'];
	$r=mysql_query("delete from `master_section` where id='$delet_class'" );
	$sql=mysql_query($r);
	echo "<meta http-equiv='refresh' content='0;url=section.php'>";
	
}
if(isset($_POST['sub_edit']))
{
	$edit=$_REQUEST['edit_id'];
	$sub_updt=mysql_real_escape_string($_REQUEST["sub_updt"]);
	$r=mysql_query("update `master_section` SET `section`='$sub_updt' where id='$edit'" );
	echo "<meta http-equiv='refresh' content='0;url=section.php'>";	
	
}
  


  
 ?>
<html >
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Master | Subject</title>

</head>
<?php contant_start(); menu();  ?>
<body>
<div class="page-content-wrapper">
		<div class="page-content">
    <div class="row">
    <div class="col-md-6">
			<div class="portlet ">
			<div class="portlet-title">
				
			</div>
			<div class="portlet-body form">
			<!-- BEGIN FORM-->
				<form  class="form-horizontal" id="form_sample_2"  role="form" method="post"> 
					<div class="form-body">
						 
						<div class="form-group">
						<label class="control-label col-md-3">Section Name</label>
							
							<div class="col-md-6">
								<div class="input-icon right">
								<i class="fa"></i>
								<input class="form-control" placeholder="Please Enter Section Name" required name="section" autocomplete="off" type="text">
								</div>
							</div>
							<div class="col-md-2"></div><br/>
							<div class="col-md-12"></div><br/>
							<div class="col-md-offset-5 col-md-6" style="padding-top:10px;">
								<button type="submit" name="sub" class="btn btn-primary">Submit</button>
								<button type="reset" class="btn default">Cancel</button>
							</div>
						</div>
						 
					</div>
					

				</form>
			</div>
				 
				 
			</div>
            </div>
            <!-------------------------- View------------>
            <div class="col-md-6">
			<div class="portlet">
			<div class="portlet-title">
				
			</div>
			<div class="portlet-body form">
			 <div class="table-scrollable" >
								<table class="table table-bordered table-hover" width="100%" style="font-family:Open Sans;">
								<thead>
									
								<tr style="background:#F5F5F5">
									<th width="10%">S.No.</th>
									<th width="65%">Section Name</th>
									<th> Action</th>
								</tr>
								</thead>
							 <?php
			  $r1=mysql_query("select * from `master_section`");		
					$i=0;
					while($row1=mysql_fetch_array($r1))
					{
						//print_r($row1);
					$i++;
					$id=$row1['id'];
					$section=$row1['section'];
                    
					?>
                    <tbody>
								<tr>
									<td>
							<?php echo $i;?>
									</td>
									<td class="search">
									<?php echo $section;?>
									</td>
                                     
									<td>
                                        <a class="btn blue-madison blue-stripe btn-sm" rel="tooltip" title="Edit" data-toggle="modal" href="#edit<?php echo $id;?>"><i class="fa fa-edit"></i></a>
                                        &nbsp;
                                        <!--------editon-->
              <div class="modal fade" id="edit<?php echo $id ;?>" tabindex="-1" aria-hidden="true" style="padding-top:35px">
                <div class="modal-dialog modal-md">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                           <div class="portlet-body form">
							<form class="form-horizontal" role="form" id="noticeform" method="post" enctype="multipart/form-data">
							
							
                               <input type="hidden" name='edit_id' class="form-control" value="<?php echo $id;?>" >
							
					<div class="form-body"> 
						<div class="form-group">
							<label class="control-label col-md-3">Section Name</label>
							<div class="col-md-6">
								<div class="input-icon right">
								<i class="fa"></i>
								<input class="form-control" placeholder="Type Term Name" required name="sub_updt" autocomplete="off" type="text" value="<?php echo $section;?>">
								</div>
								
							</div>
						</div>
                        
						<div class=" right1" align="right" style="margin-right:10px">
                        	<button type="button" data-dismiss="modal" class="btn btn-defult">Cancel</button>
							<button type="submit" class="btn green" name="sub_edit">Update</button>
						</div>
						
							</form>
					</div>
					</div>
                        </div>
                   
                    </div>
                <!-- /.modal-content -->
                </div>
        <!-- /.modal-dialog -->
            </div>
                                        
                                         
                                        <!---- update----->
                                       
		<a class="btn blue-madison red-stripe btn-sm"  rel="tooltip" title="Delete"  data-toggle="modal" href="#delete<?php echo $id ;?>"><i class="fa fa-trash"></i></a>
		
            <div class="modal fade" id="delete<?php echo $id ;?>" tabindex="-1" aria-hidden="true" style="padding-top:35px">
                <div class="modal-dialog modal-md">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                            <span class="modal-title" style="font-size:14px; text-align:left">Are you sure, you want to delete this  class?</span>
                        </div>
                        <div class="modal-footer">
                        <form method="post" name="delete<?php echo $id ;?>">
                            <input type="hidden" name="delet_class" value="<?php echo $id; ?>" />
                            <button type="button" data-dismiss="modal" class="btn btn-defult">Cancel</button>
                            <button type="submit" name="sub_del" class="btn red-sunglo ">Yes</button> 
                        </form>
                        </div>
                    </div>
                <!-- /.modal-content -->
                </div>
        <!-- /.modal-dialog -->
            </div>   
				</td>
				</tr>
				</tbody>
				<?php } ?>
			</table>
	</div>
				
			</div>
				  
			</div>
            </div>
             
            </div>
	</div>

</body>
<?php footer();?>
<?php scripts();?>
</html>