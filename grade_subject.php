<?php
include("index_layout.php");
include("database.php");
include("authentication.php");

if(isset($_POST['sub'])){
	
 $grade_id=$_POST['grade_id'];	
 
mysql_query("update `subject` SET `grade`='G' where `id`='$grade_id'");	

}
 
 ?>
 <?php 
 
 if(isset($_POST['sub_del']))
{
  $grd_id=$_POST['grd_id'];
   $r=mysql_query("update `subject` SET `grade`='' where `id`='$grd_id'" );
    $sql=mysql_query($r);
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
<title>Master | Grade Subject</title>
</head>
<?php contant_start(); menu();  ?>
<body>
<div class="page-content-wrapper">
		<div class="page-content">
		<div class="col-md-12" align="center"><h3>Master Grade Subject</h3></div>
    <div class="row">
    <div class="col-md-6">
			<div class="portlet blue">
			<div class="portlet-title">
				
			</div>
			<div class="portlet-body form">
			
			<form  class="form-horizontal" id="form_sample_2"  role="form" method="post"> 
					<div class="form-body">
						<div class="form-group">
							<label class="control-label col-md-3">Grade Subject</label>
								<div class="col-md-6">
									<select class="form-control select2me select select2" required name="grade_id">
									<option value="">---Select--Subject---</option>
								   
								   <?php 
								   $query=mysql_query("select * from `subject` where `grade`!='G'");
								   while($fet=mysql_fetch_array($query))
								   {$f++;
										$sub_id=$fet['id'];
										$sub_name=$fet['subject'];
								   ?>
									<option value="<?php echo $sub_id; ?>"><?php echo $sub_name; ?></option>
								   <?php } ?>
									</select>
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
									
                                    Grade Subject
									</th>
									 
                                    <th>
                                        Remove
									</th>
								</tr>
								</thead>
							 <?php
			  $r1=mysql_query("select * from `subject` where `grade`='G'");		
					$i=0;
					while($row1=mysql_fetch_array($r1))
					{
					$i++;
					$id=$row1['id'];
					$sub_subject=$row1['subject'];
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
			<!---- update----->
                                       
		<a class="btn blue-madison red-stripe btn-sm"  rel="tooltip" title="Delete"  data-toggle="modal" href="#delete<?php echo $id ;?>"><i class="fa fa-trash"></i></a>
            <div class="modal fade" id="delete<?php echo $id ;?>" tabindex="-1" aria-hidden="true" style="padding-top:35px">
                <div class="modal-dialog modal-md">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                            <span class="modal-title" style="font-size:14px; text-align:left">Are you sure, you want to remove this from  Grade Panel?</span>
                        </div>
                        <div class="modal-footer">
                        <form method="post" name="delete<?php echo $id ;?>">
                            <input type="hidden" name="grd_id" value="<?php echo $id; ?>" />
                            
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