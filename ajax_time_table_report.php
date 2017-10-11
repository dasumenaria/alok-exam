<?php
include("database.php");
$term_id=$_GET['pon3'];
$category_id=$_GET['pon5'];

	if((!empty($term_id)) && (empty($category_id))){ ?>
		<div class="form-group">
			<label class="control-label col-md-3">Category</label> 
			<div class="col-md-4">
			   <div class="input-icon right">
					<i class="fa"></i>
					<select class="form-control ust" required name="category_id">
						<option value="">---Select Master---</option>
							<?php 
								$query2=mysql_query("select * from `exam_category` ORder By `id`"); 
								while($fetch2=mysql_fetch_array($query2))
								{
									$i++;
									$mstr_id=$fetch2['id'];
									$mstr_name=$fetch2['name'];
								?>
								<option value="<?php echo $mstr_id; ?>"><?php echo $mstr_name; ?></option>
							<?php } ?>
					</select>
				</div>
				<span class="help-block">
				Please select category type</span>
			</div>
		</div>
		<div id="dys"></div>
		
<?php } if((!empty($term_id)) && (!empty($category_id))){ ?>
 	
<div class="form-actions top">
	<div class="row">
		<div class="col-md-offset-3 col-md-9">
			<button type="submit" name="sub_add" class="btn green">Report</button>
			<button type="reset" class="btn default">Cancel</button>
		</div>
	</div>
</div>
<?php } ?>
	