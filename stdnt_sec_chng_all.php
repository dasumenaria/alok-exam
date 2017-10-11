<?php
include("database.php");
$cls=$_GET['con'];
?>
<input value="<?php echo $cls; ?>" id="cls" name="class"  type="hidden" >
<?php 
if(!empty($cls))
{
?>
	<table width="80%" style="text-align:center; margin-top:15px">
	 <tr>
	 <td width="40%">Enter section</td>
	 <td width="60%">
	<select class="form-control input-medium section" name="sec" id="autocomplete_section"  onChange="std_edit_sec()">
	<option value=""> -Select-</option>
	<?php 
	$results=mysql_query("select * from `mapping_section` where `class_id`='$cls'");
	while($arr=mysql_fetch_array($results))
	 {
		$sec=$arr['section_id'];

		$sle_section=mysql_query("select * from `master_section` where `id`='$sec'");
		$ftc_section=mysql_fetch_array($sle_section);
		$sec_nm=$ftc_section['section'];
		?>
		<option  value="<?php echo $sec; ?>"><?php echo $sec_nm; ?></option>
	<?php
	 }
	 ?>
	</select>
	</td></tr>
	</table>
 <?php
}
?>
<script type="text/javascript">
class_details();
 function class_details(){ 
		 var c1=$('#cls').val(); 
 		var query="?con=" + encodeURIComponent(c1) ;
 		$('#list_stddl_sec').load('std_dtl_section.php'+query); 
	 
}
</script>
