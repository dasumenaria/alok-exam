<?php
$total=$_GET['total'];
$total=$total+1;
if($total==2){ ?>
<div class="main" style="padding-top:50px">
<?php }else{ ?>
<div class="main" style="padding-top:15px">
<?php } ?>
	<div class="form-group">
		<label class="control-label col-md-3"><?php echo $total; ?>.</label>
		<div class="col-md-6">
			<div class="input-icon right">
				<i class="fa"></i>
				<input class="form-control" placeholder="instruction" required name="instruction[]" autocomplete="off" type="text">
			</div>
		</div>
		<div class="col-md-3">
			<button type="button" class="btn  btn-sm red remove"><i class="fa fa-trash"></i></button>
		</div>
	</div>
</div><div id="cs<?php echo $total?>" ></div>	
	