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
		<div class="form-group">
			<label class="control-label col-md-3">Exam Days</label>
			<div class="col-md-4">
				<div class="input-icon right">
				<i class="fa"></i>
				<input class="form-control" placeholder="No of Days" required name="no_of_day" autocomplete="off" type="text">
				</div>
			</div>
		</div>
		
		<div class="form-group">
			<label class="control-label col-md-2">Time From</label>
			<div class="col-md-2">
				<div class="input-icon right">
				<i class="fa"></i>
				<input class="form-control timepicker" placeholder="9:00 AM" required name="time_from" autocomplete="off" type="text">
				</div>
			</div>
			<label class="control-label col-md-2">Time To</label>
			<div class="col-md-2">
				<div class="input-icon right">
				<i class="fa"></i>
				<input class="form-control timepicker" placeholder="12:00 PM" required name="time_to" autocomplete="off" type="text">
				</div>
			</div>
		</div>
		<br>
	<table class="table table-striped table-hover" style="text-align:center">
    <tr>
		<td>Time Table Instruction</td>
		<td>Add More</td>
	</tr>
 	<tr>
  	<td align="right">
		<input class="form-control" placeholder="instruction" required name="instruction[]" autocomplete="off" type="text">
	</td>
	<td>
		<input type='button' class='AddNew btn btn-icon-only green' value='+'>
	</td>
	</tr>
</table>	
<div class="form-actions top">
	<div class="row">
		<div class="col-md-offset-3 col-md-9">
			<button type="submit" name="sub_add" class="btn green">Next</button>
			<button type="reset" class="btn default">Cancel</button>
		</div>
	</div>
</div>
<script>
 $('.timepicker').timepicker();
$('.AddNew').click(function(){
   var row = $(this).closest('tr').clone();
   row.find('input').val('');
   $(this).closest('tr').after(row);
   
   $('.date-picker').datepicker();
   $('.timepicker').timepicker();
   $('input[type="button"]', row).removeClass('AddNew').addClass('RemoveRow').val('-');
});

$('table').on('click', '.RemoveRow', function(){ 
  $(this).closest('tr').remove();
});	
</script>
	<?php } ?>
	