<?php
include("index_layout.php");
include("database.php");
include("authentication.php");

if(isset($_POST['sub'])){
	
	$category=$_POST['category'];
	$check=mysql_query("select `id` from exam_category where `name`='$category'");
	$count=mysql_num_rows($check);	
	if($count>0){
		?><script>alert('Exam Category already exist');</script><?php
	}
	else
	{
		mysql_query("insert into `exam_category` SET `name`='$category'");
	}
	echo "<meta http-equiv='refresh' content='0;url=master_exam_category.php'>";
}
 
if(isset($_POST['sub_del']))
{
	$delet_class=$_POST['delet_class'];
	mysql_query("delete from `exam_category` where `id`='$delet_class'" );
	echo "<meta http-equiv='refresh' content='0;url=master_exam_category.php'>";
}

if(isset($_POST['sub_edit']))
{
	$edit=$_REQUEST['edit_id'];  
	$cat_updt=mysql_real_escape_string($_REQUEST["cat_updt"]);
	$r=mysql_query("update `exam_category` SET `name`='$cat_updt' where id='$edit'" );
	echo "<meta http-equiv='refresh' content='0;url=master_exam_category.php'>";
 
}


 ?>
<html>
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Master | Category</title>
</head>
<?php contant_start(); menu();  ?>
<body>
<div class="page-content-wrapper">
		<div class="page-content">
    <div class="row">
    <div class="col-md-6">
			<div class="portlet blue">
			<div class="portlet-title">
				
			</div>
			<div class="portlet-body form">
			<!-- BEGIN FORM-->
				<form  class="form-horizontal" id="form_sample_2"  role="form" method="post"> 
					<div class="form-body">
						 
						<div class="form-group">
							<label class="control-label col-md-3">Exam Category</label>
							<div class="col-md-6">
								<div class="input-icon right">
								<i class="fa"></i>
								<input class="form-control" placeholder="Please Enter Category Name" required name="category" autocomplete="off" type="text">
								</div>
								
							</div>
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
			<div class="portlet blue">
			<div class="portlet-title">
				
			</div>
			<div class="portlet-body form">
			 <div class="table-scrollable" >
								<table class="table   table-hover" width="100%" style="font-family:Open Sans;">
								<thead>
									
								<tr style="background:#F5F5F5">
									<th width="10%">S.No.</th>
									<th width="65%">Term Name</th>
									<th> Action</th>
								</tr>
								</thead>
							 <?php
			  $res=mysql_query("select * from `exam_category`");		
					 
					while($fes=mysql_fetch_array($res))
					{
					$i++;
					$id=$fes['id'];
					$category=$fes['name'];
                    
					?>
                    <tbody>
								<tr>
									<td>
							<?php echo $i;?>
									</td>
									<td class="search">
									<?php echo $category;?>
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
                                        <label class="control-label col-md-3">Term Name</label>
                                        <div class="col-md-6">
                                            <div class="input-icon right">
                                            <i class="fa"></i>
                                            <input class="form-control" placeholder="Type Term Name" required name="cat_updt" autocomplete="off" type="text" value="<?php echo $category; ?>" >
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
                            <span class="modal-title" style="font-size:14px; text-align:left">Are you sure, you want to delete this Category ?</span>
                        </div>
                        <div class="modal-footer">
                        <form method="post" name="delete<?php echo $id ;?>">
                            <input type="hidden" name="delet_class" value="<?php echo $id; ?>" />
                            <button type="button" data-dismiss="modal" class="btn btn-defult">Cancel</button>
                            <button type="submit" name="sub_del"class="btn red-sunglo ">Yes</button> 
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