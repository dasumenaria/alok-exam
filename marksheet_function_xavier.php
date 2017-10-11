<?php 
include("database.php");
function header_infos($id,$exam_name)
{
	
$result=mysql_query("select * from `student` where `id`='$id'");
$row=mysql_fetch_array($result);
$sch=$row['scholar_no'];
$nm=$row['name'];
$faculty=$row['faculty'];
$f_nm=$row['father_name'];
$m_nm=$row['mother_name'];
$class_id=$row['class_id'];
$section=$row['section_id'];
$dob1=$row['dob'];
$md_id=$row['md'];
$padd=$row['address'];
$rn=$row['roll_no'];

$sle_section=mysql_query("select * from `master_section` where `id`='$section'");
$ftc_section=mysql_fetch_array($sle_section);
$secations=$ftc_section['section'];

$sel_cls=mysql_query("select * from `master_class` where `id`='$class_id' ");
$ftc_class_id=mysql_fetch_array($sel_cls);
$cls=$ftc_class_id['roman'];
  
$dob=date("d-M-Y",strtotime($dob1));



$set=mysql_query("select `name` from `master_term` where `id`='$exam_name'");
$fet=mysql_fetch_array($set);

$term=$fet['name'];
 
$session_fetch=$_SESSION['session'];
$ses_name=explode("_" , $session_fetch);
foreach($ses_name as $ses){
	$ses;
}

?>
 <div style="width:100%;text-align:center; margin-top:10px"> 
    <img   width="90"  height="90" src="mds.gif"/>
</div>
<div  style="font-size:30px; width:100%; text-align:center;">
<?php 
$schl=mysql_query("select * from `school`");
$ftc_schl=mysql_fetch_array($schl);
?>
<strong style="font-family:revue-bt"><?php echo $ftc_schl['school'];?></strong><br/>
<strong><span style="font-size:20px"><?php echo $ftc_schl['address'];?>
<br/> Record of Academic Performance<br/> Session: ( <?php echo $ses; ?> ) </span></strong>
</div>
<div style="width:100%">
<table style="width:100%;margin-top:20px; margin-left:1px" cellpadding="1"  cellspacing="10">
  <tr align="left">
    <th style="width:20%">Name of Student </th>
    <td style="width:45%"><?php $nm=strtolower($nm); echo  ucwords($nm);?> </td>
    <th style="width:20%">Scholar No.</th>
    <td style="width:30%"><?php  echo $sch;?></td>
  </tr>
  <tr align="left">
    <th style="width:20%">Father's Name</th>
    <td style="width:45%"><?php $f_nm=strtolower($f_nm); echo ucwords($f_nm);?></td>
    <th style="width:20%">Roll No.</th>
  <td><?php echo  $rn;?></td>
  </tr>
  <tr align="left">
   <!-- <th style="width:20%">Mother's Name</th>
    <td style="width:45%"><?php echo $m_nm;?></td>
    <th style="width:20%">Class</th>
    <td><?php echo $cls;?></td>-->
  </tr>
  <tr align="left">
    

    <th style="width:20%">Medium </th>
    <td style="width:45%">English</td>

    <th style="width:20%">Class</th>
    <td><?php echo ucwords($cls);?> - <?php echo ucwords($secations);?></td>
      </tr>
  <tr align="left">
    <th>Address</th>
      <td style="width:45%"> Udaipur</td>

    <th>Date of Birth</th>
    <td><?php if($dob1!='0000-00-00') { echo $dob; }?></td>
  </tr>
</table>
</div>
<div style="float:right; margin-right:5px">

</div>
<?php
}
 
function header_info_CBSC($id,$exam_name)
{
		
	$result=mysql_query("select * from `student` where `id`='$id'");
	$row=mysql_fetch_array($result);
		$sch=$row['scholar_no'];
		$nm=$row['name'];
		$faculty=$row['faculty'];
		$f_nm=$row['father_name'];
		$m_nm=$row['mother_name'];
		$class_id=$row['class_id'];
		$section=$row['section_id'];
		$dob1=$row['dob'];
		$padd=$row['address'];
		$rn=$row['roll_no'];
			$sle_section=mysql_query("select * from `master_section` where `id`='$section'");
			$ftc_section=mysql_fetch_array($sle_section);
			$sec=$ftc_section['section'];
			$sel_cls=mysql_query("select * from `master_class` where `id`='$class_id'  ");
			$ftc_class_id=mysql_fetch_array($sel_cls);
			$cls=$ftc_class_id['roman'];
		$dob=date("d-M-Y",strtotime($dob1));
			$set=mysql_query("select `name` from `master_term` where `id`='$exam_name'");
			$fet=mysql_fetch_array($set);
			$term=$fet['name'];
		$session_fetch=@$_SESSION['session'];
		$ses_name=explode("_" , $session_fetch);
		foreach($ses_name as $ses){
			$ses;
		}
	?>
    <table width="100%" border="0">
        <tr>
        	<td>
            	<div style="width:10%;text-align:left; margin-top:10px; margin-left:10px"> 
                    <img width="90"  height="90" src="img/cbselogo.png"/>
                </div>
            </td>
            <td>
            	<div  style="font-size:25px; text-align:center;">
					<?php 
                    $schl=mysql_query("select * from `school`");
                    $ftc_schl=mysql_fetch_array($schl);
                    ?>
                	<strong style="font-family:revue-bt"><?php echo $ftc_schl['school'];?><br />
					<?php echo $ftc_schl['address'];?></strong><br/>
                 </div>
            </td>
            <td>
            	<div style="width:10%;text-align:left; margin-top:10px; margin-right:10px"> 
                    <img width="90"  height="90" src="img/aloklogo.png"/>
                </div>
            </td>
        </tr>
        <tr>
        	<td colspan="3" align="center">
            	<div  style="font-size:25px; text-align:center;">
                	<strong>Academic Session: ( <?php echo $ses; ?> )</strong>
                </div>
            </td>
        </tr>
	</table>
	<div style="width:100%">
	<table style="width:100%;margin-top:20px; margin-left:1px" cellpadding="1"  cellspacing="10">
	  <tr align="left">
		<th style="width:20%">Name of Student </th>
		<td style="width:45%"><?php $nm=strtolower($nm); echo ucwords($nm);?> </td>
		<th style="width:20%">Scholar No.</th>
		<td style="width:30%"><?php  echo $sch;?></td>
	  </tr>
	  <tr align="left">
		<th style="width:20%">Father's Name</th>
		<td style="width:45%"><?php $f_nm=strtolower($f_nm); echo ucwords($f_nm);?></td>
		<th style="width:20%">Roll No.</th>
	  <td><?php echo  $rn;?></td>
	  </tr>
	  
	  <tr align="left">
		<th style="width:20%">Class</th>
		<td><?php echo ucwords($cls);?></td>
        <th style="width:20%">Section</th>
		<td><?php echo ucwords($sec);?></td>
	  </tr>
	  <tr align="left">
 		<th>Date of Birth</th>
		<td><?php if($dob1!='0000-00-00') { echo $dob; }?></td>
	  </tr>
	</table>
	</div>
	<div style="float:right; margin-right:5px">
	
	</div>
	<?php
}

function header_info_CBA($id,$exam_name)
{
		
	$result=mysql_query("select * from `student` where `id`='$id'");
	$row=mysql_fetch_array($result);
		$sch=$row['scholar_no'];
		$nm=$row['name'];
		$faculty=$row['faculty'];
		$f_nm=$row['father_name'];
		$m_nm=$row['mother_name'];
		$class_id=$row['class_id'];
		$section=$row['section_id'];
		$photo_path=$row['photo_path'];
		$dob1=$row['dob'];
		$padd=$row['address'];
		$rn=$row['roll_no'];
			$sle_section=mysql_query("select * from `master_section` where `id`='$section'");
			$ftc_section=mysql_fetch_array($sle_section);
			$sec=$ftc_section['section'];
			$sel_cls=mysql_query("select * from `master_class` where `id`='$class_id'  ");
			$ftc_class_id=mysql_fetch_array($sel_cls);
			$cls=$ftc_class_id['roman'];
		$dob=date("d-M-Y",strtotime($dob1));
			$set=mysql_query("select `name` from `master_term` where `id`='$exam_name'");
			$fet=mysql_fetch_array($set);
			$term=$fet['name'];
		$session_fetch=@$_SESSION['session'];
		$ses_name=explode("_" , $session_fetch);
		foreach($ses_name as $ses){
			$ses;
		}
	?>
	<div style="margin-top:10px;">
			<?php 
			$schl=mysql_query("select * from `school`");
			$ftc_schl=mysql_fetch_array($schl);
			?>
		<div style="width:30%;text-align:left;float:left !important;"> 
		 <br>
			<img width="120" height="150" style="margin-left:70px" src="img/<?php echo $ftc_schl['logo'];?>"/>
		</div>
		<div  style="font-size:30px; width:50%; text-align:center;float:left !important;margin-top:10px;">
			
			<strong style="font-family:revue-bt;font-size:40px;">
				<?php echo $ftc_schl['school'];?>
			</strong>
			<strong>
			<span style="font-size:18px">
			<br>Co-educational, English Medium School
			<br>A Unit of St. Xavier Educational Society
			<br><i>"Our success lies in your child's progress"</i>
			<br/> Progress Report: (2017-2018) 
			</span>
			</strong>
		</div>
	</div>

	<div style="width:100%">
	<table height="180" style="width:100%;margin-top:20px; margin-left:1px; font-size:14px;font weight:bold" cellpadding="1" border="0" cellspacing="10">
        <tr>
            <td style="width:5%" align="center" rowspan="6">
			</td>
        </tr>
      <tr align="left">
      	<th style="width:15%">Scholar No.</th>
		<td style="width:40%">: &nbsp;<strong><?php  echo $sch;?></strong></td>
        <th>Roll No.</th>
	    <th> : &nbsp; <strong><?php echo  $rn;?></strong></th>
      </tr>
	  <tr align="left">
		<th>Student's Name</th>
		<th> : &nbsp; <strong><?php $nm=strtolower($nm); echo ucwords($nm);?></strong> </th>
        <th>Class</th>
		<th> : &nbsp; <?php echo ucwords($cls); ?></th>
	  </tr>
	  <tr align="left">
		<th>Father's Name</th>
		<th>: &nbsp; <strong><?php $f_nm=strtolower($f_nm); echo ucwords($f_nm);?></strong></th>
        <th>Section</th>
		<th> : &nbsp; <?php echo ucwords($sec);?></th>
	  </tr>
	  <tr align="left">
		<th>Mother's Name</th>
		<th> : &nbsp; <strong><?php $m_nm=strtolower($m_nm); echo ucwords($m_nm);?></strong></th>
        <th>Date of Birth</th>
		<th> : &nbsp; <?php if($dob1!='0000-00-00') { echo $dob; }?></th>
	  </tr>
	  <tr align="center">
 		<th align="center" colspan="10" style="font-size:18px"><strong>Report A - Scholastic Achievement</strong></th>
	  </tr>
	</table>
	</div>
	<div style="float:right; margin-right:5px">
 	</div>
	<?php
}

function calculate_grade_point($mhfa1)
{
	if($mhfa1>=0 && $mhfa1<=20.99)
    {echo "2.0";}
	else if($mhfa1>=21 && $mhfa1<=32.99)
	{echo "3.0";}
	else if($mhfa1>=33 && $mhfa1<=40.99)
	{echo "4.0";}
	else if($mhfa1>=41 && $mhfa1<=50.99)
	{echo "5.0";}
	else if($mhfa1>=51 && $mhfa1<=60.99)
	{echo "6.0";}
	else if($mhfa1>=61 && $mhfa1<=70.99)
	{echo "7.0";}
   else if($mhfa1>=71 && $mhfa1<=80.99)
   {echo "8.0";}
   else if($mhfa1>=81 && $mhfa1<=90.99)
   {echo "9.0";}
   else if($mhfa1>=91 && $mhfa1<=100)
   {echo "10.0";} 
}


function calculate_grade($mhfa1)
{
	if($mhfa1>=0 && $mhfa1<=20.99)
    {echo "E2";}
	else if($mhfa1>=21 && $mhfa1<=32.99)
	{echo "E1";}
	else if($mhfa1>=33 && $mhfa1<=40.99)
	{echo "D";}
	else if($mhfa1>=41 && $mhfa1<=50.99)
	{echo "C2";}
	else if($mhfa1>=51 && $mhfa1<=60.99)
	{echo "C1";}
	else if($mhfa1>=61 && $mhfa1<=70.99)
	{echo "B2";}
   else if($mhfa1>=71 && $mhfa1<=80.99)
   {echo "B1";}
   else if($mhfa1>=81 && $mhfa1<=90.99)
   {echo "A2";}
   else if($mhfa1>=91 && $mhfa1<=100)
   {echo "A1";} 
}

function calculate_status($mhfa1)
{
	if($mhfa1>=0 && $mhfa1<=20.99)
	{ $rslt="E2";}
	if($mhfa1>=21 && $mhfa1<=39.99)
	{ $rslt="E1";}
	if($mhfa1>0 && $mhfa1<=35.99)
    { $grd="E2"; }
	else if($mhfa1>=36 && $mhfa1<=39.99)
	{ $grd="E1";}
	else if($mhfa1>=40 && $mhfa1<=44.99)
	{ $grd="D";
      $rslt="D";
	}
	else if($mhfa1>=45 && $mhfa1<=50.99)
	{ $grd="C2";
	  $rslt="C2";
	}
	else if($mhfa1>=51 && $mhfa1<=60.99)
	{   $grd="C1";
		$rslt="C1";
	}
	else if($mhfa1>=61 && $mhfa1<=70.99)
	{ $grd="B2";
	  $rslt="B2";
	}
   else if($mhfa1>=71 && $mhfa1<=80.99)
   { $grd="B1";
	 $rslt="B1";
   }
   else if($mhfa1>=81 && $mhfa1<=90.99)
   { $grd="A2";
	 $rslt="A2";
   }
   else if($mhfa1>=91 && $mhfa1<=100)
   { $grd="A1";
	 $rslt="A1";
   } 
 return $grd;
 return $rslt;
}

?>