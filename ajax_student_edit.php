<?php 
include("database.php");
$scholar_no=$_GET['sch'];
$class_id=$_GET['cls'];
$section_id=$_GET['sec'];
$qury='';
if(!empty($class_id) && empty($scholar_no) && empty($section_id))
{
$qury="`class_id` = '$class_id'";
}
if(empty($class_id) && empty($scholar_no) && !empty($section_id))
 {
$qury="`section_id` = '$section_id'";
}
if(!empty($class_id) && !empty($scholar_no) && empty($section_id))
 {
$qury="`scholar_no` = '$scholar_no'";
}
if(!empty($class_id) && empty($scholar_no) && !empty($section_id))
{
$qury="`class_id` = '$class_id' && `section_id` = '$section_id'";
}
if(!empty($class_id) && !empty($scholar_no) && empty($section_id))
 {
$qury="`class_id` = '$class_id' && `scholar_no` = '$scholar_no'";
}
if(empty($class_id) && !empty($scholar_no) && !empty($section_id))
{
$qury="`section_id` = '$section_id' && `scholar_no` = '$scholar_no'";
}
if(!empty($class_id) && !empty($scholar_no) && !empty($section_id))
{
$qury="`class_id` = '$class_id' && `section_id` = '$section_id' && `scholar_no` = '$scholar_no'";
}
 
?>
<div class="portlet-body">
    <div class="table-responsive">
        <table class="table table-bordered">
        <thead>
        <tr>         
            <th>
                 Name
            </th>
            <th>
                 D-O-B
            </th>
            <th>
                 Scholar No
            </th>
            <th>
                 Roll No
            </th>
            <th>
                 Class
            </th>
            <th>
                 Section
            </th>
            <th>
                 Edit Detail
            </th>	
            <th>
                 Delete
            </th>
        </tr>
        </thead>
        <tbody>
									
	<?php 
   
    $query=mysql_query("select * from `student` where ".$qury." ORDER BY `scholar_no`");
    while($fetch=mysql_fetch_array($query))
    {$f++;
        $id=$fetch['id'];
        $name=$fetch['name'];
        $scholar_no=$fetch['scholar_no'];
        $roll_no=$fetch['roll_no'];
        $class_id=$fetch['class_id'];
        $section_id=$fetch['section_id'];
        $dob=$fetch['dob'];
        if($dob=='0000-00-00' || $dob=='1990-01-01')
		{$real_dob='';}
		else
		{
        $real_dob=date('d-M-Y', strtotime($dob));
		}
        $father_name=$fetch['father_name'];
        $mother_name=$fetch['mother_name'];
        $address=$fetch['address'];
        
        $set=mysql_query("select `roman` from `master_class` where `id`='$class_id'");
        $fet=mysql_fetch_array($set);
        
        $class_name=$fet['roman'];

        $set1=mysql_query("select `section` from `master_section` where `id`='$section_id'");
        $fet1=mysql_fetch_array($set1);
        
        $section_name=$fet1['section'];

        ?>
    <tr>

        <td><?php echo $name; ?></td>
        <td><?php echo $real_dob; ?></td>
        <td><?php echo $scholar_no; ?></td>
        <td><?php echo $roll_no; ?></td>
        <td><?php echo $class_name; ?></td>
        <td><?php echo $section_name; ?></td>

        <td><a class="btn btn-xs yellow" data-toggle="modal" href="#<?php echo $id; ?>">
        Update
        </a>
        
<div class="modal fade bs-modal-lg"  id="<?php echo $id; ?>" tabindex="-1" role="dialog" aria-hidden="true">
<div class="modal-dialog modal-lg" style="width:80%;">
<form method="post">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            <h4 class="modal-title">Update User Informaion</h4>
        </div>
        
        
        <div class="modal-body">
<?php /////////////////////////?>
	<div class="row">	
    <div class="form-group">
        <label class="col-md-1 control-label">Name</label>
        <div class="col-md-5">
            <input class="form-control" name="new_name"  type="text" value="<?php echo $name; ?>">
        </div>

    <label class="col-md-1 control-label">D-O-B</label>
        <div class="col-md-5">

<input class="form-control form-control-inline input-large date-picker" data-date-format="dd-mm-yyyy" size="16" value="<?php echo $real_dob; ?>" type="text" name="dob" >
         
        </div>
     
    </div>
    </div><br />

    <div class="row">	
     <div class="form-group">
        <label class="col-md-1 control-label">Father's</label>
        <div class="col-md-5">
            <input class="form-control" name="father"  type="text" value="<?php echo $father_name; ?>">
        </div>

        
        <label class="col-md-1 control-label">Mother's</label>
        <div class="col-md-5">
            <input class="form-control" name="mother"  type="text" value="<?php echo $mother_name; ?>">
        </div>
     
    </div>
    </div><br />

    <div class="row">	
     <div class="form-group">
        <label class="col-md-1 control-label">Scholar</label>
        <div class="col-md-5">
            <input class="form-control" name="scholar"  type="text" value="<?php echo $scholar_no; ?>">
        </div>

        
        <label class="col-md-1 control-label">Roll</label>
        <div class="col-md-5">
            <input class="form-control" name="roll"  type="text" value="<?php echo $roll_no; ?>">
        </div>
     
    </div>
    </div><br />

    <div class="row">	
    
<div class="form-group">
        
<label class="col-md-1 control-label">Class</label>
        <div class="col-md-5">
            <select class="form-control" name="class">
            <?php 
            $s1=mysql_query("select * from `master_class` Order By id");
            while($f1=mysql_fetch_array($s1))
            {$t1++;
               $cls_id=$f1['id'];
               $cls_rmn=$f1['roman'];
            ?>
                <option value="<?php echo $cls_id; ?>"  <?php if($class_id==$cls_id){?> selected <?php } else{}?>><?php echo $cls_rmn; ?></option>
            <?php } ?>
            </select>
            
        </div>
        
        <label class="col-md-1 control-label">Section</label>
        <div class="col-md-5">
            <select class="form-control" name="section">
            <?php 
            $s1=mysql_query("select * from `master_section` Order By id");
            while($f1=mysql_fetch_array($s1))
            {$t1++;
               $sec_id=$f1['id'];
               $sec_rmn=$f1['section'];
            ?>
                <option value="<?php echo $sec_id; ?>"  <?php if($section_id==$sec_id){?> selected <?php } else{}?>><?php echo $sec_rmn; ?></option>
            <?php } ?>
            </select>
        </div>
    </div>
    </div><br />

    <div class="row">	
        <div class="form-group">
        <label class="col-md-1 control-label">Address</label>
        <div class="col-md-11">
        <textarea class="form-control" required="" name="address" rows="2" aria-required="true"><?php echo $address; ?></textarea>
        </div>


        </div>
        </div>       
            
            
            
            
        </div>
        <div class="modal-footer">
            <input type="hidden" name="updt" value="<?php echo $id; ?>">
            <button type="button" class="btn default" data-dismiss="modal">Close</button>
            <button type="submit" name="sub_up" class="btn blue">Save changes</button>
        </div>
        
    </div>
    </form>
    <!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->
</div>
        
        </td>
        
        <td>
        
    <a class="btn btn-xs red" data-toggle="modal" href="#dl<?php echo $id; ?>">
    Delete 
    </a>
        
        
         <div class="modal fade" id="dl<?php echo $id; ?>" tabindex="-1" role="basic" aria-hidden="true">
<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            <h4 class="modal-title">Delete <font color="blue"><?php echo $name; ?></font> From Student</h4>
        </div>
        <div class="modal-body">
             You Want To Confirm <font color="red">Delete</font>
        </div>
        <form method="post">
        <div class="modal-footer">
            <button type="button" class="btn default" data-dismiss="modal">Close</button>
            <input type="hidden" name="del_id" value="<?php echo $id; ?>">
            <button type="submit" name="sub_dl" class="btn blue">Delete</button>
        </div>
        </form>
    </div>

</div>

</div>

        
        </td>

    </tr>
    <?php } ?>
</tbody>
</table>
</div>
</div>