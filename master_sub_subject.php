<?php
include("index_layout.php");
include("database.php");
include("authentication.php");

if(isset($_POST['sub'])){
	
 $sub_subject=$_POST['sub_subject'];	
 
mysql_query("insert into `master_sub_subject` SET `name`='$sub_subject'");	

}
 
 ?>
 <?php 
 
 if(isset($_POST['sub_del']))
{
  $delet_class=$_POST['delet_class'];
   $r=mysql_query("Delete from `master_sub_subject` where `id`='$delet_class'" );
    $sql=mysql_query($r);
  }
  
if(isset($_POST['sub_edit']))
{
$edit_id=$_REQUEST['edit_id'];  
 
$updt_sub_subject=mysql_real_escape_string($_REQUEST["updt_sub_subject"]);

$r=mysql_query("update `master_sub_subject` SET `name`='$updt_sub_subject' where `id`='$edit_id'");
$r=mysql_query($sql);
echo '<script text="javascript">alert(Class Added Successfully")</script>';	
 
}
else
{
  
	echo mysql_error();
}  
  
 ?>
<html>
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Master | Sub Subject</title>
</head>
<?php contant_start(); menu();  ?>
<body>
<div class="page-content-wrapper">
		<div class="page-content">
		<div class="col-md-12" align="center"><h3>Master Sub Subject</h3></div>
    <div class="row">
    <div class="col-md-6">
			<div class="portlet blue">
			<div class="portlet-title">
				
			</div>
			<div class="portlet-body form">
			
			<form  class="form-horizontal" id="form_sample_2"  role="form" method="post"> 
					<div class="form-body">
						<div class="form-group">
							<label class="control-label col-md-3">Sub Subject</label>
								<div class="col-md-6">
									<div class="input-icon right">
										<i class="fa"></i>
										<input class="form-control" placeholder="Sub Subject Name" required name="sub_subject" autocomplete="off" type="text">
									</div>
								</div>
						</div>
							<div class="col-md-offset-5 col-md-6" style="padding-top:0px;">
								<button type="submit" name="sub" class="btn btn-primary">Submit</button>
								<button type="reset" class="btn default">Cancel</button>
							</div>
					</div>
				</form>
			</div>
				 
				   
			</div>
            </div>
            <!-------------------------- View------------>
            <div class="col-md-6">
			<div class="portlet blue">
			<div class="portlet-title">
				
			</div>
			<div class="portlet-body form">
			 <div class="table-scrollable" >
								<table class="table   table-hover" width="100%">
								<thead>
									
								<tr style="background:#F5F5F5">
									<th>
										 #
									</th>
									<th>
									
                                    Sub Subject Name
									</th>
									 
                                    <th>
                                        Action
									</th>
								</tr>
								</thead>
							 <?php
			  $r1=mysql_query("select * from `master_sub_subject`");		
					$i=0;
					while($row1=mysql_fetch_array($r1))
					{
					$i++;
					$id=$row1['id'];
					$sub_subject=$row1['name'];
 					?>
                    <tbody>
								<tr>
									<td>
							<?php echo $i;?>
									</td>
									<td class="search">
									<?php echo $sub_subject;?>
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
							<label class="control-label col-md-3">Class Name</label>
							<div class="col-md-6">
								<div class="input-icon right">
								<i class="fa"></i>
								<input class="form-control" placeholder="Sub Subject Name" required name="updt_sub_subject" autocomplete="off" type="text" value="<?php echo $sub_subject;?>">
								</div>
								<span class="help-block">
								Provide your Sub Subject Name</span>
							</div>
						</div>
                         
						 <div class=" right1" align="right" style="margin-right:10px">
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
                            <span class="modal-title" style="font-size:14px; text-align:left">Are you sure, you want to delete this  Sub Subject ?</span>
                        </div>
                        <div class="modal-footer">
                        <form method="post" name="delete<?php echo $id ;?>">
                            <input type="hidden" name="delet_class" value="<?php echo $id; ?>" />
                            
                            <button type="submit" name="sub_del" value="" class="btn btn-sm red-sunglo ">Yes</button> 
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