<?php 
include("index_layout.php");
include("database.php");
include("authentication.php");
?>
<html >
<head>
<?php css();?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Master | Marks</title>
<style>
.table>thead>tr>th{
	font-size:12px !important;
}

 @media print
   {
     .printdata{
		 display:none;
	 }
   }

</style>
</head>
<?php contant_start(); menu();  ?>
<body>
<div class="page-content-wrapper">
		<div class="page-content">
			<div class="portlet box blue">
			<div class="portlet-title printdata">
				<div class="caption">
					<i class="icon-puzzle"></i> Seating Arrangement
				</div>
			</div>
			<div class="portlet-body form">
			<?php 
if(isset($_POST['admiton_card']))
{

   $coulmn=$_POST['coulmn'];
    $capacity=$_POST['capacity'];
    $romm=$_POST['romm'];
    $exam_name=$_POST['exam_name'];
    $category_id=$_POST['category_ids'];
	$query2=mysql_query("select * from `exam_category` Where `id` = '$category_id'"); 
	$fetch2=mysql_fetch_array($query2);
	$exam_names=$fetch2['name'];
	$coulmn_dubb=$coulmn*2 ;
	$coulmn_dubb_inc=$coulmn_dubb+1;
 	$rowscc=$capacity/$coulmn_dubb ;
 	$rows= $rowscc+1;
 	$coulmnsss= $coulmn+1;
	 
$j=0;
	$m=0;
	$ab=0;
  
   for( $k=1;$k<$coulmn_dubb_inc; $k++ )
      {
 	  	for( $j=1;$j<$rows; $j++ )
		{	
			$xx="roll_".$j.$k ; 
			$rosll=$_POST[$xx];
			$sel_stdnt_reg=mysql_query("select * from `student`  where  `roll_no`='$rosll' ");
			$cnt_stdnt_reg=mysql_num_rows($sel_stdnt_reg);
			
			if($cnt_stdnt_reg==1)
			{
				$ftc_stdnt_reg=mysql_fetch_array($sel_stdnt_reg);
							
				$i++;
				
				$fname=$ftc_stdnt_reg['name'];
				 
				$cls=$ftc_stdnt_reg['class_id'];
				$sec=$ftc_stdnt_reg['section_id'];
				$roll_no=$ftc_stdnt_reg['roll_no'];
		
				$sle_section=mysql_query("select * from `master_section` where `id`='$sec'");
				$ftc_section=mysql_fetch_array($sle_section);
				$sec_nm=$ftc_section['section'];

				$sel_class=mysql_query("select * from `master_class` where `id`='$cls' ");
				$ftc_class=mysql_fetch_array($sel_class);
				$class_nm=$ftc_class['class'];	

				$cls_nm=mysql_query( "select* from `sec_cls` where `cls`='$cls' && `sec`='$sec'");
				$arr=mysql_fetch_array($cls_nm);

				$cls_sec_id=$arr['sno'];

				$sle_feculty_info=mysql_query( "select* from `feculty_info` where `cls_sec_id`='$cls_sec_id' ");

				$ftce_feculty_info=mysql_fetch_array($sle_feculty_info);

				$cls_techr_nm=$ftce_feculty_info['cls_techr_nm'];
				$exm_inchrg_nm=$ftce_feculty_info['exm_inchrg_nm'];
				$schl=mysql_query("select * from `school`");
				$ftc_schl=mysql_fetch_array($schl);
				
				$ff=$i%2;
		if ($i==1  ||$i==9 || $i==17 || $i==25 || $i==33 || $i==41 || $i==49|| $i==57 || $i==65 || $i==73 || $i==81
				|| $i==89 || $i==97 || $i==105 || $i==113 || $i==121 || $i==129 || $i==137 || $i==145 || $i==153 || $i==161   )
	   
	   {
		   ?>
  
  <table class="breackkl"    width="800px"  border="1" >
  <?PHP
		   	
	   }
					
	if($ff!=0)
  {	  ?>
      <TR >
      <?php  
  }				
 ?>
  <TD width="50%" style=" padding-top:15px; padding-bottom:15px;border:1px solid;padding-left:5px;padding-right:5px">
  <table  width="100%" >
  <tr>
  <td rowspan="2">
  <img style="width:50px" src="img/<?php echo $ftc_schl['logo'];?>"/>
  </td>
  <td align="center" >
		<h3><?php echo $ftc_schl['school'];?></h3>
  </td>
  </tr>
  <tr>
  <td align="center">
	<strong><?php echo $ftc_schl['address'];  ?></strong>
  </td>
  </tr>
  <tr>
  <td align="center" colspan="2">
  SESSION : 2017-2018
  </td>
  </tr>
  
  
  </table>
  <table  width="100%" style="font-size:11px">
  <tr> 
  <td width="20%">
 <b > Roll No. :</b>
  </td>
  <td  width="25%" style="">
 <b style="font-size:15px"><?php echo $roll_no ; ?></b>
  </td>
  
  <td  width="20%">
<b> Name :</b>
  </td>
  <td  width="35%" align="left" style="padding-left:5px">
   <?php echo $fname ; ?>  <?php echo $lname ; ?> 
  </td>
  </tr>
  <tr>
  <td>
 <b> Class : </b>
  </td>
  <td>
<?php echo $class_nm ; ?>
  </td>
  
  <td>
<b> Section :</b>
  </td>
  <td>
 <?php echo $sec_nm ; ?>
  </td>
  </tr>
  
  
  
  
  
  
  
  <tr>
  <td>
<b> Room No.:</b>
  </td>
  <td >
 <b style="font-size:15px"><?php echo $romm ; ?> </b>  </td>
  
  <td>
 <b>Exam:</b>
  </td>
  <td>
 <?php echo $exam_names ; ?>
  </td>
  </tr>
  
   <tr>
  <td>
<b> Remark : </b>
  </td>
  <td>
 ________
  </td>
  
  <td >
 <b>Paid/Dues :</b>  </td>
  <td>
 ________
  </td>
  </tr>
  
  
  
   <tr>
  <td>
<b> Class Teacher :</b>
  </td>
  <td>
  <?php echo $cls_techr_nm ; ?>
  </td>
  
  <td>
<b>Conteoller Exams.:  </b></td>
  <td>
 <?php echo $exm_inchrg_nm ; ?>
  </td>
  </tr>
  
  </table>
  
  </TD>
   
  
  <?php
 
  if($ff==0)
  {	  ?>
      </TR>
      
     
      <?php 
	
  }
  
  
   if ($i==8 || $i==16 || $i==24 || $i==32 || $i==40 || $i==48|| $i==56 || $i==64 || $i==72 || $i==80
	  || $i==88 || $i==96 || $i==104|| $i==112 || $i==120 || $i==128 || $i==136 || $i==144 || $i==152 || $i==160   )
	   
	   {
		   ?>
  </table >
  <?PHP
		   	
	   }
			
  
				}
		}
	  }
  ?>
  
 
 
  <?php
}
?>
			
			</div>
				<!-- END FORM-->
				 
		</div>		   
			</div>
	</div>

</body>
</html>